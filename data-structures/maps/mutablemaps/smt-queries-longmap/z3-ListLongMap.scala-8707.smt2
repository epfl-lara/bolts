; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105730 () Bool)

(assert start!105730)

(declare-fun b_free!27279 () Bool)

(declare-fun b_next!27279 () Bool)

(assert (=> start!105730 (= b_free!27279 (not b_next!27279))))

(declare-fun tp!95363 () Bool)

(declare-fun b_and!45173 () Bool)

(assert (=> start!105730 (= tp!95363 b_and!45173)))

(declare-fun res!839106 () Bool)

(declare-fun e!716111 () Bool)

(assert (=> start!105730 (=> (not res!839106) (not e!716111))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105730 (= res!839106 (validMask!0 mask!1466))))

(assert (=> start!105730 e!716111))

(assert (=> start!105730 true))

(assert (=> start!105730 tp!95363))

(declare-fun tp_is_empty!32181 () Bool)

(assert (=> start!105730 tp_is_empty!32181))

(declare-datatypes ((array!81979 0))(
  ( (array!81980 (arr!39540 (Array (_ BitVec 32) (_ BitVec 64))) (size!40077 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81979)

(declare-fun array_inv!30061 (array!81979) Bool)

(assert (=> start!105730 (array_inv!30061 _keys!1118)))

(declare-datatypes ((V!48273 0))(
  ( (V!48274 (val!16153 Int)) )
))
(declare-datatypes ((ValueCell!15327 0))(
  ( (ValueCellFull!15327 (v!18855 V!48273)) (EmptyCell!15327) )
))
(declare-datatypes ((array!81981 0))(
  ( (array!81982 (arr!39541 (Array (_ BitVec 32) ValueCell!15327)) (size!40078 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81981)

(declare-fun e!716109 () Bool)

(declare-fun array_inv!30062 (array!81981) Bool)

(assert (=> start!105730 (and (array_inv!30062 _values!914) e!716109)))

(declare-fun b!1258889 () Bool)

(declare-fun res!839101 () Bool)

(assert (=> b!1258889 (=> (not res!839101) (not e!716111))))

(declare-datatypes ((List!28264 0))(
  ( (Nil!28261) (Cons!28260 (h!29469 (_ BitVec 64)) (t!41766 List!28264)) )
))
(declare-fun arrayNoDuplicates!0 (array!81979 (_ BitVec 32) List!28264) Bool)

(assert (=> b!1258889 (= res!839101 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28261))))

(declare-fun b!1258890 () Bool)

(declare-fun e!716107 () Bool)

(assert (=> b!1258890 (= e!716107 tp_is_empty!32181)))

(declare-fun b!1258891 () Bool)

(declare-fun e!716108 () Bool)

(assert (=> b!1258891 (= e!716108 tp_is_empty!32181)))

(declare-fun b!1258892 () Bool)

(declare-fun res!839102 () Bool)

(assert (=> b!1258892 (=> (not res!839102) (not e!716111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81979 (_ BitVec 32)) Bool)

(assert (=> b!1258892 (= res!839102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258893 () Bool)

(declare-fun mapRes!50068 () Bool)

(assert (=> b!1258893 (= e!716109 (and e!716108 mapRes!50068))))

(declare-fun condMapEmpty!50068 () Bool)

(declare-fun mapDefault!50068 () ValueCell!15327)

(assert (=> b!1258893 (= condMapEmpty!50068 (= (arr!39541 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15327)) mapDefault!50068)))))

(declare-fun mapIsEmpty!50068 () Bool)

(assert (=> mapIsEmpty!50068 mapRes!50068))

(declare-datatypes ((tuple2!21034 0))(
  ( (tuple2!21035 (_1!10527 (_ BitVec 64)) (_2!10527 V!48273)) )
))
(declare-datatypes ((List!28265 0))(
  ( (Nil!28262) (Cons!28261 (h!29470 tuple2!21034) (t!41767 List!28265)) )
))
(declare-datatypes ((ListLongMap!18919 0))(
  ( (ListLongMap!18920 (toList!9475 List!28265)) )
))
(declare-fun lt!569510 () ListLongMap!18919)

(declare-fun lt!569505 () tuple2!21034)

(declare-fun lt!569506 () ListLongMap!18919)

(declare-fun e!716106 () Bool)

(declare-fun b!1258894 () Bool)

(declare-fun +!4174 (ListLongMap!18919 tuple2!21034) ListLongMap!18919)

(assert (=> b!1258894 (= e!716106 (= lt!569506 (+!4174 lt!569510 lt!569505)))))

(declare-fun mapNonEmpty!50068 () Bool)

(declare-fun tp!95364 () Bool)

(assert (=> mapNonEmpty!50068 (= mapRes!50068 (and tp!95364 e!716107))))

(declare-fun mapValue!50068 () ValueCell!15327)

(declare-fun mapRest!50068 () (Array (_ BitVec 32) ValueCell!15327))

(declare-fun mapKey!50068 () (_ BitVec 32))

(assert (=> mapNonEmpty!50068 (= (arr!39541 _values!914) (store mapRest!50068 mapKey!50068 mapValue!50068))))

(declare-fun b!1258895 () Bool)

(declare-fun e!716105 () Bool)

(assert (=> b!1258895 (= e!716111 (not e!716105))))

(declare-fun res!839105 () Bool)

(assert (=> b!1258895 (=> res!839105 e!716105)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1258895 (= res!839105 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569509 () ListLongMap!18919)

(assert (=> b!1258895 (= lt!569509 lt!569510)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48273)

(declare-datatypes ((Unit!41919 0))(
  ( (Unit!41920) )
))
(declare-fun lt!569508 () Unit!41919)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48273)

(declare-fun minValueBefore!43 () V!48273)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1142 (array!81979 array!81981 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48273 V!48273 V!48273 V!48273 (_ BitVec 32) Int) Unit!41919)

(assert (=> b!1258895 (= lt!569508 (lemmaNoChangeToArrayThenSameMapNoExtras!1142 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5824 (array!81979 array!81981 (_ BitVec 32) (_ BitVec 32) V!48273 V!48273 (_ BitVec 32) Int) ListLongMap!18919)

(assert (=> b!1258895 (= lt!569510 (getCurrentListMapNoExtraKeys!5824 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258895 (= lt!569509 (getCurrentListMapNoExtraKeys!5824 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258896 () Bool)

(declare-fun res!839103 () Bool)

(assert (=> b!1258896 (=> (not res!839103) (not e!716111))))

(assert (=> b!1258896 (= res!839103 (and (= (size!40078 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40077 _keys!1118) (size!40078 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258897 () Bool)

(assert (=> b!1258897 (= e!716105 true)))

(declare-fun lt!569507 () ListLongMap!18919)

(declare-fun lt!569504 () ListLongMap!18919)

(declare-fun -!2109 (ListLongMap!18919 (_ BitVec 64)) ListLongMap!18919)

(assert (=> b!1258897 (= lt!569507 (-!2109 lt!569504 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569511 () ListLongMap!18919)

(declare-fun lt!569512 () ListLongMap!18919)

(assert (=> b!1258897 (= (-!2109 lt!569511 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569512)))

(declare-fun lt!569503 () Unit!41919)

(declare-fun addThenRemoveForNewKeyIsSame!334 (ListLongMap!18919 (_ BitVec 64) V!48273) Unit!41919)

(assert (=> b!1258897 (= lt!569503 (addThenRemoveForNewKeyIsSame!334 lt!569512 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1258897 e!716106))

(declare-fun res!839104 () Bool)

(assert (=> b!1258897 (=> (not res!839104) (not e!716106))))

(assert (=> b!1258897 (= res!839104 (= lt!569504 lt!569511))))

(assert (=> b!1258897 (= lt!569511 (+!4174 lt!569512 (tuple2!21035 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1258897 (= lt!569512 (+!4174 lt!569509 lt!569505))))

(assert (=> b!1258897 (= lt!569505 (tuple2!21035 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4613 (array!81979 array!81981 (_ BitVec 32) (_ BitVec 32) V!48273 V!48273 (_ BitVec 32) Int) ListLongMap!18919)

(assert (=> b!1258897 (= lt!569506 (getCurrentListMap!4613 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258897 (= lt!569504 (getCurrentListMap!4613 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105730 res!839106) b!1258896))

(assert (= (and b!1258896 res!839103) b!1258892))

(assert (= (and b!1258892 res!839102) b!1258889))

(assert (= (and b!1258889 res!839101) b!1258895))

(assert (= (and b!1258895 (not res!839105)) b!1258897))

(assert (= (and b!1258897 res!839104) b!1258894))

(assert (= (and b!1258893 condMapEmpty!50068) mapIsEmpty!50068))

(assert (= (and b!1258893 (not condMapEmpty!50068)) mapNonEmpty!50068))

(get-info :version)

(assert (= (and mapNonEmpty!50068 ((_ is ValueCellFull!15327) mapValue!50068)) b!1258890))

(assert (= (and b!1258893 ((_ is ValueCellFull!15327) mapDefault!50068)) b!1258891))

(assert (= start!105730 b!1258893))

(declare-fun m!1159291 () Bool)

(assert (=> start!105730 m!1159291))

(declare-fun m!1159293 () Bool)

(assert (=> start!105730 m!1159293))

(declare-fun m!1159295 () Bool)

(assert (=> start!105730 m!1159295))

(declare-fun m!1159297 () Bool)

(assert (=> b!1258894 m!1159297))

(declare-fun m!1159299 () Bool)

(assert (=> mapNonEmpty!50068 m!1159299))

(declare-fun m!1159301 () Bool)

(assert (=> b!1258892 m!1159301))

(declare-fun m!1159303 () Bool)

(assert (=> b!1258897 m!1159303))

(declare-fun m!1159305 () Bool)

(assert (=> b!1258897 m!1159305))

(declare-fun m!1159307 () Bool)

(assert (=> b!1258897 m!1159307))

(declare-fun m!1159309 () Bool)

(assert (=> b!1258897 m!1159309))

(declare-fun m!1159311 () Bool)

(assert (=> b!1258897 m!1159311))

(declare-fun m!1159313 () Bool)

(assert (=> b!1258897 m!1159313))

(declare-fun m!1159315 () Bool)

(assert (=> b!1258897 m!1159315))

(declare-fun m!1159317 () Bool)

(assert (=> b!1258889 m!1159317))

(declare-fun m!1159319 () Bool)

(assert (=> b!1258895 m!1159319))

(declare-fun m!1159321 () Bool)

(assert (=> b!1258895 m!1159321))

(declare-fun m!1159323 () Bool)

(assert (=> b!1258895 m!1159323))

(check-sat (not b!1258897) (not mapNonEmpty!50068) (not start!105730) (not b_next!27279) tp_is_empty!32181 (not b!1258892) (not b!1258889) (not b!1258895) b_and!45173 (not b!1258894))
(check-sat b_and!45173 (not b_next!27279))
