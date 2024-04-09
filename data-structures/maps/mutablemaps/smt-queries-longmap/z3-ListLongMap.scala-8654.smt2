; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105302 () Bool)

(assert start!105302)

(declare-fun b_free!26961 () Bool)

(declare-fun b_next!26961 () Bool)

(assert (=> start!105302 (= b_free!26961 (not b_next!26961))))

(declare-fun tp!94392 () Bool)

(declare-fun b_and!44797 () Bool)

(assert (=> start!105302 (= tp!94392 b_and!44797)))

(declare-fun b!1254243 () Bool)

(declare-fun e!712706 () Bool)

(declare-fun tp_is_empty!31863 () Bool)

(assert (=> b!1254243 (= e!712706 tp_is_empty!31863)))

(declare-fun b!1254244 () Bool)

(declare-fun e!712709 () Bool)

(assert (=> b!1254244 (= e!712709 tp_is_empty!31863)))

(declare-fun b!1254245 () Bool)

(declare-fun e!712711 () Bool)

(declare-fun e!712708 () Bool)

(assert (=> b!1254245 (= e!712711 (not e!712708))))

(declare-fun res!836379 () Bool)

(assert (=> b!1254245 (=> res!836379 e!712708)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254245 (= res!836379 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47849 0))(
  ( (V!47850 (val!15994 Int)) )
))
(declare-datatypes ((tuple2!20790 0))(
  ( (tuple2!20791 (_1!10405 (_ BitVec 64)) (_2!10405 V!47849)) )
))
(declare-datatypes ((List!28034 0))(
  ( (Nil!28031) (Cons!28030 (h!29239 tuple2!20790) (t!41524 List!28034)) )
))
(declare-datatypes ((ListLongMap!18675 0))(
  ( (ListLongMap!18676 (toList!9353 List!28034)) )
))
(declare-fun lt!566767 () ListLongMap!18675)

(declare-fun lt!566766 () ListLongMap!18675)

(assert (=> b!1254245 (= lt!566767 lt!566766)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47849)

(declare-datatypes ((Unit!41678 0))(
  ( (Unit!41679) )
))
(declare-fun lt!566764 () Unit!41678)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47849)

