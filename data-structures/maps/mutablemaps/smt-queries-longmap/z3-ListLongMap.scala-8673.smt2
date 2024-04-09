; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105452 () Bool)

(assert start!105452)

(declare-fun b_free!27075 () Bool)

(declare-fun b_next!27075 () Bool)

(assert (=> start!105452 (= b_free!27075 (not b_next!27075))))

(declare-fun tp!94739 () Bool)

(declare-fun b_and!44931 () Bool)

(assert (=> start!105452 (= tp!94739 b_and!44931)))

(declare-fun mapNonEmpty!49750 () Bool)

(declare-fun mapRes!49750 () Bool)

(declare-fun tp!94740 () Bool)

(declare-fun e!713862 () Bool)

(assert (=> mapNonEmpty!49750 (= mapRes!49750 (and tp!94740 e!713862))))

(declare-datatypes ((V!48001 0))(
  ( (V!48002 (val!16051 Int)) )
))
(declare-datatypes ((ValueCell!15225 0))(
  ( (ValueCellFull!15225 (v!18751 V!48001)) (EmptyCell!15225) )
))
(declare-fun mapRest!49750 () (Array (_ BitVec 32) ValueCell!15225))

(declare-fun mapValue!49750 () ValueCell!15225)

(declare-datatypes ((array!81587 0))(
  ( (array!81588 (arr!39348 (Array (_ BitVec 32) ValueCell!15225)) (size!39885 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81587)

(declare-fun mapKey!49750 () (_ BitVec 32))

(assert (=> mapNonEmpty!49750 (= (arr!39348 _values!914) (store mapRest!49750 mapKey!49750 mapValue!49750))))

(declare-fun mapIsEmpty!49750 () Bool)

(assert (=> mapIsEmpty!49750 mapRes!49750))

(declare-fun b!1255831 () Bool)

(declare-fun res!837302 () Bool)

(declare-fun e!713863 () Bool)

(assert (=> b!1255831 (=> (not res!837302) (not e!713863))))

(declare-datatypes ((array!81589 0))(
  ( (array!81590 (arr!39349 (Array (_ BitVec 32) (_ BitVec 64))) (size!39886 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81589)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81589 (_ BitVec 32)) Bool)

(assert (=> b!1255831 (= res!837302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255832 () Bool)

(declare-fun tp_is_empty!31977 () Bool)

(assert (=> b!1255832 (= e!713862 tp_is_empty!31977)))

(declare-fun b!1255833 () Bool)

(declare-fun e!713857 () Bool)

(declare-fun e!713859 () Bool)

(assert (=> b!1255833 (= e!713857 e!713859)))

(declare-fun res!837297 () Bool)

(assert (=> b!1255833 (=> res!837297 e!713859)))

(declare-datatypes ((tuple2!20880 0))(
  ( (tuple2!20881 (_1!10450 (_ BitVec 64)) (_2!10450 V!48001)) )
))
(declare-datatypes ((List!28115 0))(
  ( (Nil!28112) (Cons!28111 (h!29320 tuple2!20880) (t!41609 List!28115)) )
))
(declare-datatypes ((ListLongMap!18765 0))(
  ( (ListLongMap!18766 (toList!9398 List!28115)) )
))
(declare-fun lt!567771 () ListLongMap!18765)

(declare-fun contains!7556 (ListLongMap!18765 (_ BitVec 64)) Bool)

(assert (=> b!1255833 (= res!837297 (contains!7556 lt!567771 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48001)

(declare-fun minValueBefore!43 () V!48001)

(declare-fun getCurrentListMap!4561 (array!81589 array!81587 (_ BitVec 32) (_ BitVec 32) V!48001 V!48001 (_ BitVec 32) Int) ListLongMap!18765)

(assert (=> b!1255833 (= lt!567771 (getCurrentListMap!4561 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255834 () Bool)

(declare-fun res!837300 () Bool)

(assert (=> b!1255834 (=> (not res!837300) (not e!713863))))

(declare-datatypes ((List!28116 0))(
  ( (Nil!28113) (Cons!28112 (h!29321 (_ BitVec 64)) (t!41610 List!28116)) )
))
(declare-fun arrayNoDuplicates!0 (array!81589 (_ BitVec 32) List!28116) Bool)

(assert (=> b!1255834 (= res!837300 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28113))))

(declare-fun b!1255835 () Bool)

(declare-fun e!713861 () Bool)

(declare-fun e!713860 () Bool)

(assert (=> b!1255835 (= e!713861 (and e!713860 mapRes!49750))))

(declare-fun condMapEmpty!49750 () Bool)

(declare-fun mapDefault!49750 () ValueCell!15225)

(assert (=> b!1255835 (= condMapEmpty!49750 (= (arr!39348 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15225)) mapDefault!49750)))))

(declare-fun b!1255836 () Bool)

(assert (=> b!1255836 (= e!713860 tp_is_empty!31977)))

(declare-fun res!837299 () Bool)

(assert (=> start!105452 (=> (not res!837299) (not e!713863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105452 (= res!837299 (validMask!0 mask!1466))))

(assert (=> start!105452 e!713863))

(assert (=> start!105452 true))

(assert (=> start!105452 tp!94739))

(assert (=> start!105452 tp_is_empty!31977))

(declare-fun array_inv!29927 (array!81589) Bool)

(assert (=> start!105452 (array_inv!29927 _keys!1118)))

(declare-fun array_inv!29928 (array!81587) Bool)

(assert (=> start!105452 (and (array_inv!29928 _values!914) e!713861)))

(declare-fun b!1255837 () Bool)

(assert (=> b!1255837 (= e!713863 (not e!713857))))

(declare-fun res!837301 () Bool)

(assert (=> b!1255837 (=> res!837301 e!713857)))

(assert (=> b!1255837 (= res!837301 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!567773 () ListLongMap!18765)

(declare-fun lt!567772 () ListLongMap!18765)

(assert (=> b!1255837 (= lt!567773 lt!567772)))

(declare-fun minValueAfter!43 () V!48001)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((Unit!41768 0))(
  ( (Unit!41769) )
))
(declare-fun lt!567774 () Unit!41768)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1074 (array!81589 array!81587 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48001 V!48001 V!48001 V!48001 (_ BitVec 32) Int) Unit!41768)

(assert (=> b!1255837 (= lt!567774 (lemmaNoChangeToArrayThenSameMapNoExtras!1074 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5756 (array!81589 array!81587 (_ BitVec 32) (_ BitVec 32) V!48001 V!48001 (_ BitVec 32) Int) ListLongMap!18765)

(assert (=> b!1255837 (= lt!567772 (getCurrentListMapNoExtraKeys!5756 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255837 (= lt!567773 (getCurrentListMapNoExtraKeys!5756 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255838 () Bool)

(assert (=> b!1255838 (= e!713859 true)))

(declare-fun -!2080 (ListLongMap!18765 (_ BitVec 64)) ListLongMap!18765)

(assert (=> b!1255838 (= (-!2080 lt!567771 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567771)))

(declare-fun lt!567770 () Unit!41768)

(declare-fun removeNotPresentStillSame!113 (ListLongMap!18765 (_ BitVec 64)) Unit!41768)

(assert (=> b!1255838 (= lt!567770 (removeNotPresentStillSame!113 lt!567771 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1255839 () Bool)

(declare-fun res!837298 () Bool)

(assert (=> b!1255839 (=> (not res!837298) (not e!713863))))

(assert (=> b!1255839 (= res!837298 (and (= (size!39885 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39886 _keys!1118) (size!39885 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105452 res!837299) b!1255839))

(assert (= (and b!1255839 res!837298) b!1255831))

(assert (= (and b!1255831 res!837302) b!1255834))

(assert (= (and b!1255834 res!837300) b!1255837))

(assert (= (and b!1255837 (not res!837301)) b!1255833))

(assert (= (and b!1255833 (not res!837297)) b!1255838))

(assert (= (and b!1255835 condMapEmpty!49750) mapIsEmpty!49750))

(assert (= (and b!1255835 (not condMapEmpty!49750)) mapNonEmpty!49750))

(get-info :version)

(assert (= (and mapNonEmpty!49750 ((_ is ValueCellFull!15225) mapValue!49750)) b!1255832))

(assert (= (and b!1255835 ((_ is ValueCellFull!15225) mapDefault!49750)) b!1255836))

(assert (= start!105452 b!1255835))

(declare-fun m!1156567 () Bool)

(assert (=> mapNonEmpty!49750 m!1156567))

(declare-fun m!1156569 () Bool)

(assert (=> b!1255837 m!1156569))

(declare-fun m!1156571 () Bool)

(assert (=> b!1255837 m!1156571))

(declare-fun m!1156573 () Bool)

(assert (=> b!1255837 m!1156573))

(declare-fun m!1156575 () Bool)

(assert (=> b!1255834 m!1156575))

(declare-fun m!1156577 () Bool)

(assert (=> b!1255838 m!1156577))

(declare-fun m!1156579 () Bool)

(assert (=> b!1255838 m!1156579))

(declare-fun m!1156581 () Bool)

(assert (=> b!1255833 m!1156581))

(declare-fun m!1156583 () Bool)

(assert (=> b!1255833 m!1156583))

(declare-fun m!1156585 () Bool)

(assert (=> start!105452 m!1156585))

(declare-fun m!1156587 () Bool)

(assert (=> start!105452 m!1156587))

(declare-fun m!1156589 () Bool)

(assert (=> start!105452 m!1156589))

(declare-fun m!1156591 () Bool)

(assert (=> b!1255831 m!1156591))

(check-sat b_and!44931 (not b!1255833) (not b!1255838) (not b!1255831) (not mapNonEmpty!49750) (not start!105452) (not b!1255837) tp_is_empty!31977 (not b!1255834) (not b_next!27075))
(check-sat b_and!44931 (not b_next!27075))
