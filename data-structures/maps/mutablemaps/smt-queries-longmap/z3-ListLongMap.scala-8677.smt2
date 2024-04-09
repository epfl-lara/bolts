; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105476 () Bool)

(assert start!105476)

(declare-fun b_free!27099 () Bool)

(declare-fun b_next!27099 () Bool)

(assert (=> start!105476 (= b_free!27099 (not b_next!27099))))

(declare-fun tp!94812 () Bool)

(declare-fun b_and!44955 () Bool)

(assert (=> start!105476 (= tp!94812 b_and!44955)))

(declare-fun mapNonEmpty!49786 () Bool)

(declare-fun mapRes!49786 () Bool)

(declare-fun tp!94811 () Bool)

(declare-fun e!714112 () Bool)

(assert (=> mapNonEmpty!49786 (= mapRes!49786 (and tp!94811 e!714112))))

(declare-datatypes ((V!48033 0))(
  ( (V!48034 (val!16063 Int)) )
))
(declare-datatypes ((ValueCell!15237 0))(
  ( (ValueCellFull!15237 (v!18763 V!48033)) (EmptyCell!15237) )
))
(declare-fun mapValue!49786 () ValueCell!15237)

(declare-fun mapRest!49786 () (Array (_ BitVec 32) ValueCell!15237))

(declare-fun mapKey!49786 () (_ BitVec 32))

