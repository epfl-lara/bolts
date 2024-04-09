; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105848 () Bool)

(assert start!105848)

(declare-fun b_free!27375 () Bool)

(declare-fun b_next!27375 () Bool)

(assert (=> start!105848 (= b_free!27375 (not b_next!27375))))

(declare-fun tp!95654 () Bool)

(declare-fun b_and!45281 () Bool)

(assert (=> start!105848 (= tp!95654 b_and!45281)))

(declare-fun b!1260373 () Bool)

(declare-fun e!717240 () Bool)

(declare-fun tp_is_empty!32277 () Bool)

(assert (=> b!1260373 (= e!717240 tp_is_empty!32277)))

(declare-fun res!840051 () Bool)

(declare-fun e!717238 () Bool)

(assert (=> start!105848 (=> (not res!840051) (not e!717238))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105848 (= res!840051 (validMask!0 mask!1466))))

(assert (=> start!105848 e!717238))

(assert (=> start!105848 true))

(assert (=> start!105848 tp!95654))

(assert (=> start!105848 tp_is_empty!32277))

(declare-datatypes ((array!82159 0))(
  ( (array!82160 (arr!39629 (Array (_ BitVec 32) (_ BitVec 64))) (size!40166 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82159)

(declare-fun array_inv!30121 (array!82159) Bool)

(assert (=> start!105848 (array_inv!30121 _keys!1118)))

(declare-datatypes ((V!48401 0))(
  ( (V!48402 (val!16201 Int)) )
))
(declare-datatypes ((ValueCell!15375 0))(
  ( (ValueCellFull!15375 (v!18904 V!48401)) (EmptyCell!15375) )
))
(declare-datatypes ((array!82161 0))(
  ( (array!82162 (arr!39630 (Array (_ BitVec 32) ValueCell!15375)) (size!40167 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82161)

(declare-fun e!717234 () Bool)

(declare-fun array_inv!30122 (array!82161) Bool)

(assert (=> start!105848 (and (array_inv!30122 _values!914) e!717234)))

(declare-fun b!1260374 () Bool)

(declare-fun mapRes!50215 () Bool)

(assert (=> b!1260374 (= e!717234 (and e!717240 mapRes!50215))))

(declare-fun condMapEmpty!50215 () Bool)

(declare-fun mapDefault!50215 () ValueCell!15375)

(assert (=> b!1260374 (= condMapEmpty!50215 (= (arr!39630 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15375)) mapDefault!50215)))))

(declare-fun b!1260375 () Bool)

(declare-fun res!840053 () Bool)

(assert (=> b!1260375 (=> (not res!840053) (not e!717238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82159 (_ BitVec 32)) Bool)

(assert (=> b!1260375 (= res!840053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260376 () Bool)

(declare-fun res!840052 () Bool)

(assert (=> b!1260376 (=> (not res!840052) (not e!717238))))

(declare-datatypes ((List!28329 0))(
  ( (Nil!28326) (Cons!28325 (h!29534 (_ BitVec 64)) (t!41833 List!28329)) )
))
(declare-fun arrayNoDuplicates!0 (array!82159 (_ BitVec 32) List!28329) Bool)

(assert (=> b!1260376 (= res!840052 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28326))))

(declare-fun mapNonEmpty!50215 () Bool)

(declare-fun tp!95655 () Bool)

(declare-fun e!717236 () Bool)

(assert (=> mapNonEmpty!50215 (= mapRes!50215 (and tp!95655 e!717236))))

(declare-fun mapValue!50215 () ValueCell!15375)

(declare-fun mapKey!50215 () (_ BitVec 32))

(declare-fun mapRest!50215 () (Array (_ BitVec 32) ValueCell!15375))

(assert (=> mapNonEmpty!50215 (= (arr!39630 _values!914) (store mapRest!50215 mapKey!50215 mapValue!50215))))

(declare-fun b!1260377 () Bool)

(declare-fun e!717237 () Bool)

(assert (=> b!1260377 (= e!717237 true)))

(declare-datatypes ((tuple2!21108 0))(
  ( (tuple2!21109 (_1!10564 (_ BitVec 64)) (_2!10564 V!48401)) )
))
(declare-datatypes ((List!28330 0))(
  ( (Nil!28327) (Cons!28326 (h!29535 tuple2!21108) (t!41834 List!28330)) )
))
(declare-datatypes ((ListLongMap!18993 0))(
  ( (ListLongMap!18994 (toList!9512 List!28330)) )
))
(declare-fun lt!571091 () ListLongMap!18993)

(declare-fun lt!571093 () ListLongMap!18993)

(declare-fun -!2139 (ListLongMap!18993 (_ BitVec 64)) ListLongMap!18993)

(assert (=> b!1260377 (= lt!571091 (-!2139 lt!571093 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!571094 () ListLongMap!18993)

(declare-fun lt!571089 () ListLongMap!18993)

(assert (=> b!1260377 (= (-!2139 lt!571094 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571089)))

(declare-datatypes ((Unit!41991 0))(
  ( (Unit!41992) )
))
(declare-fun lt!571095 () Unit!41991)

(declare-fun minValueBefore!43 () V!48401)

(declare-fun addThenRemoveForNewKeyIsSame!364 (ListLongMap!18993 (_ BitVec 64) V!48401) Unit!41991)

(assert (=> b!1260377 (= lt!571095 (addThenRemoveForNewKeyIsSame!364 lt!571089 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!717235 () Bool)

(assert (=> b!1260377 e!717235))

(declare-fun res!840054 () Bool)

(assert (=> b!1260377 (=> (not res!840054) (not e!717235))))

(assert (=> b!1260377 (= res!840054 (= lt!571093 lt!571094))))

(declare-fun +!4208 (ListLongMap!18993 tuple2!21108) ListLongMap!18993)

(assert (=> b!1260377 (= lt!571094 (+!4208 lt!571089 (tuple2!21109 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!571096 () ListLongMap!18993)

(declare-fun lt!571098 () tuple2!21108)

(assert (=> b!1260377 (= lt!571089 (+!4208 lt!571096 lt!571098))))

(declare-fun zeroValue!871 () V!48401)

(assert (=> b!1260377 (= lt!571098 (tuple2!21109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48401)

(declare-fun lt!571090 () ListLongMap!18993)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun getCurrentListMap!4643 (array!82159 array!82161 (_ BitVec 32) (_ BitVec 32) V!48401 V!48401 (_ BitVec 32) Int) ListLongMap!18993)

(assert (=> b!1260377 (= lt!571090 (getCurrentListMap!4643 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1260377 (= lt!571093 (getCurrentListMap!4643 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260378 () Bool)

(assert (=> b!1260378 (= e!717238 (not e!717237))))

(declare-fun res!840056 () Bool)

(assert (=> b!1260378 (=> res!840056 e!717237)))

(assert (=> b!1260378 (= res!840056 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!571097 () ListLongMap!18993)

(assert (=> b!1260378 (= lt!571096 lt!571097)))

(declare-fun lt!571092 () Unit!41991)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1172 (array!82159 array!82161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48401 V!48401 V!48401 V!48401 (_ BitVec 32) Int) Unit!41991)

(assert (=> b!1260378 (= lt!571092 (lemmaNoChangeToArrayThenSameMapNoExtras!1172 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5854 (array!82159 array!82161 (_ BitVec 32) (_ BitVec 32) V!48401 V!48401 (_ BitVec 32) Int) ListLongMap!18993)

(assert (=> b!1260378 (= lt!571097 (getCurrentListMapNoExtraKeys!5854 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260378 (= lt!571096 (getCurrentListMapNoExtraKeys!5854 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260379 () Bool)

(assert (=> b!1260379 (= e!717236 tp_is_empty!32277)))

(declare-fun b!1260380 () Bool)

(assert (=> b!1260380 (= e!717235 (= lt!571090 (+!4208 lt!571097 lt!571098)))))

(declare-fun mapIsEmpty!50215 () Bool)

(assert (=> mapIsEmpty!50215 mapRes!50215))

(declare-fun b!1260381 () Bool)

(declare-fun res!840055 () Bool)

(assert (=> b!1260381 (=> (not res!840055) (not e!717238))))

(assert (=> b!1260381 (= res!840055 (and (= (size!40167 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40166 _keys!1118) (size!40167 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105848 res!840051) b!1260381))

(assert (= (and b!1260381 res!840055) b!1260375))

(assert (= (and b!1260375 res!840053) b!1260376))

(assert (= (and b!1260376 res!840052) b!1260378))

(assert (= (and b!1260378 (not res!840056)) b!1260377))

(assert (= (and b!1260377 res!840054) b!1260380))

(assert (= (and b!1260374 condMapEmpty!50215) mapIsEmpty!50215))

(assert (= (and b!1260374 (not condMapEmpty!50215)) mapNonEmpty!50215))

(get-info :version)

(assert (= (and mapNonEmpty!50215 ((_ is ValueCellFull!15375) mapValue!50215)) b!1260379))

(assert (= (and b!1260374 ((_ is ValueCellFull!15375) mapDefault!50215)) b!1260373))

(assert (= start!105848 b!1260374))

(declare-fun m!1161131 () Bool)

(assert (=> b!1260378 m!1161131))

(declare-fun m!1161133 () Bool)

(assert (=> b!1260378 m!1161133))

(declare-fun m!1161135 () Bool)

(assert (=> b!1260378 m!1161135))

(declare-fun m!1161137 () Bool)

(assert (=> b!1260380 m!1161137))

(declare-fun m!1161139 () Bool)

(assert (=> b!1260375 m!1161139))

(declare-fun m!1161141 () Bool)

(assert (=> mapNonEmpty!50215 m!1161141))

(declare-fun m!1161143 () Bool)

(assert (=> start!105848 m!1161143))

(declare-fun m!1161145 () Bool)

(assert (=> start!105848 m!1161145))

(declare-fun m!1161147 () Bool)

(assert (=> start!105848 m!1161147))

(declare-fun m!1161149 () Bool)

(assert (=> b!1260377 m!1161149))

(declare-fun m!1161151 () Bool)

(assert (=> b!1260377 m!1161151))

(declare-fun m!1161153 () Bool)

(assert (=> b!1260377 m!1161153))

(declare-fun m!1161155 () Bool)

(assert (=> b!1260377 m!1161155))

(declare-fun m!1161157 () Bool)

(assert (=> b!1260377 m!1161157))

(declare-fun m!1161159 () Bool)

(assert (=> b!1260377 m!1161159))

(declare-fun m!1161161 () Bool)

(assert (=> b!1260377 m!1161161))

(declare-fun m!1161163 () Bool)

(assert (=> b!1260376 m!1161163))

(check-sat b_and!45281 (not b!1260375) (not b_next!27375) (not b!1260380) (not start!105848) (not b!1260377) (not mapNonEmpty!50215) (not b!1260376) (not b!1260378) tp_is_empty!32277)
(check-sat b_and!45281 (not b_next!27375))
