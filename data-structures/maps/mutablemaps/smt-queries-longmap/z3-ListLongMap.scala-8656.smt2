; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105314 () Bool)

(assert start!105314)

(declare-fun b_free!26973 () Bool)

(declare-fun b_next!26973 () Bool)

(assert (=> start!105314 (= b_free!26973 (not b_next!26973))))

(declare-fun tp!94428 () Bool)

(declare-fun b_and!44809 () Bool)

(assert (=> start!105314 (= tp!94428 b_and!44809)))

(declare-fun b!1254387 () Bool)

(declare-fun res!836470 () Bool)

(declare-fun e!712819 () Bool)

(assert (=> b!1254387 (=> (not res!836470) (not e!712819))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81383 0))(
  ( (array!81384 (arr!39248 (Array (_ BitVec 32) (_ BitVec 64))) (size!39785 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81383)

(declare-datatypes ((V!47865 0))(
  ( (V!47866 (val!16000 Int)) )
))
(declare-datatypes ((ValueCell!15174 0))(
  ( (ValueCellFull!15174 (v!18699 V!47865)) (EmptyCell!15174) )
))
(declare-datatypes ((array!81385 0))(
  ( (array!81386 (arr!39249 (Array (_ BitVec 32) ValueCell!15174)) (size!39786 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81385)

(assert (=> b!1254387 (= res!836470 (and (= (size!39786 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39785 _keys!1118) (size!39786 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254388 () Bool)

(declare-fun e!712817 () Bool)

(declare-fun tp_is_empty!31875 () Bool)

(assert (=> b!1254388 (= e!712817 tp_is_empty!31875)))

(declare-fun b!1254389 () Bool)

(declare-fun e!712815 () Bool)

(assert (=> b!1254389 (= e!712815 tp_is_empty!31875)))

(declare-fun b!1254390 () Bool)

(declare-fun res!836471 () Bool)

(assert (=> b!1254390 (=> (not res!836471) (not e!712819))))

(declare-datatypes ((List!28042 0))(
  ( (Nil!28039) (Cons!28038 (h!29247 (_ BitVec 64)) (t!41532 List!28042)) )
))
(declare-fun arrayNoDuplicates!0 (array!81383 (_ BitVec 32) List!28042) Bool)

(assert (=> b!1254390 (= res!836471 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28039))))

(declare-fun b!1254391 () Bool)

(declare-fun e!712818 () Bool)

(declare-fun mapRes!49591 () Bool)

(assert (=> b!1254391 (= e!712818 (and e!712815 mapRes!49591))))

(declare-fun condMapEmpty!49591 () Bool)

(declare-fun mapDefault!49591 () ValueCell!15174)

(assert (=> b!1254391 (= condMapEmpty!49591 (= (arr!39249 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15174)) mapDefault!49591)))))

(declare-fun b!1254392 () Bool)

(declare-fun res!836472 () Bool)

(assert (=> b!1254392 (=> (not res!836472) (not e!712819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81383 (_ BitVec 32)) Bool)

(assert (=> b!1254392 (= res!836472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254393 () Bool)

(declare-fun e!712816 () Bool)

(assert (=> b!1254393 (= e!712819 (not e!712816))))

(declare-fun res!836468 () Bool)

(assert (=> b!1254393 (=> res!836468 e!712816)))

(assert (=> b!1254393 (= res!836468 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20800 0))(
  ( (tuple2!20801 (_1!10410 (_ BitVec 64)) (_2!10410 V!47865)) )
))
(declare-datatypes ((List!28043 0))(
  ( (Nil!28040) (Cons!28039 (h!29248 tuple2!20800) (t!41533 List!28043)) )
))
(declare-datatypes ((ListLongMap!18685 0))(
  ( (ListLongMap!18686 (toList!9358 List!28043)) )
))
(declare-fun lt!566905 () ListLongMap!18685)

(declare-fun lt!566910 () ListLongMap!18685)

(assert (=> b!1254393 (= lt!566905 lt!566910)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47865)

(declare-fun zeroValue!871 () V!47865)

(declare-fun minValueBefore!43 () V!47865)

(declare-datatypes ((Unit!41688 0))(
  ( (Unit!41689) )
))
(declare-fun lt!566909 () Unit!41688)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1039 (array!81383 array!81385 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47865 V!47865 V!47865 V!47865 (_ BitVec 32) Int) Unit!41688)

(assert (=> b!1254393 (= lt!566909 (lemmaNoChangeToArrayThenSameMapNoExtras!1039 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5721 (array!81383 array!81385 (_ BitVec 32) (_ BitVec 32) V!47865 V!47865 (_ BitVec 32) Int) ListLongMap!18685)

(assert (=> b!1254393 (= lt!566910 (getCurrentListMapNoExtraKeys!5721 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254393 (= lt!566905 (getCurrentListMapNoExtraKeys!5721 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!836469 () Bool)

(assert (=> start!105314 (=> (not res!836469) (not e!712819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105314 (= res!836469 (validMask!0 mask!1466))))

(assert (=> start!105314 e!712819))

(assert (=> start!105314 true))

(assert (=> start!105314 tp!94428))

(assert (=> start!105314 tp_is_empty!31875))

(declare-fun array_inv!29855 (array!81383) Bool)

(assert (=> start!105314 (array_inv!29855 _keys!1118)))

(declare-fun array_inv!29856 (array!81385) Bool)

(assert (=> start!105314 (and (array_inv!29856 _values!914) e!712818)))

(declare-fun mapNonEmpty!49591 () Bool)

(declare-fun tp!94427 () Bool)

(assert (=> mapNonEmpty!49591 (= mapRes!49591 (and tp!94427 e!712817))))

(declare-fun mapRest!49591 () (Array (_ BitVec 32) ValueCell!15174))

(declare-fun mapValue!49591 () ValueCell!15174)

(declare-fun mapKey!49591 () (_ BitVec 32))

(assert (=> mapNonEmpty!49591 (= (arr!39249 _values!914) (store mapRest!49591 mapKey!49591 mapValue!49591))))

(declare-fun b!1254394 () Bool)

(assert (=> b!1254394 (= e!712816 true)))

(declare-fun lt!566908 () ListLongMap!18685)

(declare-fun lt!566912 () ListLongMap!18685)

(declare-fun -!2067 (ListLongMap!18685 (_ BitVec 64)) ListLongMap!18685)

(assert (=> b!1254394 (= lt!566908 (-!2067 lt!566912 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566906 () ListLongMap!18685)

(assert (=> b!1254394 (= (-!2067 lt!566906 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566905)))

(declare-fun lt!566911 () Unit!41688)

(declare-fun addThenRemoveForNewKeyIsSame!327 (ListLongMap!18685 (_ BitVec 64) V!47865) Unit!41688)

(assert (=> b!1254394 (= lt!566911 (addThenRemoveForNewKeyIsSame!327 lt!566905 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566907 () ListLongMap!18685)

(assert (=> b!1254394 (and (= lt!566912 lt!566906) (= lt!566907 lt!566910))))

(declare-fun +!4158 (ListLongMap!18685 tuple2!20800) ListLongMap!18685)

(assert (=> b!1254394 (= lt!566906 (+!4158 lt!566905 (tuple2!20801 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4545 (array!81383 array!81385 (_ BitVec 32) (_ BitVec 32) V!47865 V!47865 (_ BitVec 32) Int) ListLongMap!18685)

(assert (=> b!1254394 (= lt!566907 (getCurrentListMap!4545 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254394 (= lt!566912 (getCurrentListMap!4545 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49591 () Bool)

(assert (=> mapIsEmpty!49591 mapRes!49591))

(assert (= (and start!105314 res!836469) b!1254387))

(assert (= (and b!1254387 res!836470) b!1254392))

(assert (= (and b!1254392 res!836472) b!1254390))

(assert (= (and b!1254390 res!836471) b!1254393))

(assert (= (and b!1254393 (not res!836468)) b!1254394))

(assert (= (and b!1254391 condMapEmpty!49591) mapIsEmpty!49591))

(assert (= (and b!1254391 (not condMapEmpty!49591)) mapNonEmpty!49591))

(get-info :version)

(assert (= (and mapNonEmpty!49591 ((_ is ValueCellFull!15174) mapValue!49591)) b!1254388))

(assert (= (and b!1254391 ((_ is ValueCellFull!15174) mapDefault!49591)) b!1254389))

(assert (= start!105314 b!1254391))

(declare-fun m!1155175 () Bool)

(assert (=> b!1254393 m!1155175))

(declare-fun m!1155177 () Bool)

(assert (=> b!1254393 m!1155177))

(declare-fun m!1155179 () Bool)

(assert (=> b!1254393 m!1155179))

(declare-fun m!1155181 () Bool)

(assert (=> b!1254392 m!1155181))

(declare-fun m!1155183 () Bool)

(assert (=> b!1254394 m!1155183))

(declare-fun m!1155185 () Bool)

(assert (=> b!1254394 m!1155185))

(declare-fun m!1155187 () Bool)

(assert (=> b!1254394 m!1155187))

(declare-fun m!1155189 () Bool)

(assert (=> b!1254394 m!1155189))

(declare-fun m!1155191 () Bool)

(assert (=> b!1254394 m!1155191))

(declare-fun m!1155193 () Bool)

(assert (=> b!1254394 m!1155193))

(declare-fun m!1155195 () Bool)

(assert (=> mapNonEmpty!49591 m!1155195))

(declare-fun m!1155197 () Bool)

(assert (=> start!105314 m!1155197))

(declare-fun m!1155199 () Bool)

(assert (=> start!105314 m!1155199))

(declare-fun m!1155201 () Bool)

(assert (=> start!105314 m!1155201))

(declare-fun m!1155203 () Bool)

(assert (=> b!1254390 m!1155203))

(check-sat (not b!1254394) (not b!1254393) tp_is_empty!31875 (not b!1254392) (not b!1254390) (not b_next!26973) (not mapNonEmpty!49591) b_and!44809 (not start!105314))
(check-sat b_and!44809 (not b_next!26973))