(declare-datatypes ((array!81635 0))(
  ( (array!81636 (arr!39372 (Array (_ BitVec 32) ValueCell!15237)) (size!39909 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81635)

(assert (=> mapNonEmpty!49786 (= (arr!39372 _values!914) (store mapRest!49786 mapKey!49786 mapValue!49786))))

(declare-fun b!1256155 () Bool)

(declare-fun e!714109 () Bool)

(declare-fun tp_is_empty!32001 () Bool)

(assert (=> b!1256155 (= e!714109 tp_is_empty!32001)))

(declare-fun mapIsEmpty!49786 () Bool)

(assert (=> mapIsEmpty!49786 mapRes!49786))

(declare-fun res!837515 () Bool)

(declare-fun e!714111 () Bool)

(assert (=> start!105476 (=> (not res!837515) (not e!714111))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105476 (= res!837515 (validMask!0 mask!1466))))

(assert (=> start!105476 e!714111))

(assert (=> start!105476 true))

(assert (=> start!105476 tp!94812))

(assert (=> start!105476 tp_is_empty!32001))

(declare-datatypes ((array!81637 0))(
  ( (array!81638 (arr!39373 (Array (_ BitVec 32) (_ BitVec 64))) (size!39910 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81637)

(declare-fun array_inv!29939 (array!81637) Bool)

(assert (=> start!105476 (array_inv!29939 _keys!1118)))

(declare-fun e!714114 () Bool)

(declare-fun array_inv!29940 (array!81635) Bool)

(assert (=> start!105476 (and (array_inv!29940 _values!914) e!714114)))

(declare-fun b!1256156 () Bool)

(declare-fun e!714110 () Bool)

(assert (=> b!1256156 (= e!714111 (not e!714110))))

(declare-fun res!837517 () Bool)

(assert (=> b!1256156 (=> res!837517 e!714110)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256156 (= res!837517 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20900 0))(
  ( (tuple2!20901 (_1!10460 (_ BitVec 64)) (_2!10460 V!48033)) )
))
(declare-datatypes ((List!28135 0))(
  ( (Nil!28132) (Cons!28131 (h!29340 tuple2!20900) (t!41629 List!28135)) )
))
(declare-datatypes ((ListLongMap!18785 0))(
  ( (ListLongMap!18786 (toList!9408 List!28135)) )
))
(declare-fun lt!567952 () ListLongMap!18785)

(declare-fun lt!567954 () ListLongMap!18785)

(assert (=> b!1256156 (= lt!567952 lt!567954)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41788 0))(
  ( (Unit!41789) )
))
(declare-fun lt!567951 () Unit!41788)

(declare-fun minValueAfter!43 () V!48033)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48033)

(declare-fun minValueBefore!43 () V!48033)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1082 (array!81637 array!81635 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48033 V!48033 V!48033 V!48033 (_ BitVec 32) Int) Unit!41788)

(assert (=> b!1256156 (= lt!567951 (lemmaNoChangeToArrayThenSameMapNoExtras!1082 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5764 (array!81637 array!81635 (_ BitVec 32) (_ BitVec 32) V!48033 V!48033 (_ BitVec 32) Int) ListLongMap!18785)

(assert (=> b!1256156 (= lt!567954 (getCurrentListMapNoExtraKeys!5764 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256156 (= lt!567952 (getCurrentListMapNoExtraKeys!5764 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256157 () Bool)

(declare-fun e!714113 () Bool)

(assert (=> b!1256157 (= e!714110 e!714113)))

(declare-fun res!837514 () Bool)

(assert (=> b!1256157 (=> res!837514 e!714113)))

(declare-fun lt!567950 () ListLongMap!18785)

(declare-fun contains!7564 (ListLongMap!18785 (_ BitVec 64)) Bool)

(assert (=> b!1256157 (= res!837514 (contains!7564 lt!567950 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4569 (array!81637 array!81635 (_ BitVec 32) (_ BitVec 32) V!48033 V!48033 (_ BitVec 32) Int) ListLongMap!18785)

(assert (=> b!1256157 (= lt!567950 (getCurrentListMap!4569 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256158 () Bool)

(declare-fun res!837518 () Bool)

(assert (=> b!1256158 (=> (not res!837518) (not e!714111))))

(declare-datatypes ((List!28136 0))(
  ( (Nil!28133) (Cons!28132 (h!29341 (_ BitVec 64)) (t!41630 List!28136)) )
))
(declare-fun arrayNoDuplicates!0 (array!81637 (_ BitVec 32) List!28136) Bool)

(assert (=> b!1256158 (= res!837518 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28133))))

(declare-fun b!1256159 () Bool)

(declare-fun res!837513 () Bool)

(assert (=> b!1256159 (=> (not res!837513) (not e!714111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81637 (_ BitVec 32)) Bool)

(assert (=> b!1256159 (= res!837513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256160 () Bool)

(declare-fun res!837516 () Bool)

(assert (=> b!1256160 (=> (not res!837516) (not e!714111))))

(assert (=> b!1256160 (= res!837516 (and (= (size!39909 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39910 _keys!1118) (size!39909 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256161 () Bool)

(assert (=> b!1256161 (= e!714113 true)))

(declare-fun -!2088 (ListLongMap!18785 (_ BitVec 64)) ListLongMap!18785)

(assert (=> b!1256161 (= (-!2088 lt!567950 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567950)))

(declare-fun lt!567953 () Unit!41788)

(declare-fun removeNotPresentStillSame!121 (ListLongMap!18785 (_ BitVec 64)) Unit!41788)

(assert (=> b!1256161 (= lt!567953 (removeNotPresentStillSame!121 lt!567950 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256162 () Bool)

(assert (=> b!1256162 (= e!714112 tp_is_empty!32001)))

(declare-fun b!1256163 () Bool)

(assert (=> b!1256163 (= e!714114 (and e!714109 mapRes!49786))))

(declare-fun condMapEmpty!49786 () Bool)

(declare-fun mapDefault!49786 () ValueCell!15237)

(assert (=> b!1256163 (= condMapEmpty!49786 (= (arr!39372 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15237)) mapDefault!49786)))))

(assert (= (and start!105476 res!837515) b!1256160))

(assert (= (and b!1256160 res!837516) b!1256159))

(assert (= (and b!1256159 res!837513) b!1256158))

(assert (= (and b!1256158 res!837518) b!1256156))

(assert (= (and b!1256156 (not res!837517)) b!1256157))

(assert (= (and b!1256157 (not res!837514)) b!1256161))

(assert (= (and b!1256163 condMapEmpty!49786) mapIsEmpty!49786))

(assert (= (and b!1256163 (not condMapEmpty!49786)) mapNonEmpty!49786))

(get-info :version)

(assert (= (and mapNonEmpty!49786 ((_ is ValueCellFull!15237) mapValue!49786)) b!1256162))

(assert (= (and b!1256163 ((_ is ValueCellFull!15237) mapDefault!49786)) b!1256155))

(assert (= start!105476 b!1256163))

(declare-fun m!1156879 () Bool)

(assert (=> b!1256157 m!1156879))

(declare-fun m!1156881 () Bool)

(assert (=> b!1256157 m!1156881))

(declare-fun m!1156883 () Bool)

(assert (=> b!1256161 m!1156883))

(declare-fun m!1156885 () Bool)

(assert (=> b!1256161 m!1156885))

(declare-fun m!1156887 () Bool)

(assert (=> b!1256159 m!1156887))

(declare-fun m!1156889 () Bool)

(assert (=> b!1256158 m!1156889))

(declare-fun m!1156891 () Bool)

(assert (=> mapNonEmpty!49786 m!1156891))

(declare-fun m!1156893 () Bool)

(assert (=> b!1256156 m!1156893))

(declare-fun m!1156895 () Bool)

(assert (=> b!1256156 m!1156895))

(declare-fun m!1156897 () Bool)

(assert (=> b!1256156 m!1156897))

(declare-fun m!1156899 () Bool)

(assert (=> start!105476 m!1156899))

(declare-fun m!1156901 () Bool)

(assert (=> start!105476 m!1156901))

(declare-fun m!1156903 () Bool)

(assert (=> start!105476 m!1156903))

(check-sat (not b!1256156) (not b!1256161) (not b!1256158) b_and!44955 (not b!1256157) (not mapNonEmpty!49786) (not b!1256159) tp_is_empty!32001 (not start!105476) (not b_next!27099))
(check-sat b_and!44955 (not b_next!27099))
