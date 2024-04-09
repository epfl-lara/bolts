; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105446 () Bool)

(assert start!105446)

(declare-fun b_free!27069 () Bool)

(declare-fun b_next!27069 () Bool)

(assert (=> start!105446 (= b_free!27069 (not b_next!27069))))

(declare-fun tp!94721 () Bool)

(declare-fun b_and!44925 () Bool)

(assert (=> start!105446 (= tp!94721 b_and!44925)))

(declare-fun b!1255750 () Bool)

(declare-fun e!713799 () Bool)

(declare-fun tp_is_empty!31971 () Bool)

(assert (=> b!1255750 (= e!713799 tp_is_empty!31971)))

(declare-fun b!1255751 () Bool)

(declare-fun res!837246 () Bool)

(declare-fun e!713796 () Bool)

(assert (=> b!1255751 (=> (not res!837246) (not e!713796))))

(declare-datatypes ((array!81575 0))(
  ( (array!81576 (arr!39342 (Array (_ BitVec 32) (_ BitVec 64))) (size!39879 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81575)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81575 (_ BitVec 32)) Bool)

(assert (=> b!1255751 (= res!837246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!837244 () Bool)

(assert (=> start!105446 (=> (not res!837244) (not e!713796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105446 (= res!837244 (validMask!0 mask!1466))))

(assert (=> start!105446 e!713796))

(assert (=> start!105446 true))

(assert (=> start!105446 tp!94721))

(assert (=> start!105446 tp_is_empty!31971))

(declare-fun array_inv!29921 (array!81575) Bool)

(assert (=> start!105446 (array_inv!29921 _keys!1118)))

(declare-datatypes ((V!47993 0))(
  ( (V!47994 (val!16048 Int)) )
))
(declare-datatypes ((ValueCell!15222 0))(
  ( (ValueCellFull!15222 (v!18748 V!47993)) (EmptyCell!15222) )
))
(declare-datatypes ((array!81577 0))(
  ( (array!81578 (arr!39343 (Array (_ BitVec 32) ValueCell!15222)) (size!39880 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81577)

(declare-fun e!713797 () Bool)

(declare-fun array_inv!29922 (array!81577) Bool)

(assert (=> start!105446 (and (array_inv!29922 _values!914) e!713797)))

(declare-fun b!1255752 () Bool)

(declare-fun e!713798 () Bool)

(assert (=> b!1255752 (= e!713796 (not e!713798))))

(declare-fun res!837245 () Bool)

(assert (=> b!1255752 (=> res!837245 e!713798)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1255752 (= res!837245 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20874 0))(
  ( (tuple2!20875 (_1!10447 (_ BitVec 64)) (_2!10447 V!47993)) )
))
(declare-datatypes ((List!28111 0))(
  ( (Nil!28108) (Cons!28107 (h!29316 tuple2!20874) (t!41605 List!28111)) )
))
(declare-datatypes ((ListLongMap!18759 0))(
  ( (ListLongMap!18760 (toList!9395 List!28111)) )
))
(declare-fun lt!567728 () ListLongMap!18759)

(declare-fun lt!567725 () ListLongMap!18759)

(assert (=> b!1255752 (= lt!567728 lt!567725)))

(declare-fun minValueAfter!43 () V!47993)

(declare-datatypes ((Unit!41762 0))(
  ( (Unit!41763) )
))
(declare-fun lt!567726 () Unit!41762)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47993)

(declare-fun minValueBefore!43 () V!47993)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1072 (array!81575 array!81577 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47993 V!47993 V!47993 V!47993 (_ BitVec 32) Int) Unit!41762)

(assert (=> b!1255752 (= lt!567726 (lemmaNoChangeToArrayThenSameMapNoExtras!1072 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5754 (array!81575 array!81577 (_ BitVec 32) (_ BitVec 32) V!47993 V!47993 (_ BitVec 32) Int) ListLongMap!18759)

(assert (=> b!1255752 (= lt!567725 (getCurrentListMapNoExtraKeys!5754 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255752 (= lt!567728 (getCurrentListMapNoExtraKeys!5754 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49741 () Bool)

(declare-fun mapRes!49741 () Bool)

(declare-fun tp!94722 () Bool)

(assert (=> mapNonEmpty!49741 (= mapRes!49741 (and tp!94722 e!713799))))

(declare-fun mapRest!49741 () (Array (_ BitVec 32) ValueCell!15222))

(declare-fun mapValue!49741 () ValueCell!15222)

(declare-fun mapKey!49741 () (_ BitVec 32))

(assert (=> mapNonEmpty!49741 (= (arr!39343 _values!914) (store mapRest!49741 mapKey!49741 mapValue!49741))))

(declare-fun b!1255753 () Bool)

(declare-fun e!713795 () Bool)

(assert (=> b!1255753 (= e!713795 true)))

(declare-fun lt!567729 () ListLongMap!18759)

(declare-fun -!2078 (ListLongMap!18759 (_ BitVec 64)) ListLongMap!18759)

(assert (=> b!1255753 (= (-!2078 lt!567729 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567729)))

(declare-fun lt!567727 () Unit!41762)

(declare-fun removeNotPresentStillSame!111 (ListLongMap!18759 (_ BitVec 64)) Unit!41762)

(assert (=> b!1255753 (= lt!567727 (removeNotPresentStillSame!111 lt!567729 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!49741 () Bool)

(assert (=> mapIsEmpty!49741 mapRes!49741))

(declare-fun b!1255754 () Bool)

(declare-fun e!713794 () Bool)

(assert (=> b!1255754 (= e!713794 tp_is_empty!31971)))

(declare-fun b!1255755 () Bool)

(declare-fun res!837247 () Bool)

(assert (=> b!1255755 (=> (not res!837247) (not e!713796))))

(declare-datatypes ((List!28112 0))(
  ( (Nil!28109) (Cons!28108 (h!29317 (_ BitVec 64)) (t!41606 List!28112)) )
))
(declare-fun arrayNoDuplicates!0 (array!81575 (_ BitVec 32) List!28112) Bool)

(assert (=> b!1255755 (= res!837247 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28109))))

(declare-fun b!1255756 () Bool)

(declare-fun res!837243 () Bool)

(assert (=> b!1255756 (=> (not res!837243) (not e!713796))))

(assert (=> b!1255756 (= res!837243 (and (= (size!39880 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39879 _keys!1118) (size!39880 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255757 () Bool)

(assert (=> b!1255757 (= e!713798 e!713795)))

(declare-fun res!837248 () Bool)

(assert (=> b!1255757 (=> res!837248 e!713795)))

(declare-fun contains!7553 (ListLongMap!18759 (_ BitVec 64)) Bool)

(assert (=> b!1255757 (= res!837248 (contains!7553 lt!567729 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4558 (array!81575 array!81577 (_ BitVec 32) (_ BitVec 32) V!47993 V!47993 (_ BitVec 32) Int) ListLongMap!18759)

(assert (=> b!1255757 (= lt!567729 (getCurrentListMap!4558 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255758 () Bool)

(assert (=> b!1255758 (= e!713797 (and e!713794 mapRes!49741))))

(declare-fun condMapEmpty!49741 () Bool)

(declare-fun mapDefault!49741 () ValueCell!15222)

(assert (=> b!1255758 (= condMapEmpty!49741 (= (arr!39343 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15222)) mapDefault!49741)))))

(assert (= (and start!105446 res!837244) b!1255756))

(assert (= (and b!1255756 res!837243) b!1255751))

(assert (= (and b!1255751 res!837246) b!1255755))

(assert (= (and b!1255755 res!837247) b!1255752))

(assert (= (and b!1255752 (not res!837245)) b!1255757))

(assert (= (and b!1255757 (not res!837248)) b!1255753))

(assert (= (and b!1255758 condMapEmpty!49741) mapIsEmpty!49741))

(assert (= (and b!1255758 (not condMapEmpty!49741)) mapNonEmpty!49741))

(get-info :version)

(assert (= (and mapNonEmpty!49741 ((_ is ValueCellFull!15222) mapValue!49741)) b!1255750))

(assert (= (and b!1255758 ((_ is ValueCellFull!15222) mapDefault!49741)) b!1255754))

(assert (= start!105446 b!1255758))

(declare-fun m!1156489 () Bool)

(assert (=> b!1255751 m!1156489))

(declare-fun m!1156491 () Bool)

(assert (=> b!1255757 m!1156491))

(declare-fun m!1156493 () Bool)

(assert (=> b!1255757 m!1156493))

(declare-fun m!1156495 () Bool)

(assert (=> b!1255752 m!1156495))

(declare-fun m!1156497 () Bool)

(assert (=> b!1255752 m!1156497))

(declare-fun m!1156499 () Bool)

(assert (=> b!1255752 m!1156499))

(declare-fun m!1156501 () Bool)

(assert (=> b!1255755 m!1156501))

(declare-fun m!1156503 () Bool)

(assert (=> start!105446 m!1156503))

(declare-fun m!1156505 () Bool)

(assert (=> start!105446 m!1156505))

(declare-fun m!1156507 () Bool)

(assert (=> start!105446 m!1156507))

(declare-fun m!1156509 () Bool)

(assert (=> mapNonEmpty!49741 m!1156509))

(declare-fun m!1156511 () Bool)

(assert (=> b!1255753 m!1156511))

(declare-fun m!1156513 () Bool)

(assert (=> b!1255753 m!1156513))

(check-sat b_and!44925 (not b!1255753) (not b!1255755) (not b!1255751) (not start!105446) (not mapNonEmpty!49741) (not b!1255752) tp_is_empty!31971 (not b_next!27069) (not b!1255757))
(check-sat b_and!44925 (not b_next!27069))
