; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105736 () Bool)

(assert start!105736)

(declare-fun b_free!27285 () Bool)

(declare-fun b_next!27285 () Bool)

(assert (=> start!105736 (= b_free!27285 (not b_next!27285))))

(declare-fun tp!95381 () Bool)

(declare-fun b_and!45179 () Bool)

(assert (=> start!105736 (= tp!95381 b_and!45179)))

(declare-fun mapIsEmpty!50077 () Bool)

(declare-fun mapRes!50077 () Bool)

(assert (=> mapIsEmpty!50077 mapRes!50077))

(declare-fun b!1258970 () Bool)

(declare-fun e!716171 () Bool)

(declare-fun e!716168 () Bool)

(assert (=> b!1258970 (= e!716171 (not e!716168))))

(declare-fun res!839159 () Bool)

(assert (=> b!1258970 (=> res!839159 e!716168)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1258970 (= res!839159 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48281 0))(
  ( (V!48282 (val!16156 Int)) )
))
(declare-datatypes ((tuple2!21036 0))(
  ( (tuple2!21037 (_1!10528 (_ BitVec 64)) (_2!10528 V!48281)) )
))
(declare-datatypes ((List!28266 0))(
  ( (Nil!28263) (Cons!28262 (h!29471 tuple2!21036) (t!41768 List!28266)) )
))
(declare-datatypes ((ListLongMap!18921 0))(
  ( (ListLongMap!18922 (toList!9476 List!28266)) )
))
(declare-fun lt!569596 () ListLongMap!18921)

(declare-fun lt!569594 () ListLongMap!18921)

(assert (=> b!1258970 (= lt!569596 lt!569594)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48281)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48281)

