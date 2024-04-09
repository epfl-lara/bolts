; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105308 () Bool)

(assert start!105308)

(declare-fun b_free!26967 () Bool)

(declare-fun b_next!26967 () Bool)

(assert (=> start!105308 (= b_free!26967 (not b_next!26967))))

(declare-fun tp!94409 () Bool)

(declare-fun b_and!44803 () Bool)

(assert (=> start!105308 (= tp!94409 b_and!44803)))

(declare-fun b!1254315 () Bool)

(declare-fun res!836424 () Bool)

(declare-fun e!712763 () Bool)

(assert (=> b!1254315 (=> (not res!836424) (not e!712763))))

(declare-datatypes ((array!81373 0))(
  ( (array!81374 (arr!39243 (Array (_ BitVec 32) (_ BitVec 64))) (size!39780 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81373)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81373 (_ BitVec 32)) Bool)

(assert (=> b!1254315 (= res!836424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49582 () Bool)

(declare-fun mapRes!49582 () Bool)

(declare-fun tp!94410 () Bool)

(declare-fun e!712764 () Bool)

(assert (=> mapNonEmpty!49582 (= mapRes!49582 (and tp!94410 e!712764))))

(declare-datatypes ((V!47857 0))(
  ( (V!47858 (val!15997 Int)) )
))
(declare-datatypes ((ValueCell!15171 0))(
  ( (ValueCellFull!15171 (v!18696 V!47857)) (EmptyCell!15171) )
))
(declare-fun mapRest!49582 () (Array (_ BitVec 32) ValueCell!15171))

(declare-fun mapKey!49582 () (_ BitVec 32))

(declare-fun mapValue!49582 () ValueCell!15171)

(declare-datatypes ((array!81375 0))(
  ( (array!81376 (arr!39244 (Array (_ BitVec 32) ValueCell!15171)) (size!39781 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81375)

(assert (=> mapNonEmpty!49582 (= (arr!39244 _values!914) (store mapRest!49582 mapKey!49582 mapValue!49582))))

(declare-fun b!1254316 () Bool)

(declare-fun e!712761 () Bool)

(declare-fun e!712762 () Bool)

(assert (=> b!1254316 (= e!712761 (and e!712762 mapRes!49582))))

(declare-fun condMapEmpty!49582 () Bool)

(declare-fun mapDefault!49582 () ValueCell!15171)

(assert (=> b!1254316 (= condMapEmpty!49582 (= (arr!39244 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15171)) mapDefault!49582)))))

(declare-fun b!1254317 () Bool)

(declare-fun e!712760 () Bool)

(assert (=> b!1254317 (= e!712763 (not e!712760))))

(declare-fun res!836427 () Bool)

(assert (=> b!1254317 (=> res!836427 e!712760)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254317 (= res!836427 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20796 0))(
  ( (tuple2!20797 (_1!10408 (_ BitVec 64)) (_2!10408 V!47857)) )
))
(declare-datatypes ((List!28039 0))(
  ( (Nil!28036) (Cons!28035 (h!29244 tuple2!20796) (t!41529 List!28039)) )
))
(declare-datatypes ((ListLongMap!18681 0))(
  ( (ListLongMap!18682 (toList!9356 List!28039)) )
))
(declare-fun lt!566840 () ListLongMap!18681)

(declare-fun lt!566834 () ListLongMap!18681)

(assert (=> b!1254317 (= lt!566840 lt!566834)))

(declare-datatypes ((Unit!41684 0))(
  ( (Unit!41685) )
))
(declare-fun lt!566833 () Unit!41684)

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47857)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47857)

(declare-fun minValueBefore!43 () V!47857)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1038 (array!81373 array!81375 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47857 V!47857 V!47857 V!47857 (_ BitVec 32) Int) Unit!41684)

(assert (=> b!1254317 (= lt!566833 (lemmaNoChangeToArrayThenSameMapNoExtras!1038 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5720 (array!81373 array!81375 (_ BitVec 32) (_ BitVec 32) V!47857 V!47857 (_ BitVec 32) Int) ListLongMap!18681)

(assert (=> b!1254317 (= lt!566834 (getCurrentListMapNoExtraKeys!5720 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254317 (= lt!566840 (getCurrentListMapNoExtraKeys!5720 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254319 () Bool)

(declare-fun tp_is_empty!31869 () Bool)

(assert (=> b!1254319 (= e!712764 tp_is_empty!31869)))

(declare-fun b!1254320 () Bool)

(assert (=> b!1254320 (= e!712762 tp_is_empty!31869)))

(declare-fun b!1254321 () Bool)

(assert (=> b!1254321 (= e!712760 true)))

(declare-fun lt!566836 () ListLongMap!18681)

(declare-fun lt!566837 () ListLongMap!18681)

(declare-fun -!2065 (ListLongMap!18681 (_ BitVec 64)) ListLongMap!18681)

(assert (=> b!1254321 (= lt!566836 (-!2065 lt!566837 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566839 () ListLongMap!18681)

(assert (=> b!1254321 (= (-!2065 lt!566839 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566840)))

(declare-fun lt!566835 () Unit!41684)

(declare-fun addThenRemoveForNewKeyIsSame!325 (ListLongMap!18681 (_ BitVec 64) V!47857) Unit!41684)

(assert (=> b!1254321 (= lt!566835 (addThenRemoveForNewKeyIsSame!325 lt!566840 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566838 () ListLongMap!18681)

(assert (=> b!1254321 (and (= lt!566837 lt!566839) (= lt!566838 lt!566834))))

(declare-fun +!4156 (ListLongMap!18681 tuple2!20796) ListLongMap!18681)

(assert (=> b!1254321 (= lt!566839 (+!4156 lt!566840 (tuple2!20797 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4543 (array!81373 array!81375 (_ BitVec 32) (_ BitVec 32) V!47857 V!47857 (_ BitVec 32) Int) ListLongMap!18681)

(assert (=> b!1254321 (= lt!566838 (getCurrentListMap!4543 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254321 (= lt!566837 (getCurrentListMap!4543 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254322 () Bool)

(declare-fun res!836426 () Bool)

(assert (=> b!1254322 (=> (not res!836426) (not e!712763))))

(declare-datatypes ((List!28040 0))(
  ( (Nil!28037) (Cons!28036 (h!29245 (_ BitVec 64)) (t!41530 List!28040)) )
))
(declare-fun arrayNoDuplicates!0 (array!81373 (_ BitVec 32) List!28040) Bool)

(assert (=> b!1254322 (= res!836426 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28037))))

(declare-fun mapIsEmpty!49582 () Bool)

(assert (=> mapIsEmpty!49582 mapRes!49582))

(declare-fun res!836423 () Bool)

(assert (=> start!105308 (=> (not res!836423) (not e!712763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105308 (= res!836423 (validMask!0 mask!1466))))

(assert (=> start!105308 e!712763))

(assert (=> start!105308 true))

(assert (=> start!105308 tp!94409))

(assert (=> start!105308 tp_is_empty!31869))

(declare-fun array_inv!29853 (array!81373) Bool)

(assert (=> start!105308 (array_inv!29853 _keys!1118)))

(declare-fun array_inv!29854 (array!81375) Bool)

(assert (=> start!105308 (and (array_inv!29854 _values!914) e!712761)))

(declare-fun b!1254318 () Bool)

(declare-fun res!836425 () Bool)

(assert (=> b!1254318 (=> (not res!836425) (not e!712763))))

(assert (=> b!1254318 (= res!836425 (and (= (size!39781 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39780 _keys!1118) (size!39781 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105308 res!836423) b!1254318))

(assert (= (and b!1254318 res!836425) b!1254315))

(assert (= (and b!1254315 res!836424) b!1254322))

(assert (= (and b!1254322 res!836426) b!1254317))

(assert (= (and b!1254317 (not res!836427)) b!1254321))

(assert (= (and b!1254316 condMapEmpty!49582) mapIsEmpty!49582))

(assert (= (and b!1254316 (not condMapEmpty!49582)) mapNonEmpty!49582))

(get-info :version)

(assert (= (and mapNonEmpty!49582 ((_ is ValueCellFull!15171) mapValue!49582)) b!1254319))

(assert (= (and b!1254316 ((_ is ValueCellFull!15171) mapDefault!49582)) b!1254320))

(assert (= start!105308 b!1254316))

(declare-fun m!1155085 () Bool)

(assert (=> start!105308 m!1155085))

(declare-fun m!1155087 () Bool)

(assert (=> start!105308 m!1155087))

(declare-fun m!1155089 () Bool)

(assert (=> start!105308 m!1155089))

(declare-fun m!1155091 () Bool)

(assert (=> b!1254317 m!1155091))

(declare-fun m!1155093 () Bool)

(assert (=> b!1254317 m!1155093))

(declare-fun m!1155095 () Bool)

(assert (=> b!1254317 m!1155095))

(declare-fun m!1155097 () Bool)

(assert (=> b!1254321 m!1155097))

(declare-fun m!1155099 () Bool)

(assert (=> b!1254321 m!1155099))

(declare-fun m!1155101 () Bool)

(assert (=> b!1254321 m!1155101))

(declare-fun m!1155103 () Bool)

(assert (=> b!1254321 m!1155103))

(declare-fun m!1155105 () Bool)

(assert (=> b!1254321 m!1155105))

(declare-fun m!1155107 () Bool)

(assert (=> b!1254321 m!1155107))

(declare-fun m!1155109 () Bool)

(assert (=> b!1254322 m!1155109))

(declare-fun m!1155111 () Bool)

(assert (=> mapNonEmpty!49582 m!1155111))

(declare-fun m!1155113 () Bool)

(assert (=> b!1254315 m!1155113))

(check-sat (not b!1254321) (not mapNonEmpty!49582) tp_is_empty!31869 (not b_next!26967) (not b!1254322) (not b!1254317) (not b!1254315) (not start!105308) b_and!44803)
(check-sat b_and!44803 (not b_next!26967))