(declare-datatypes ((array!81361 0))(
  ( (array!81362 (arr!39237 (Array (_ BitVec 32) (_ BitVec 64))) (size!39774 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81361)

(declare-datatypes ((ValueCell!15168 0))(
  ( (ValueCellFull!15168 (v!18693 V!47849)) (EmptyCell!15168) )
))
(declare-datatypes ((array!81363 0))(
  ( (array!81364 (arr!39238 (Array (_ BitVec 32) ValueCell!15168)) (size!39775 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81363)

(declare-fun minValueBefore!43 () V!47849)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1036 (array!81361 array!81363 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47849 V!47849 V!47849 V!47849 (_ BitVec 32) Int) Unit!41678)

(assert (=> b!1254245 (= lt!566764 (lemmaNoChangeToArrayThenSameMapNoExtras!1036 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5718 (array!81361 array!81363 (_ BitVec 32) (_ BitVec 32) V!47849 V!47849 (_ BitVec 32) Int) ListLongMap!18675)

(assert (=> b!1254245 (= lt!566766 (getCurrentListMapNoExtraKeys!5718 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254245 (= lt!566767 (getCurrentListMapNoExtraKeys!5718 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!836382 () Bool)

(assert (=> start!105302 (=> (not res!836382) (not e!712711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105302 (= res!836382 (validMask!0 mask!1466))))

(assert (=> start!105302 e!712711))

(assert (=> start!105302 true))

(assert (=> start!105302 tp!94392))

(assert (=> start!105302 tp_is_empty!31863))

(declare-fun array_inv!29847 (array!81361) Bool)

(assert (=> start!105302 (array_inv!29847 _keys!1118)))

(declare-fun e!712707 () Bool)

(declare-fun array_inv!29848 (array!81363) Bool)

(assert (=> start!105302 (and (array_inv!29848 _values!914) e!712707)))

(declare-fun mapIsEmpty!49573 () Bool)

(declare-fun mapRes!49573 () Bool)

(assert (=> mapIsEmpty!49573 mapRes!49573))

(declare-fun b!1254246 () Bool)

(assert (=> b!1254246 (= e!712707 (and e!712709 mapRes!49573))))

(declare-fun condMapEmpty!49573 () Bool)

(declare-fun mapDefault!49573 () ValueCell!15168)

(assert (=> b!1254246 (= condMapEmpty!49573 (= (arr!39238 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15168)) mapDefault!49573)))))

(declare-fun b!1254247 () Bool)

(declare-fun res!836381 () Bool)

(assert (=> b!1254247 (=> (not res!836381) (not e!712711))))

(assert (=> b!1254247 (= res!836381 (and (= (size!39775 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39774 _keys!1118) (size!39775 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254248 () Bool)

(assert (=> b!1254248 (= e!712708 true)))

(declare-fun lt!566761 () ListLongMap!18675)

(declare-fun lt!566763 () ListLongMap!18675)

(declare-fun -!2062 (ListLongMap!18675 (_ BitVec 64)) ListLongMap!18675)

(assert (=> b!1254248 (= lt!566761 (-!2062 lt!566763 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566768 () ListLongMap!18675)

(assert (=> b!1254248 (= (-!2062 lt!566768 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566767)))

(declare-fun lt!566765 () Unit!41678)

(declare-fun addThenRemoveForNewKeyIsSame!322 (ListLongMap!18675 (_ BitVec 64) V!47849) Unit!41678)

(assert (=> b!1254248 (= lt!566765 (addThenRemoveForNewKeyIsSame!322 lt!566767 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566762 () ListLongMap!18675)

(assert (=> b!1254248 (and (= lt!566763 lt!566768) (= lt!566762 lt!566766))))

(declare-fun +!4153 (ListLongMap!18675 tuple2!20790) ListLongMap!18675)

(assert (=> b!1254248 (= lt!566768 (+!4153 lt!566767 (tuple2!20791 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4540 (array!81361 array!81363 (_ BitVec 32) (_ BitVec 32) V!47849 V!47849 (_ BitVec 32) Int) ListLongMap!18675)

(assert (=> b!1254248 (= lt!566762 (getCurrentListMap!4540 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254248 (= lt!566763 (getCurrentListMap!4540 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49573 () Bool)

(declare-fun tp!94391 () Bool)

(assert (=> mapNonEmpty!49573 (= mapRes!49573 (and tp!94391 e!712706))))

(declare-fun mapRest!49573 () (Array (_ BitVec 32) ValueCell!15168))

(declare-fun mapValue!49573 () ValueCell!15168)

(declare-fun mapKey!49573 () (_ BitVec 32))

(assert (=> mapNonEmpty!49573 (= (arr!39238 _values!914) (store mapRest!49573 mapKey!49573 mapValue!49573))))

(declare-fun b!1254249 () Bool)

(declare-fun res!836380 () Bool)

(assert (=> b!1254249 (=> (not res!836380) (not e!712711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81361 (_ BitVec 32)) Bool)

(assert (=> b!1254249 (= res!836380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254250 () Bool)

(declare-fun res!836378 () Bool)

(assert (=> b!1254250 (=> (not res!836378) (not e!712711))))

(declare-datatypes ((List!28035 0))(
  ( (Nil!28032) (Cons!28031 (h!29240 (_ BitVec 64)) (t!41525 List!28035)) )
))
(declare-fun arrayNoDuplicates!0 (array!81361 (_ BitVec 32) List!28035) Bool)

(assert (=> b!1254250 (= res!836378 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28032))))

(assert (= (and start!105302 res!836382) b!1254247))

(assert (= (and b!1254247 res!836381) b!1254249))

(assert (= (and b!1254249 res!836380) b!1254250))

(assert (= (and b!1254250 res!836378) b!1254245))

(assert (= (and b!1254245 (not res!836379)) b!1254248))

(assert (= (and b!1254246 condMapEmpty!49573) mapIsEmpty!49573))

(assert (= (and b!1254246 (not condMapEmpty!49573)) mapNonEmpty!49573))

(get-info :version)

(assert (= (and mapNonEmpty!49573 ((_ is ValueCellFull!15168) mapValue!49573)) b!1254243))

(assert (= (and b!1254246 ((_ is ValueCellFull!15168) mapDefault!49573)) b!1254244))

(assert (= start!105302 b!1254246))

(declare-fun m!1154995 () Bool)

(assert (=> b!1254249 m!1154995))

(declare-fun m!1154997 () Bool)

(assert (=> b!1254245 m!1154997))

(declare-fun m!1154999 () Bool)

(assert (=> b!1254245 m!1154999))

(declare-fun m!1155001 () Bool)

(assert (=> b!1254245 m!1155001))

(declare-fun m!1155003 () Bool)

(assert (=> b!1254250 m!1155003))

(declare-fun m!1155005 () Bool)

(assert (=> b!1254248 m!1155005))

(declare-fun m!1155007 () Bool)

(assert (=> b!1254248 m!1155007))

(declare-fun m!1155009 () Bool)

(assert (=> b!1254248 m!1155009))

(declare-fun m!1155011 () Bool)

(assert (=> b!1254248 m!1155011))

(declare-fun m!1155013 () Bool)

(assert (=> b!1254248 m!1155013))

(declare-fun m!1155015 () Bool)

(assert (=> b!1254248 m!1155015))

(declare-fun m!1155017 () Bool)

(assert (=> start!105302 m!1155017))

(declare-fun m!1155019 () Bool)

(assert (=> start!105302 m!1155019))

(declare-fun m!1155021 () Bool)

(assert (=> start!105302 m!1155021))

(declare-fun m!1155023 () Bool)

(assert (=> mapNonEmpty!49573 m!1155023))

(check-sat (not b!1254250) b_and!44797 (not start!105302) (not b_next!26961) tp_is_empty!31863 (not b!1254245) (not mapNonEmpty!49573) (not b!1254248) (not b!1254249))
(check-sat b_and!44797 (not b_next!26961))
