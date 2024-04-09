; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105552 () Bool)

(assert start!105552)

(declare-fun b_free!27153 () Bool)

(declare-fun b_next!27153 () Bool)

(assert (=> start!105552 (= b_free!27153 (not b_next!27153))))

(declare-fun tp!94976 () Bool)

(declare-fun b_and!45019 () Bool)

(assert (=> start!105552 (= tp!94976 b_and!45019)))

(declare-fun res!838063 () Bool)

(declare-fun e!714781 () Bool)

(assert (=> start!105552 (=> (not res!838063) (not e!714781))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105552 (= res!838063 (validMask!0 mask!1466))))

(assert (=> start!105552 e!714781))

(assert (=> start!105552 true))

(assert (=> start!105552 tp!94976))

(declare-fun tp_is_empty!32055 () Bool)

(assert (=> start!105552 tp_is_empty!32055))

(declare-datatypes ((array!81743 0))(
  ( (array!81744 (arr!39425 (Array (_ BitVec 32) (_ BitVec 64))) (size!39962 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81743)

(declare-fun array_inv!29979 (array!81743) Bool)

(assert (=> start!105552 (array_inv!29979 _keys!1118)))

(declare-datatypes ((V!48105 0))(
  ( (V!48106 (val!16090 Int)) )
))
(declare-datatypes ((ValueCell!15264 0))(
  ( (ValueCellFull!15264 (v!18791 V!48105)) (EmptyCell!15264) )
))
(declare-datatypes ((array!81745 0))(
  ( (array!81746 (arr!39426 (Array (_ BitVec 32) ValueCell!15264)) (size!39963 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81745)

(declare-fun e!714777 () Bool)

(declare-fun array_inv!29980 (array!81745) Bool)

(assert (=> start!105552 (and (array_inv!29980 _values!914) e!714777)))

(declare-fun b!1257041 () Bool)

(declare-fun e!714778 () Bool)

(assert (=> b!1257041 (= e!714778 true)))

(declare-datatypes ((tuple2!20944 0))(
  ( (tuple2!20945 (_1!10482 (_ BitVec 64)) (_2!10482 V!48105)) )
))
(declare-datatypes ((List!28176 0))(
  ( (Nil!28173) (Cons!28172 (h!29381 tuple2!20944) (t!41672 List!28176)) )
))
(declare-datatypes ((ListLongMap!18829 0))(
  ( (ListLongMap!18830 (toList!9430 List!28176)) )
))
(declare-fun lt!568481 () ListLongMap!18829)

(declare-fun -!2105 (ListLongMap!18829 (_ BitVec 64)) ListLongMap!18829)

(assert (=> b!1257041 (= (-!2105 lt!568481 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568481)))

(declare-datatypes ((Unit!41832 0))(
  ( (Unit!41833) )
))
(declare-fun lt!568483 () Unit!41832)

(declare-fun removeNotPresentStillSame!138 (ListLongMap!18829 (_ BitVec 64)) Unit!41832)

(assert (=> b!1257041 (= lt!568483 (removeNotPresentStillSame!138 lt!568481 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1257042 () Bool)

(declare-fun res!838060 () Bool)

(assert (=> b!1257042 (=> (not res!838060) (not e!714781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81743 (_ BitVec 32)) Bool)

(assert (=> b!1257042 (= res!838060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49870 () Bool)

(declare-fun mapRes!49870 () Bool)

(assert (=> mapIsEmpty!49870 mapRes!49870))

(declare-fun b!1257043 () Bool)

(declare-fun res!838061 () Bool)

(assert (=> b!1257043 (=> (not res!838061) (not e!714781))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1257043 (= res!838061 (and (= (size!39963 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39962 _keys!1118) (size!39963 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257044 () Bool)

(declare-fun e!714776 () Bool)

(assert (=> b!1257044 (= e!714781 (not e!714776))))

(declare-fun res!838062 () Bool)

(assert (=> b!1257044 (=> res!838062 e!714776)))

(assert (=> b!1257044 (= res!838062 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568479 () ListLongMap!18829)

(declare-fun lt!568482 () ListLongMap!18829)

(assert (=> b!1257044 (= lt!568479 lt!568482)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48105)

(declare-fun lt!568480 () Unit!41832)

(declare-fun minValueBefore!43 () V!48105)

(declare-fun zeroValue!871 () V!48105)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1100 (array!81743 array!81745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48105 V!48105 V!48105 V!48105 (_ BitVec 32) Int) Unit!41832)

(assert (=> b!1257044 (= lt!568480 (lemmaNoChangeToArrayThenSameMapNoExtras!1100 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5782 (array!81743 array!81745 (_ BitVec 32) (_ BitVec 32) V!48105 V!48105 (_ BitVec 32) Int) ListLongMap!18829)

(assert (=> b!1257044 (= lt!568482 (getCurrentListMapNoExtraKeys!5782 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257044 (= lt!568479 (getCurrentListMapNoExtraKeys!5782 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257045 () Bool)

(declare-fun e!714782 () Bool)

(assert (=> b!1257045 (= e!714777 (and e!714782 mapRes!49870))))

(declare-fun condMapEmpty!49870 () Bool)

(declare-fun mapDefault!49870 () ValueCell!15264)

(assert (=> b!1257045 (= condMapEmpty!49870 (= (arr!39426 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15264)) mapDefault!49870)))))

(declare-fun b!1257046 () Bool)

(assert (=> b!1257046 (= e!714776 e!714778)))

(declare-fun res!838064 () Bool)

(assert (=> b!1257046 (=> res!838064 e!714778)))

(declare-fun contains!7583 (ListLongMap!18829 (_ BitVec 64)) Bool)

(assert (=> b!1257046 (= res!838064 (contains!7583 lt!568481 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4587 (array!81743 array!81745 (_ BitVec 32) (_ BitVec 32) V!48105 V!48105 (_ BitVec 32) Int) ListLongMap!18829)

(assert (=> b!1257046 (= lt!568481 (getCurrentListMap!4587 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49870 () Bool)

(declare-fun tp!94977 () Bool)

(declare-fun e!714779 () Bool)

(assert (=> mapNonEmpty!49870 (= mapRes!49870 (and tp!94977 e!714779))))

(declare-fun mapValue!49870 () ValueCell!15264)

(declare-fun mapRest!49870 () (Array (_ BitVec 32) ValueCell!15264))

(declare-fun mapKey!49870 () (_ BitVec 32))

(assert (=> mapNonEmpty!49870 (= (arr!39426 _values!914) (store mapRest!49870 mapKey!49870 mapValue!49870))))

(declare-fun b!1257047 () Bool)

(assert (=> b!1257047 (= e!714782 tp_is_empty!32055)))

(declare-fun b!1257048 () Bool)

(assert (=> b!1257048 (= e!714779 tp_is_empty!32055)))

(declare-fun b!1257049 () Bool)

(declare-fun res!838065 () Bool)

(assert (=> b!1257049 (=> (not res!838065) (not e!714781))))

(declare-datatypes ((List!28177 0))(
  ( (Nil!28174) (Cons!28173 (h!29382 (_ BitVec 64)) (t!41673 List!28177)) )
))
(declare-fun arrayNoDuplicates!0 (array!81743 (_ BitVec 32) List!28177) Bool)

(assert (=> b!1257049 (= res!838065 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28174))))

(assert (= (and start!105552 res!838063) b!1257043))

(assert (= (and b!1257043 res!838061) b!1257042))

(assert (= (and b!1257042 res!838060) b!1257049))

(assert (= (and b!1257049 res!838065) b!1257044))

(assert (= (and b!1257044 (not res!838062)) b!1257046))

(assert (= (and b!1257046 (not res!838064)) b!1257041))

(assert (= (and b!1257045 condMapEmpty!49870) mapIsEmpty!49870))

(assert (= (and b!1257045 (not condMapEmpty!49870)) mapNonEmpty!49870))

(get-info :version)

(assert (= (and mapNonEmpty!49870 ((_ is ValueCellFull!15264) mapValue!49870)) b!1257048))

(assert (= (and b!1257045 ((_ is ValueCellFull!15264) mapDefault!49870)) b!1257047))

(assert (= start!105552 b!1257045))

(declare-fun m!1157707 () Bool)

(assert (=> b!1257046 m!1157707))

(declare-fun m!1157709 () Bool)

(assert (=> b!1257046 m!1157709))

(declare-fun m!1157711 () Bool)

(assert (=> start!105552 m!1157711))

(declare-fun m!1157713 () Bool)

(assert (=> start!105552 m!1157713))

(declare-fun m!1157715 () Bool)

(assert (=> start!105552 m!1157715))

(declare-fun m!1157717 () Bool)

(assert (=> b!1257041 m!1157717))

(declare-fun m!1157719 () Bool)

(assert (=> b!1257041 m!1157719))

(declare-fun m!1157721 () Bool)

(assert (=> b!1257044 m!1157721))

(declare-fun m!1157723 () Bool)

(assert (=> b!1257044 m!1157723))

(declare-fun m!1157725 () Bool)

(assert (=> b!1257044 m!1157725))

(declare-fun m!1157727 () Bool)

(assert (=> b!1257042 m!1157727))

(declare-fun m!1157729 () Bool)

(assert (=> b!1257049 m!1157729))

(declare-fun m!1157731 () Bool)

(assert (=> mapNonEmpty!49870 m!1157731))

(check-sat b_and!45019 (not start!105552) tp_is_empty!32055 (not b!1257046) (not b!1257044) (not b!1257041) (not b!1257049) (not b_next!27153) (not b!1257042) (not mapNonEmpty!49870))
(check-sat b_and!45019 (not b_next!27153))