(declare-datatypes ((array!81987 0))(
  ( (array!81988 (arr!39544 (Array (_ BitVec 32) (_ BitVec 64))) (size!40081 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81987)

(declare-datatypes ((ValueCell!15330 0))(
  ( (ValueCellFull!15330 (v!18858 V!48281)) (EmptyCell!15330) )
))
(declare-datatypes ((array!81989 0))(
  ( (array!81990 (arr!39545 (Array (_ BitVec 32) ValueCell!15330)) (size!40082 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81989)

(declare-fun minValueBefore!43 () V!48281)

(declare-datatypes ((Unit!41921 0))(
  ( (Unit!41922) )
))
(declare-fun lt!569601 () Unit!41921)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1143 (array!81987 array!81989 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48281 V!48281 V!48281 V!48281 (_ BitVec 32) Int) Unit!41921)

(assert (=> b!1258970 (= lt!569601 (lemmaNoChangeToArrayThenSameMapNoExtras!1143 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5825 (array!81987 array!81989 (_ BitVec 32) (_ BitVec 32) V!48281 V!48281 (_ BitVec 32) Int) ListLongMap!18921)

(assert (=> b!1258970 (= lt!569594 (getCurrentListMapNoExtraKeys!5825 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258970 (= lt!569596 (getCurrentListMapNoExtraKeys!5825 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258971 () Bool)

(declare-fun e!716169 () Bool)

(declare-fun e!716170 () Bool)

(assert (=> b!1258971 (= e!716169 (and e!716170 mapRes!50077))))

(declare-fun condMapEmpty!50077 () Bool)

(declare-fun mapDefault!50077 () ValueCell!15330)

(assert (=> b!1258971 (= condMapEmpty!50077 (= (arr!39545 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15330)) mapDefault!50077)))))

(declare-fun b!1258972 () Bool)

(declare-fun e!716172 () Bool)

(declare-fun tp_is_empty!32187 () Bool)

(assert (=> b!1258972 (= e!716172 tp_is_empty!32187)))

(declare-fun b!1258973 () Bool)

(declare-fun e!716174 () Bool)

(declare-fun lt!569600 () ListLongMap!18921)

(declare-fun lt!569595 () tuple2!21036)

(declare-fun +!4175 (ListLongMap!18921 tuple2!21036) ListLongMap!18921)

(assert (=> b!1258973 (= e!716174 (= lt!569600 (+!4175 lt!569594 lt!569595)))))

(declare-fun b!1258974 () Bool)

(assert (=> b!1258974 (= e!716170 tp_is_empty!32187)))

(declare-fun b!1258975 () Bool)

(assert (=> b!1258975 (= e!716168 true)))

(declare-fun lt!569593 () ListLongMap!18921)

(declare-fun lt!569602 () ListLongMap!18921)

(declare-fun -!2110 (ListLongMap!18921 (_ BitVec 64)) ListLongMap!18921)

(assert (=> b!1258975 (= lt!569593 (-!2110 lt!569602 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569597 () ListLongMap!18921)

(declare-fun lt!569598 () ListLongMap!18921)

(assert (=> b!1258975 (= (-!2110 lt!569597 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569598)))

(declare-fun lt!569599 () Unit!41921)

(declare-fun addThenRemoveForNewKeyIsSame!335 (ListLongMap!18921 (_ BitVec 64) V!48281) Unit!41921)

(assert (=> b!1258975 (= lt!569599 (addThenRemoveForNewKeyIsSame!335 lt!569598 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1258975 e!716174))

(declare-fun res!839160 () Bool)

(assert (=> b!1258975 (=> (not res!839160) (not e!716174))))

(assert (=> b!1258975 (= res!839160 (= lt!569602 lt!569597))))

(assert (=> b!1258975 (= lt!569597 (+!4175 lt!569598 (tuple2!21037 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1258975 (= lt!569598 (+!4175 lt!569596 lt!569595))))

(assert (=> b!1258975 (= lt!569595 (tuple2!21037 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4614 (array!81987 array!81989 (_ BitVec 32) (_ BitVec 32) V!48281 V!48281 (_ BitVec 32) Int) ListLongMap!18921)

(assert (=> b!1258975 (= lt!569600 (getCurrentListMap!4614 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258975 (= lt!569602 (getCurrentListMap!4614 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!839157 () Bool)

(assert (=> start!105736 (=> (not res!839157) (not e!716171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105736 (= res!839157 (validMask!0 mask!1466))))

(assert (=> start!105736 e!716171))

(assert (=> start!105736 true))

(assert (=> start!105736 tp!95381))

(assert (=> start!105736 tp_is_empty!32187))

(declare-fun array_inv!30063 (array!81987) Bool)

(assert (=> start!105736 (array_inv!30063 _keys!1118)))

(declare-fun array_inv!30064 (array!81989) Bool)

(assert (=> start!105736 (and (array_inv!30064 _values!914) e!716169)))

(declare-fun mapNonEmpty!50077 () Bool)

(declare-fun tp!95382 () Bool)

(assert (=> mapNonEmpty!50077 (= mapRes!50077 (and tp!95382 e!716172))))

(declare-fun mapRest!50077 () (Array (_ BitVec 32) ValueCell!15330))

(declare-fun mapKey!50077 () (_ BitVec 32))

(declare-fun mapValue!50077 () ValueCell!15330)

(assert (=> mapNonEmpty!50077 (= (arr!39545 _values!914) (store mapRest!50077 mapKey!50077 mapValue!50077))))

(declare-fun b!1258976 () Bool)

(declare-fun res!839158 () Bool)

(assert (=> b!1258976 (=> (not res!839158) (not e!716171))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81987 (_ BitVec 32)) Bool)

(assert (=> b!1258976 (= res!839158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258977 () Bool)

(declare-fun res!839156 () Bool)

(assert (=> b!1258977 (=> (not res!839156) (not e!716171))))

(declare-datatypes ((List!28267 0))(
  ( (Nil!28264) (Cons!28263 (h!29472 (_ BitVec 64)) (t!41769 List!28267)) )
))
(declare-fun arrayNoDuplicates!0 (array!81987 (_ BitVec 32) List!28267) Bool)

(assert (=> b!1258977 (= res!839156 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28264))))

(declare-fun b!1258978 () Bool)

(declare-fun res!839155 () Bool)

(assert (=> b!1258978 (=> (not res!839155) (not e!716171))))

(assert (=> b!1258978 (= res!839155 (and (= (size!40082 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40081 _keys!1118) (size!40082 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105736 res!839157) b!1258978))

(assert (= (and b!1258978 res!839155) b!1258976))

(assert (= (and b!1258976 res!839158) b!1258977))

(assert (= (and b!1258977 res!839156) b!1258970))

(assert (= (and b!1258970 (not res!839159)) b!1258975))

(assert (= (and b!1258975 res!839160) b!1258973))

(assert (= (and b!1258971 condMapEmpty!50077) mapIsEmpty!50077))

(assert (= (and b!1258971 (not condMapEmpty!50077)) mapNonEmpty!50077))

(get-info :version)

(assert (= (and mapNonEmpty!50077 ((_ is ValueCellFull!15330) mapValue!50077)) b!1258972))

(assert (= (and b!1258971 ((_ is ValueCellFull!15330) mapDefault!50077)) b!1258974))

(assert (= start!105736 b!1258971))

(declare-fun m!1159393 () Bool)

(assert (=> mapNonEmpty!50077 m!1159393))

(declare-fun m!1159395 () Bool)

(assert (=> b!1258976 m!1159395))

(declare-fun m!1159397 () Bool)

(assert (=> b!1258973 m!1159397))

(declare-fun m!1159399 () Bool)

(assert (=> start!105736 m!1159399))

(declare-fun m!1159401 () Bool)

(assert (=> start!105736 m!1159401))

(declare-fun m!1159403 () Bool)

(assert (=> start!105736 m!1159403))

(declare-fun m!1159405 () Bool)

(assert (=> b!1258977 m!1159405))

(declare-fun m!1159407 () Bool)

(assert (=> b!1258975 m!1159407))

(declare-fun m!1159409 () Bool)

(assert (=> b!1258975 m!1159409))

(declare-fun m!1159411 () Bool)

(assert (=> b!1258975 m!1159411))

(declare-fun m!1159413 () Bool)

(assert (=> b!1258975 m!1159413))

(declare-fun m!1159415 () Bool)

(assert (=> b!1258975 m!1159415))

(declare-fun m!1159417 () Bool)

(assert (=> b!1258975 m!1159417))

(declare-fun m!1159419 () Bool)

(assert (=> b!1258975 m!1159419))

(declare-fun m!1159421 () Bool)

(assert (=> b!1258970 m!1159421))

(declare-fun m!1159423 () Bool)

(assert (=> b!1258970 m!1159423))

(declare-fun m!1159425 () Bool)

(assert (=> b!1258970 m!1159425))

(check-sat (not b!1258970) (not b!1258977) (not b!1258973) (not start!105736) (not b!1258976) (not b!1258975) (not b_next!27285) tp_is_empty!32187 b_and!45179 (not mapNonEmpty!50077))
(check-sat b_and!45179 (not b_next!27285))
