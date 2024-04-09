; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105482 () Bool)

(assert start!105482)

(declare-fun b_free!27105 () Bool)

(declare-fun b_next!27105 () Bool)

(assert (=> start!105482 (= b_free!27105 (not b_next!27105))))

(declare-fun tp!94830 () Bool)

(declare-fun b_and!44961 () Bool)

(assert (=> start!105482 (= tp!94830 b_and!44961)))

(declare-fun b!1256236 () Bool)

(declare-fun res!837567 () Bool)

(declare-fun e!714177 () Bool)

(assert (=> b!1256236 (=> (not res!837567) (not e!714177))))

(declare-datatypes ((array!81647 0))(
  ( (array!81648 (arr!39378 (Array (_ BitVec 32) (_ BitVec 64))) (size!39915 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81647)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81647 (_ BitVec 32)) Bool)

(assert (=> b!1256236 (= res!837567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256237 () Bool)

(declare-fun e!714172 () Bool)

(declare-fun e!714178 () Bool)

(declare-fun mapRes!49795 () Bool)

(assert (=> b!1256237 (= e!714172 (and e!714178 mapRes!49795))))

(declare-fun condMapEmpty!49795 () Bool)

(declare-datatypes ((V!48041 0))(
  ( (V!48042 (val!16066 Int)) )
))
(declare-datatypes ((ValueCell!15240 0))(
  ( (ValueCellFull!15240 (v!18766 V!48041)) (EmptyCell!15240) )
))
(declare-datatypes ((array!81649 0))(
  ( (array!81650 (arr!39379 (Array (_ BitVec 32) ValueCell!15240)) (size!39916 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81649)

(declare-fun mapDefault!49795 () ValueCell!15240)

(assert (=> b!1256237 (= condMapEmpty!49795 (= (arr!39379 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15240)) mapDefault!49795)))))

(declare-fun mapNonEmpty!49795 () Bool)

(declare-fun tp!94829 () Bool)

(declare-fun e!714176 () Bool)

(assert (=> mapNonEmpty!49795 (= mapRes!49795 (and tp!94829 e!714176))))

(declare-fun mapRest!49795 () (Array (_ BitVec 32) ValueCell!15240))

(declare-fun mapValue!49795 () ValueCell!15240)

(declare-fun mapKey!49795 () (_ BitVec 32))

(assert (=> mapNonEmpty!49795 (= (arr!39379 _values!914) (store mapRest!49795 mapKey!49795 mapValue!49795))))

(declare-fun b!1256238 () Bool)

(declare-fun res!837568 () Bool)

(assert (=> b!1256238 (=> (not res!837568) (not e!714177))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1256238 (= res!837568 (and (= (size!39916 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39915 _keys!1118) (size!39916 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49795 () Bool)

(assert (=> mapIsEmpty!49795 mapRes!49795))

(declare-fun b!1256239 () Bool)

(declare-fun tp_is_empty!32007 () Bool)

(assert (=> b!1256239 (= e!714178 tp_is_empty!32007)))

(declare-fun res!837569 () Bool)

(assert (=> start!105482 (=> (not res!837569) (not e!714177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105482 (= res!837569 (validMask!0 mask!1466))))

(assert (=> start!105482 e!714177))

(assert (=> start!105482 true))

(assert (=> start!105482 tp!94830))

(assert (=> start!105482 tp_is_empty!32007))

(declare-fun array_inv!29945 (array!81647) Bool)

(assert (=> start!105482 (array_inv!29945 _keys!1118)))

(declare-fun array_inv!29946 (array!81649) Bool)

(assert (=> start!105482 (and (array_inv!29946 _values!914) e!714172)))

(declare-fun b!1256240 () Bool)

(declare-fun res!837572 () Bool)

(assert (=> b!1256240 (=> (not res!837572) (not e!714177))))

(declare-datatypes ((List!28139 0))(
  ( (Nil!28136) (Cons!28135 (h!29344 (_ BitVec 64)) (t!41633 List!28139)) )
))
(declare-fun arrayNoDuplicates!0 (array!81647 (_ BitVec 32) List!28139) Bool)

(assert (=> b!1256240 (= res!837572 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28136))))

(declare-fun b!1256241 () Bool)

(assert (=> b!1256241 (= e!714176 tp_is_empty!32007)))

(declare-fun b!1256242 () Bool)

(declare-fun e!714175 () Bool)

(assert (=> b!1256242 (= e!714177 (not e!714175))))

(declare-fun res!837570 () Bool)

(assert (=> b!1256242 (=> res!837570 e!714175)))

(assert (=> b!1256242 (= res!837570 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20904 0))(
  ( (tuple2!20905 (_1!10462 (_ BitVec 64)) (_2!10462 V!48041)) )
))
(declare-datatypes ((List!28140 0))(
  ( (Nil!28137) (Cons!28136 (h!29345 tuple2!20904) (t!41634 List!28140)) )
))
(declare-datatypes ((ListLongMap!18789 0))(
  ( (ListLongMap!18790 (toList!9410 List!28140)) )
))
(declare-fun lt!567995 () ListLongMap!18789)

(declare-fun lt!567998 () ListLongMap!18789)

(assert (=> b!1256242 (= lt!567995 lt!567998)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41790 0))(
  ( (Unit!41791) )
))
(declare-fun lt!567996 () Unit!41790)

(declare-fun minValueAfter!43 () V!48041)

(declare-fun zeroValue!871 () V!48041)

(declare-fun minValueBefore!43 () V!48041)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1083 (array!81647 array!81649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48041 V!48041 V!48041 V!48041 (_ BitVec 32) Int) Unit!41790)

(assert (=> b!1256242 (= lt!567996 (lemmaNoChangeToArrayThenSameMapNoExtras!1083 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5765 (array!81647 array!81649 (_ BitVec 32) (_ BitVec 32) V!48041 V!48041 (_ BitVec 32) Int) ListLongMap!18789)

(assert (=> b!1256242 (= lt!567998 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256242 (= lt!567995 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256243 () Bool)

(declare-fun e!714174 () Bool)

(assert (=> b!1256243 (= e!714174 (bvsle #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun lt!567997 () ListLongMap!18789)

(declare-fun -!2089 (ListLongMap!18789 (_ BitVec 64)) ListLongMap!18789)

(assert (=> b!1256243 (= (-!2089 lt!567997 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567997)))

(declare-fun lt!567999 () Unit!41790)

(declare-fun removeNotPresentStillSame!122 (ListLongMap!18789 (_ BitVec 64)) Unit!41790)

(assert (=> b!1256243 (= lt!567999 (removeNotPresentStillSame!122 lt!567997 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256244 () Bool)

(assert (=> b!1256244 (= e!714175 e!714174)))

(declare-fun res!837571 () Bool)

(assert (=> b!1256244 (=> res!837571 e!714174)))

(declare-fun contains!7566 (ListLongMap!18789 (_ BitVec 64)) Bool)

(assert (=> b!1256244 (= res!837571 (contains!7566 lt!567997 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4571 (array!81647 array!81649 (_ BitVec 32) (_ BitVec 32) V!48041 V!48041 (_ BitVec 32) Int) ListLongMap!18789)

(assert (=> b!1256244 (= lt!567997 (getCurrentListMap!4571 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105482 res!837569) b!1256238))

(assert (= (and b!1256238 res!837568) b!1256236))

(assert (= (and b!1256236 res!837567) b!1256240))

(assert (= (and b!1256240 res!837572) b!1256242))

(assert (= (and b!1256242 (not res!837570)) b!1256244))

(assert (= (and b!1256244 (not res!837571)) b!1256243))

(assert (= (and b!1256237 condMapEmpty!49795) mapIsEmpty!49795))

(assert (= (and b!1256237 (not condMapEmpty!49795)) mapNonEmpty!49795))

(get-info :version)

(assert (= (and mapNonEmpty!49795 ((_ is ValueCellFull!15240) mapValue!49795)) b!1256241))

(assert (= (and b!1256237 ((_ is ValueCellFull!15240) mapDefault!49795)) b!1256239))

(assert (= start!105482 b!1256237))

(declare-fun m!1156957 () Bool)

(assert (=> b!1256236 m!1156957))

(declare-fun m!1156959 () Bool)

(assert (=> b!1256242 m!1156959))

(declare-fun m!1156961 () Bool)

(assert (=> b!1256242 m!1156961))

(declare-fun m!1156963 () Bool)

(assert (=> b!1256242 m!1156963))

(declare-fun m!1156965 () Bool)

(assert (=> start!105482 m!1156965))

(declare-fun m!1156967 () Bool)

(assert (=> start!105482 m!1156967))

(declare-fun m!1156969 () Bool)

(assert (=> start!105482 m!1156969))

(declare-fun m!1156971 () Bool)

(assert (=> b!1256243 m!1156971))

(declare-fun m!1156973 () Bool)

(assert (=> b!1256243 m!1156973))

(declare-fun m!1156975 () Bool)

(assert (=> b!1256244 m!1156975))

(declare-fun m!1156977 () Bool)

(assert (=> b!1256244 m!1156977))

(declare-fun m!1156979 () Bool)

(assert (=> b!1256240 m!1156979))

(declare-fun m!1156981 () Bool)

(assert (=> mapNonEmpty!49795 m!1156981))

(check-sat (not b!1256240) (not b_next!27105) (not b!1256243) tp_is_empty!32007 (not start!105482) (not b!1256236) b_and!44961 (not b!1256242) (not b!1256244) (not mapNonEmpty!49795))
(check-sat b_and!44961 (not b_next!27105))
(get-model)

(declare-fun d!138103 () Bool)

(assert (=> d!138103 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105482 d!138103))

(declare-fun d!138105 () Bool)

(assert (=> d!138105 (= (array_inv!29945 _keys!1118) (bvsge (size!39915 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105482 d!138105))

(declare-fun d!138107 () Bool)

(assert (=> d!138107 (= (array_inv!29946 _values!914) (bvsge (size!39916 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105482 d!138107))

(declare-fun d!138109 () Bool)

(declare-fun lt!568017 () ListLongMap!18789)

(assert (=> d!138109 (not (contains!7566 lt!568017 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!141 (List!28140 (_ BitVec 64)) List!28140)

(assert (=> d!138109 (= lt!568017 (ListLongMap!18790 (removeStrictlySorted!141 (toList!9410 lt!567997) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138109 (= (-!2089 lt!567997 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568017)))

(declare-fun bs!35512 () Bool)

(assert (= bs!35512 d!138109))

(declare-fun m!1157009 () Bool)

(assert (=> bs!35512 m!1157009))

(declare-fun m!1157011 () Bool)

(assert (=> bs!35512 m!1157011))

(assert (=> b!1256243 d!138109))

(declare-fun d!138111 () Bool)

(assert (=> d!138111 (= (-!2089 lt!567997 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567997)))

(declare-fun lt!568020 () Unit!41790)

(declare-fun choose!1867 (ListLongMap!18789 (_ BitVec 64)) Unit!41790)

(assert (=> d!138111 (= lt!568020 (choose!1867 lt!567997 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138111 (not (contains!7566 lt!567997 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138111 (= (removeNotPresentStillSame!122 lt!567997 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568020)))

(declare-fun bs!35513 () Bool)

(assert (= bs!35513 d!138111))

(assert (=> bs!35513 m!1156971))

(declare-fun m!1157013 () Bool)

(assert (=> bs!35513 m!1157013))

(assert (=> bs!35513 m!1156975))

(assert (=> b!1256243 d!138111))

(declare-fun d!138113 () Bool)

(assert (=> d!138113 (= (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568023 () Unit!41790)

(declare-fun choose!1868 (array!81647 array!81649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48041 V!48041 V!48041 V!48041 (_ BitVec 32) Int) Unit!41790)

(assert (=> d!138113 (= lt!568023 (choose!1868 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138113 (validMask!0 mask!1466)))

(assert (=> d!138113 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1083 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568023)))

(declare-fun bs!35514 () Bool)

(assert (= bs!35514 d!138113))

(assert (=> bs!35514 m!1156963))

(assert (=> bs!35514 m!1156961))

(declare-fun m!1157015 () Bool)

(assert (=> bs!35514 m!1157015))

(assert (=> bs!35514 m!1156965))

(assert (=> b!1256242 d!138113))

(declare-fun d!138115 () Bool)

(declare-fun e!714219 () Bool)

(assert (=> d!138115 e!714219))

(declare-fun res!837601 () Bool)

(assert (=> d!138115 (=> (not res!837601) (not e!714219))))

(declare-fun lt!568044 () ListLongMap!18789)

(assert (=> d!138115 (= res!837601 (not (contains!7566 lt!568044 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!714216 () ListLongMap!18789)

(assert (=> d!138115 (= lt!568044 e!714216)))

(declare-fun c!122363 () Bool)

(assert (=> d!138115 (= c!122363 (bvsge #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(assert (=> d!138115 (validMask!0 mask!1466)))

(assert (=> d!138115 (= (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568044)))

(declare-fun call!61776 () ListLongMap!18789)

(declare-fun bm!61773 () Bool)

(assert (=> bm!61773 (= call!61776 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1256296 () Bool)

(declare-fun res!837600 () Bool)

(assert (=> b!1256296 (=> (not res!837600) (not e!714219))))

(assert (=> b!1256296 (= res!837600 (not (contains!7566 lt!568044 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1256297 () Bool)

(declare-fun lt!568039 () Unit!41790)

(declare-fun lt!568041 () Unit!41790)

(assert (=> b!1256297 (= lt!568039 lt!568041)))

(declare-fun lt!568038 () (_ BitVec 64))

(declare-fun lt!568042 () V!48041)

(declare-fun lt!568043 () (_ BitVec 64))

(declare-fun lt!568040 () ListLongMap!18789)

(declare-fun +!4166 (ListLongMap!18789 tuple2!20904) ListLongMap!18789)

(assert (=> b!1256297 (not (contains!7566 (+!4166 lt!568040 (tuple2!20905 lt!568038 lt!568042)) lt!568043))))

(declare-fun addStillNotContains!318 (ListLongMap!18789 (_ BitVec 64) V!48041 (_ BitVec 64)) Unit!41790)

(assert (=> b!1256297 (= lt!568041 (addStillNotContains!318 lt!568040 lt!568038 lt!568042 lt!568043))))

(assert (=> b!1256297 (= lt!568043 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!20181 (ValueCell!15240 V!48041) V!48041)

(declare-fun dynLambda!3468 (Int (_ BitVec 64)) V!48041)

(assert (=> b!1256297 (= lt!568042 (get!20181 (select (arr!39379 _values!914) #b00000000000000000000000000000000) (dynLambda!3468 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1256297 (= lt!568038 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1256297 (= lt!568040 call!61776)))

(declare-fun e!714218 () ListLongMap!18789)

(assert (=> b!1256297 (= e!714218 (+!4166 call!61776 (tuple2!20905 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000) (get!20181 (select (arr!39379 _values!914) #b00000000000000000000000000000000) (dynLambda!3468 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1256298 () Bool)

(declare-fun e!714214 () Bool)

(declare-fun e!714215 () Bool)

(assert (=> b!1256298 (= e!714214 e!714215)))

(assert (=> b!1256298 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun res!837602 () Bool)

(assert (=> b!1256298 (= res!837602 (contains!7566 lt!568044 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1256298 (=> (not res!837602) (not e!714215))))

(declare-fun b!1256299 () Bool)

(assert (=> b!1256299 (= e!714218 call!61776)))

(declare-fun b!1256300 () Bool)

(declare-fun e!714217 () Bool)

(assert (=> b!1256300 (= e!714217 (= lt!568044 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1256301 () Bool)

(assert (=> b!1256301 (= e!714216 (ListLongMap!18790 Nil!28137))))

(declare-fun b!1256302 () Bool)

(assert (=> b!1256302 (= e!714214 e!714217)))

(declare-fun c!122362 () Bool)

(assert (=> b!1256302 (= c!122362 (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun b!1256303 () Bool)

(assert (=> b!1256303 (= e!714216 e!714218)))

(declare-fun c!122360 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1256303 (= c!122360 (validKeyInArray!0 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1256304 () Bool)

(declare-fun isEmpty!1033 (ListLongMap!18789) Bool)

(assert (=> b!1256304 (= e!714217 (isEmpty!1033 lt!568044))))

(declare-fun b!1256305 () Bool)

(assert (=> b!1256305 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(assert (=> b!1256305 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39916 _values!914)))))

(declare-fun apply!1023 (ListLongMap!18789 (_ BitVec 64)) V!48041)

(assert (=> b!1256305 (= e!714215 (= (apply!1023 lt!568044 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)) (get!20181 (select (arr!39379 _values!914) #b00000000000000000000000000000000) (dynLambda!3468 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1256306 () Bool)

(assert (=> b!1256306 (= e!714219 e!714214)))

(declare-fun c!122361 () Bool)

(declare-fun e!714220 () Bool)

(assert (=> b!1256306 (= c!122361 e!714220)))

(declare-fun res!837599 () Bool)

(assert (=> b!1256306 (=> (not res!837599) (not e!714220))))

(assert (=> b!1256306 (= res!837599 (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun b!1256307 () Bool)

(assert (=> b!1256307 (= e!714220 (validKeyInArray!0 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1256307 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!138115 c!122363) b!1256301))

(assert (= (and d!138115 (not c!122363)) b!1256303))

(assert (= (and b!1256303 c!122360) b!1256297))

(assert (= (and b!1256303 (not c!122360)) b!1256299))

(assert (= (or b!1256297 b!1256299) bm!61773))

(assert (= (and d!138115 res!837601) b!1256296))

(assert (= (and b!1256296 res!837600) b!1256306))

(assert (= (and b!1256306 res!837599) b!1256307))

(assert (= (and b!1256306 c!122361) b!1256298))

(assert (= (and b!1256306 (not c!122361)) b!1256302))

(assert (= (and b!1256298 res!837602) b!1256305))

(assert (= (and b!1256302 c!122362) b!1256300))

(assert (= (and b!1256302 (not c!122362)) b!1256304))

(declare-fun b_lambda!22677 () Bool)

(assert (=> (not b_lambda!22677) (not b!1256297)))

(declare-fun t!41637 () Bool)

(declare-fun tb!11311 () Bool)

(assert (=> (and start!105482 (= defaultEntry!922 defaultEntry!922) t!41637) tb!11311))

(declare-fun result!23325 () Bool)

(assert (=> tb!11311 (= result!23325 tp_is_empty!32007)))

(assert (=> b!1256297 t!41637))

(declare-fun b_and!44965 () Bool)

(assert (= b_and!44961 (and (=> t!41637 result!23325) b_and!44965)))

(declare-fun b_lambda!22679 () Bool)

(assert (=> (not b_lambda!22679) (not b!1256305)))

(assert (=> b!1256305 t!41637))

(declare-fun b_and!44967 () Bool)

(assert (= b_and!44965 (and (=> t!41637 result!23325) b_and!44967)))

(declare-fun m!1157017 () Bool)

(assert (=> b!1256307 m!1157017))

(assert (=> b!1256307 m!1157017))

(declare-fun m!1157019 () Bool)

(assert (=> b!1256307 m!1157019))

(assert (=> b!1256303 m!1157017))

(assert (=> b!1256303 m!1157017))

(assert (=> b!1256303 m!1157019))

(declare-fun m!1157021 () Bool)

(assert (=> d!138115 m!1157021))

(assert (=> d!138115 m!1156965))

(declare-fun m!1157023 () Bool)

(assert (=> b!1256297 m!1157023))

(declare-fun m!1157025 () Bool)

(assert (=> b!1256297 m!1157025))

(declare-fun m!1157027 () Bool)

(assert (=> b!1256297 m!1157027))

(declare-fun m!1157029 () Bool)

(assert (=> b!1256297 m!1157029))

(assert (=> b!1256297 m!1157025))

(declare-fun m!1157031 () Bool)

(assert (=> b!1256297 m!1157031))

(assert (=> b!1256297 m!1157017))

(declare-fun m!1157033 () Bool)

(assert (=> b!1256297 m!1157033))

(assert (=> b!1256297 m!1157029))

(assert (=> b!1256297 m!1157031))

(declare-fun m!1157035 () Bool)

(assert (=> b!1256297 m!1157035))

(declare-fun m!1157037 () Bool)

(assert (=> b!1256296 m!1157037))

(assert (=> b!1256305 m!1157017))

(declare-fun m!1157039 () Bool)

(assert (=> b!1256305 m!1157039))

(assert (=> b!1256305 m!1157029))

(assert (=> b!1256305 m!1157031))

(assert (=> b!1256305 m!1157017))

(assert (=> b!1256305 m!1157029))

(assert (=> b!1256305 m!1157031))

(assert (=> b!1256305 m!1157035))

(declare-fun m!1157041 () Bool)

(assert (=> b!1256300 m!1157041))

(assert (=> bm!61773 m!1157041))

(declare-fun m!1157043 () Bool)

(assert (=> b!1256304 m!1157043))

(assert (=> b!1256298 m!1157017))

(assert (=> b!1256298 m!1157017))

(declare-fun m!1157045 () Bool)

(assert (=> b!1256298 m!1157045))

(assert (=> b!1256242 d!138115))

(declare-fun d!138117 () Bool)

(declare-fun e!714226 () Bool)

(assert (=> d!138117 e!714226))

(declare-fun res!837605 () Bool)

(assert (=> d!138117 (=> (not res!837605) (not e!714226))))

(declare-fun lt!568051 () ListLongMap!18789)

(assert (=> d!138117 (= res!837605 (not (contains!7566 lt!568051 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!714223 () ListLongMap!18789)

(assert (=> d!138117 (= lt!568051 e!714223)))

(declare-fun c!122367 () Bool)

(assert (=> d!138117 (= c!122367 (bvsge #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(assert (=> d!138117 (validMask!0 mask!1466)))

(assert (=> d!138117 (= (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568051)))

(declare-fun bm!61774 () Bool)

(declare-fun call!61777 () ListLongMap!18789)

(assert (=> bm!61774 (= call!61777 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1256310 () Bool)

(declare-fun res!837604 () Bool)

(assert (=> b!1256310 (=> (not res!837604) (not e!714226))))

(assert (=> b!1256310 (= res!837604 (not (contains!7566 lt!568051 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1256311 () Bool)

(declare-fun lt!568046 () Unit!41790)

(declare-fun lt!568048 () Unit!41790)

(assert (=> b!1256311 (= lt!568046 lt!568048)))

(declare-fun lt!568047 () ListLongMap!18789)

(declare-fun lt!568049 () V!48041)

(declare-fun lt!568045 () (_ BitVec 64))

(declare-fun lt!568050 () (_ BitVec 64))

(assert (=> b!1256311 (not (contains!7566 (+!4166 lt!568047 (tuple2!20905 lt!568045 lt!568049)) lt!568050))))

(assert (=> b!1256311 (= lt!568048 (addStillNotContains!318 lt!568047 lt!568045 lt!568049 lt!568050))))

(assert (=> b!1256311 (= lt!568050 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1256311 (= lt!568049 (get!20181 (select (arr!39379 _values!914) #b00000000000000000000000000000000) (dynLambda!3468 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1256311 (= lt!568045 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1256311 (= lt!568047 call!61777)))

(declare-fun e!714225 () ListLongMap!18789)

(assert (=> b!1256311 (= e!714225 (+!4166 call!61777 (tuple2!20905 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000) (get!20181 (select (arr!39379 _values!914) #b00000000000000000000000000000000) (dynLambda!3468 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1256312 () Bool)

(declare-fun e!714221 () Bool)

(declare-fun e!714222 () Bool)

(assert (=> b!1256312 (= e!714221 e!714222)))

(assert (=> b!1256312 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun res!837606 () Bool)

(assert (=> b!1256312 (= res!837606 (contains!7566 lt!568051 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1256312 (=> (not res!837606) (not e!714222))))

(declare-fun b!1256313 () Bool)

(assert (=> b!1256313 (= e!714225 call!61777)))

(declare-fun e!714224 () Bool)

(declare-fun b!1256314 () Bool)

(assert (=> b!1256314 (= e!714224 (= lt!568051 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1256315 () Bool)

(assert (=> b!1256315 (= e!714223 (ListLongMap!18790 Nil!28137))))

(declare-fun b!1256316 () Bool)

(assert (=> b!1256316 (= e!714221 e!714224)))

(declare-fun c!122366 () Bool)

(assert (=> b!1256316 (= c!122366 (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun b!1256317 () Bool)

(assert (=> b!1256317 (= e!714223 e!714225)))

(declare-fun c!122364 () Bool)

(assert (=> b!1256317 (= c!122364 (validKeyInArray!0 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1256318 () Bool)

(assert (=> b!1256318 (= e!714224 (isEmpty!1033 lt!568051))))

(declare-fun b!1256319 () Bool)

(assert (=> b!1256319 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(assert (=> b!1256319 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39916 _values!914)))))

(assert (=> b!1256319 (= e!714222 (= (apply!1023 lt!568051 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)) (get!20181 (select (arr!39379 _values!914) #b00000000000000000000000000000000) (dynLambda!3468 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1256320 () Bool)

(assert (=> b!1256320 (= e!714226 e!714221)))

(declare-fun c!122365 () Bool)

(declare-fun e!714227 () Bool)

(assert (=> b!1256320 (= c!122365 e!714227)))

(declare-fun res!837603 () Bool)

(assert (=> b!1256320 (=> (not res!837603) (not e!714227))))

(assert (=> b!1256320 (= res!837603 (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun b!1256321 () Bool)

(assert (=> b!1256321 (= e!714227 (validKeyInArray!0 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1256321 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!138117 c!122367) b!1256315))

(assert (= (and d!138117 (not c!122367)) b!1256317))

(assert (= (and b!1256317 c!122364) b!1256311))

(assert (= (and b!1256317 (not c!122364)) b!1256313))

(assert (= (or b!1256311 b!1256313) bm!61774))

(assert (= (and d!138117 res!837605) b!1256310))

(assert (= (and b!1256310 res!837604) b!1256320))

(assert (= (and b!1256320 res!837603) b!1256321))

(assert (= (and b!1256320 c!122365) b!1256312))

(assert (= (and b!1256320 (not c!122365)) b!1256316))

(assert (= (and b!1256312 res!837606) b!1256319))

(assert (= (and b!1256316 c!122366) b!1256314))

(assert (= (and b!1256316 (not c!122366)) b!1256318))

(declare-fun b_lambda!22681 () Bool)

(assert (=> (not b_lambda!22681) (not b!1256311)))

(assert (=> b!1256311 t!41637))

(declare-fun b_and!44969 () Bool)

(assert (= b_and!44967 (and (=> t!41637 result!23325) b_and!44969)))

(declare-fun b_lambda!22683 () Bool)

(assert (=> (not b_lambda!22683) (not b!1256319)))

(assert (=> b!1256319 t!41637))

(declare-fun b_and!44971 () Bool)

(assert (= b_and!44969 (and (=> t!41637 result!23325) b_and!44971)))

(assert (=> b!1256321 m!1157017))

(assert (=> b!1256321 m!1157017))

(assert (=> b!1256321 m!1157019))

(assert (=> b!1256317 m!1157017))

(assert (=> b!1256317 m!1157017))

(assert (=> b!1256317 m!1157019))

(declare-fun m!1157047 () Bool)

(assert (=> d!138117 m!1157047))

(assert (=> d!138117 m!1156965))

(declare-fun m!1157049 () Bool)

(assert (=> b!1256311 m!1157049))

(declare-fun m!1157051 () Bool)

(assert (=> b!1256311 m!1157051))

(declare-fun m!1157053 () Bool)

(assert (=> b!1256311 m!1157053))

(assert (=> b!1256311 m!1157029))

(assert (=> b!1256311 m!1157051))

(assert (=> b!1256311 m!1157031))

(assert (=> b!1256311 m!1157017))

(declare-fun m!1157055 () Bool)

(assert (=> b!1256311 m!1157055))

(assert (=> b!1256311 m!1157029))

(assert (=> b!1256311 m!1157031))

(assert (=> b!1256311 m!1157035))

(declare-fun m!1157057 () Bool)

(assert (=> b!1256310 m!1157057))

(assert (=> b!1256319 m!1157017))

(declare-fun m!1157059 () Bool)

(assert (=> b!1256319 m!1157059))

(assert (=> b!1256319 m!1157029))

(assert (=> b!1256319 m!1157031))

(assert (=> b!1256319 m!1157017))

(assert (=> b!1256319 m!1157029))

(assert (=> b!1256319 m!1157031))

(assert (=> b!1256319 m!1157035))

(declare-fun m!1157061 () Bool)

(assert (=> b!1256314 m!1157061))

(assert (=> bm!61774 m!1157061))

(declare-fun m!1157063 () Bool)

(assert (=> b!1256318 m!1157063))

(assert (=> b!1256312 m!1157017))

(assert (=> b!1256312 m!1157017))

(declare-fun m!1157065 () Bool)

(assert (=> b!1256312 m!1157065))

(assert (=> b!1256242 d!138117))

(declare-fun d!138119 () Bool)

(declare-fun e!714233 () Bool)

(assert (=> d!138119 e!714233))

(declare-fun res!837609 () Bool)

(assert (=> d!138119 (=> res!837609 e!714233)))

(declare-fun lt!568063 () Bool)

(assert (=> d!138119 (= res!837609 (not lt!568063))))

(declare-fun lt!568062 () Bool)

(assert (=> d!138119 (= lt!568063 lt!568062)))

(declare-fun lt!568061 () Unit!41790)

(declare-fun e!714232 () Unit!41790)

(assert (=> d!138119 (= lt!568061 e!714232)))

(declare-fun c!122370 () Bool)

(assert (=> d!138119 (= c!122370 lt!568062)))

(declare-fun containsKey!619 (List!28140 (_ BitVec 64)) Bool)

(assert (=> d!138119 (= lt!568062 (containsKey!619 (toList!9410 lt!567997) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138119 (= (contains!7566 lt!567997 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568063)))

(declare-fun b!1256328 () Bool)

(declare-fun lt!568060 () Unit!41790)

(assert (=> b!1256328 (= e!714232 lt!568060)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!429 (List!28140 (_ BitVec 64)) Unit!41790)

(assert (=> b!1256328 (= lt!568060 (lemmaContainsKeyImpliesGetValueByKeyDefined!429 (toList!9410 lt!567997) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!710 0))(
  ( (Some!709 (v!18768 V!48041)) (None!708) )
))
(declare-fun isDefined!469 (Option!710) Bool)

(declare-fun getValueByKey!659 (List!28140 (_ BitVec 64)) Option!710)

(assert (=> b!1256328 (isDefined!469 (getValueByKey!659 (toList!9410 lt!567997) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256329 () Bool)

(declare-fun Unit!41794 () Unit!41790)

(assert (=> b!1256329 (= e!714232 Unit!41794)))

(declare-fun b!1256330 () Bool)

(assert (=> b!1256330 (= e!714233 (isDefined!469 (getValueByKey!659 (toList!9410 lt!567997) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138119 c!122370) b!1256328))

(assert (= (and d!138119 (not c!122370)) b!1256329))

(assert (= (and d!138119 (not res!837609)) b!1256330))

(declare-fun m!1157067 () Bool)

(assert (=> d!138119 m!1157067))

(declare-fun m!1157069 () Bool)

(assert (=> b!1256328 m!1157069))

(declare-fun m!1157071 () Bool)

(assert (=> b!1256328 m!1157071))

(assert (=> b!1256328 m!1157071))

(declare-fun m!1157073 () Bool)

(assert (=> b!1256328 m!1157073))

(assert (=> b!1256330 m!1157071))

(assert (=> b!1256330 m!1157071))

(assert (=> b!1256330 m!1157073))

(assert (=> b!1256244 d!138119))

(declare-fun b!1256373 () Bool)

(declare-fun e!714266 () ListLongMap!18789)

(declare-fun call!61794 () ListLongMap!18789)

(assert (=> b!1256373 (= e!714266 call!61794)))

(declare-fun b!1256374 () Bool)

(declare-fun e!714265 () Unit!41790)

(declare-fun Unit!41795 () Unit!41790)

(assert (=> b!1256374 (= e!714265 Unit!41795)))

(declare-fun b!1256375 () Bool)

(declare-fun e!714263 () Bool)

(declare-fun e!714270 () Bool)

(assert (=> b!1256375 (= e!714263 e!714270)))

(declare-fun res!837630 () Bool)

(assert (=> b!1256375 (=> (not res!837630) (not e!714270))))

(declare-fun lt!568109 () ListLongMap!18789)

(assert (=> b!1256375 (= res!837630 (contains!7566 lt!568109 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1256375 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun b!1256376 () Bool)

(declare-fun e!714269 () Bool)

(assert (=> b!1256376 (= e!714269 (= (apply!1023 lt!568109 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1256377 () Bool)

(assert (=> b!1256377 (= e!714270 (= (apply!1023 lt!568109 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)) (get!20181 (select (arr!39379 _values!914) #b00000000000000000000000000000000) (dynLambda!3468 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1256377 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39916 _values!914)))))

(assert (=> b!1256377 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun d!138121 () Bool)

(declare-fun e!714260 () Bool)

(assert (=> d!138121 e!714260))

(declare-fun res!837628 () Bool)

(assert (=> d!138121 (=> (not res!837628) (not e!714260))))

(assert (=> d!138121 (= res!837628 (or (bvsge #b00000000000000000000000000000000 (size!39915 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))))

(declare-fun lt!568122 () ListLongMap!18789)

(assert (=> d!138121 (= lt!568109 lt!568122)))

(declare-fun lt!568117 () Unit!41790)

(assert (=> d!138121 (= lt!568117 e!714265)))

(declare-fun c!122388 () Bool)

(declare-fun e!714262 () Bool)

(assert (=> d!138121 (= c!122388 e!714262)))

(declare-fun res!837635 () Bool)

(assert (=> d!138121 (=> (not res!837635) (not e!714262))))

(assert (=> d!138121 (= res!837635 (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun e!714272 () ListLongMap!18789)

(assert (=> d!138121 (= lt!568122 e!714272)))

(declare-fun c!122387 () Bool)

(assert (=> d!138121 (= c!122387 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138121 (validMask!0 mask!1466)))

(assert (=> d!138121 (= (getCurrentListMap!4571 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568109)))

(declare-fun b!1256378 () Bool)

(declare-fun call!61792 () ListLongMap!18789)

(assert (=> b!1256378 (= e!714266 call!61792)))

(declare-fun b!1256379 () Bool)

(declare-fun e!714267 () Bool)

(assert (=> b!1256379 (= e!714267 (validKeyInArray!0 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1256380 () Bool)

(declare-fun lt!568112 () Unit!41790)

(assert (=> b!1256380 (= e!714265 lt!568112)))

(declare-fun lt!568127 () ListLongMap!18789)

(assert (=> b!1256380 (= lt!568127 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568120 () (_ BitVec 64))

(assert (=> b!1256380 (= lt!568120 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!568111 () (_ BitVec 64))

(assert (=> b!1256380 (= lt!568111 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!568108 () Unit!41790)

(declare-fun addStillContains!1096 (ListLongMap!18789 (_ BitVec 64) V!48041 (_ BitVec 64)) Unit!41790)

(assert (=> b!1256380 (= lt!568108 (addStillContains!1096 lt!568127 lt!568120 zeroValue!871 lt!568111))))

(assert (=> b!1256380 (contains!7566 (+!4166 lt!568127 (tuple2!20905 lt!568120 zeroValue!871)) lt!568111)))

(declare-fun lt!568124 () Unit!41790)

(assert (=> b!1256380 (= lt!568124 lt!568108)))

(declare-fun lt!568116 () ListLongMap!18789)

(assert (=> b!1256380 (= lt!568116 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568121 () (_ BitVec 64))

(assert (=> b!1256380 (= lt!568121 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!568123 () (_ BitVec 64))

(assert (=> b!1256380 (= lt!568123 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!568115 () Unit!41790)

(declare-fun addApplyDifferent!530 (ListLongMap!18789 (_ BitVec 64) V!48041 (_ BitVec 64)) Unit!41790)

(assert (=> b!1256380 (= lt!568115 (addApplyDifferent!530 lt!568116 lt!568121 minValueBefore!43 lt!568123))))

(assert (=> b!1256380 (= (apply!1023 (+!4166 lt!568116 (tuple2!20905 lt!568121 minValueBefore!43)) lt!568123) (apply!1023 lt!568116 lt!568123))))

(declare-fun lt!568114 () Unit!41790)

(assert (=> b!1256380 (= lt!568114 lt!568115)))

(declare-fun lt!568126 () ListLongMap!18789)

(assert (=> b!1256380 (= lt!568126 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568118 () (_ BitVec 64))

(assert (=> b!1256380 (= lt!568118 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!568128 () (_ BitVec 64))

(assert (=> b!1256380 (= lt!568128 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!568110 () Unit!41790)

(assert (=> b!1256380 (= lt!568110 (addApplyDifferent!530 lt!568126 lt!568118 zeroValue!871 lt!568128))))

(assert (=> b!1256380 (= (apply!1023 (+!4166 lt!568126 (tuple2!20905 lt!568118 zeroValue!871)) lt!568128) (apply!1023 lt!568126 lt!568128))))

(declare-fun lt!568119 () Unit!41790)

(assert (=> b!1256380 (= lt!568119 lt!568110)))

(declare-fun lt!568125 () ListLongMap!18789)

(assert (=> b!1256380 (= lt!568125 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568129 () (_ BitVec 64))

(assert (=> b!1256380 (= lt!568129 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!568113 () (_ BitVec 64))

(assert (=> b!1256380 (= lt!568113 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1256380 (= lt!568112 (addApplyDifferent!530 lt!568125 lt!568129 minValueBefore!43 lt!568113))))

(assert (=> b!1256380 (= (apply!1023 (+!4166 lt!568125 (tuple2!20905 lt!568129 minValueBefore!43)) lt!568113) (apply!1023 lt!568125 lt!568113))))

(declare-fun b!1256381 () Bool)

(declare-fun e!714271 () Bool)

(assert (=> b!1256381 (= e!714260 e!714271)))

(declare-fun c!122383 () Bool)

(assert (=> b!1256381 (= c!122383 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256382 () Bool)

(declare-fun call!61795 () ListLongMap!18789)

(assert (=> b!1256382 (= e!714272 (+!4166 call!61795 (tuple2!20905 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun b!1256383 () Bool)

(declare-fun res!837632 () Bool)

(assert (=> b!1256383 (=> (not res!837632) (not e!714260))))

(declare-fun e!714268 () Bool)

(assert (=> b!1256383 (= res!837632 e!714268)))

(declare-fun c!122386 () Bool)

(assert (=> b!1256383 (= c!122386 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1256384 () Bool)

(declare-fun e!714261 () Bool)

(assert (=> b!1256384 (= e!714261 (= (apply!1023 lt!568109 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1256385 () Bool)

(declare-fun e!714264 () ListLongMap!18789)

(assert (=> b!1256385 (= e!714272 e!714264)))

(declare-fun c!122385 () Bool)

(assert (=> b!1256385 (= c!122385 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!61789 () Bool)

(assert (=> bm!61789 (= call!61792 call!61795)))

(declare-fun bm!61790 () Bool)

(declare-fun call!61796 () ListLongMap!18789)

(declare-fun call!61793 () ListLongMap!18789)

(assert (=> bm!61790 (= call!61795 (+!4166 (ite c!122387 call!61796 (ite c!122385 call!61793 call!61794)) (ite (or c!122387 c!122385) (tuple2!20905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!20905 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1256386 () Bool)

(declare-fun call!61798 () Bool)

(assert (=> b!1256386 (= e!714271 (not call!61798))))

(declare-fun bm!61791 () Bool)

(declare-fun call!61797 () Bool)

(assert (=> bm!61791 (= call!61797 (contains!7566 lt!568109 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!61792 () Bool)

(assert (=> bm!61792 (= call!61794 call!61793)))

(declare-fun b!1256387 () Bool)

(assert (=> b!1256387 (= e!714268 e!714269)))

(declare-fun res!837629 () Bool)

(assert (=> b!1256387 (= res!837629 call!61797)))

(assert (=> b!1256387 (=> (not res!837629) (not e!714269))))

(declare-fun b!1256388 () Bool)

(declare-fun res!837631 () Bool)

(assert (=> b!1256388 (=> (not res!837631) (not e!714260))))

(assert (=> b!1256388 (= res!837631 e!714263)))

(declare-fun res!837633 () Bool)

(assert (=> b!1256388 (=> res!837633 e!714263)))

(assert (=> b!1256388 (= res!837633 (not e!714267))))

(declare-fun res!837636 () Bool)

(assert (=> b!1256388 (=> (not res!837636) (not e!714267))))

(assert (=> b!1256388 (= res!837636 (bvslt #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(declare-fun bm!61793 () Bool)

(assert (=> bm!61793 (= call!61796 (getCurrentListMapNoExtraKeys!5765 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256389 () Bool)

(assert (=> b!1256389 (= e!714262 (validKeyInArray!0 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61794 () Bool)

(assert (=> bm!61794 (= call!61793 call!61796)))

(declare-fun bm!61795 () Bool)

(assert (=> bm!61795 (= call!61798 (contains!7566 lt!568109 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256390 () Bool)

(declare-fun c!122384 () Bool)

(assert (=> b!1256390 (= c!122384 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1256390 (= e!714264 e!714266)))

(declare-fun b!1256391 () Bool)

(assert (=> b!1256391 (= e!714271 e!714261)))

(declare-fun res!837634 () Bool)

(assert (=> b!1256391 (= res!837634 call!61798)))

(assert (=> b!1256391 (=> (not res!837634) (not e!714261))))

(declare-fun b!1256392 () Bool)

(assert (=> b!1256392 (= e!714264 call!61792)))

(declare-fun b!1256393 () Bool)

(assert (=> b!1256393 (= e!714268 (not call!61797))))

(assert (= (and d!138121 c!122387) b!1256382))

(assert (= (and d!138121 (not c!122387)) b!1256385))

(assert (= (and b!1256385 c!122385) b!1256392))

(assert (= (and b!1256385 (not c!122385)) b!1256390))

(assert (= (and b!1256390 c!122384) b!1256378))

(assert (= (and b!1256390 (not c!122384)) b!1256373))

(assert (= (or b!1256378 b!1256373) bm!61792))

(assert (= (or b!1256392 bm!61792) bm!61794))

(assert (= (or b!1256392 b!1256378) bm!61789))

(assert (= (or b!1256382 bm!61794) bm!61793))

(assert (= (or b!1256382 bm!61789) bm!61790))

(assert (= (and d!138121 res!837635) b!1256389))

(assert (= (and d!138121 c!122388) b!1256380))

(assert (= (and d!138121 (not c!122388)) b!1256374))

(assert (= (and d!138121 res!837628) b!1256388))

(assert (= (and b!1256388 res!837636) b!1256379))

(assert (= (and b!1256388 (not res!837633)) b!1256375))

(assert (= (and b!1256375 res!837630) b!1256377))

(assert (= (and b!1256388 res!837631) b!1256383))

(assert (= (and b!1256383 c!122386) b!1256387))

(assert (= (and b!1256383 (not c!122386)) b!1256393))

(assert (= (and b!1256387 res!837629) b!1256376))

(assert (= (or b!1256387 b!1256393) bm!61791))

(assert (= (and b!1256383 res!837632) b!1256381))

(assert (= (and b!1256381 c!122383) b!1256391))

(assert (= (and b!1256381 (not c!122383)) b!1256386))

(assert (= (and b!1256391 res!837634) b!1256384))

(assert (= (or b!1256391 b!1256386) bm!61795))

(declare-fun b_lambda!22685 () Bool)

(assert (=> (not b_lambda!22685) (not b!1256377)))

(assert (=> b!1256377 t!41637))

(declare-fun b_and!44973 () Bool)

(assert (= b_and!44971 (and (=> t!41637 result!23325) b_and!44973)))

(assert (=> d!138121 m!1156965))

(assert (=> b!1256389 m!1157017))

(assert (=> b!1256389 m!1157017))

(assert (=> b!1256389 m!1157019))

(declare-fun m!1157075 () Bool)

(assert (=> b!1256376 m!1157075))

(assert (=> b!1256377 m!1157017))

(declare-fun m!1157077 () Bool)

(assert (=> b!1256377 m!1157077))

(assert (=> b!1256377 m!1157031))

(assert (=> b!1256377 m!1157017))

(assert (=> b!1256377 m!1157029))

(assert (=> b!1256377 m!1157031))

(assert (=> b!1256377 m!1157035))

(assert (=> b!1256377 m!1157029))

(assert (=> b!1256379 m!1157017))

(assert (=> b!1256379 m!1157017))

(assert (=> b!1256379 m!1157019))

(declare-fun m!1157079 () Bool)

(assert (=> b!1256384 m!1157079))

(declare-fun m!1157081 () Bool)

(assert (=> b!1256382 m!1157081))

(assert (=> b!1256375 m!1157017))

(assert (=> b!1256375 m!1157017))

(declare-fun m!1157083 () Bool)

(assert (=> b!1256375 m!1157083))

(declare-fun m!1157085 () Bool)

(assert (=> bm!61791 m!1157085))

(declare-fun m!1157087 () Bool)

(assert (=> b!1256380 m!1157087))

(declare-fun m!1157089 () Bool)

(assert (=> b!1256380 m!1157089))

(declare-fun m!1157091 () Bool)

(assert (=> b!1256380 m!1157091))

(declare-fun m!1157093 () Bool)

(assert (=> b!1256380 m!1157093))

(declare-fun m!1157095 () Bool)

(assert (=> b!1256380 m!1157095))

(assert (=> b!1256380 m!1157017))

(assert (=> b!1256380 m!1156963))

(declare-fun m!1157097 () Bool)

(assert (=> b!1256380 m!1157097))

(assert (=> b!1256380 m!1157093))

(assert (=> b!1256380 m!1157089))

(declare-fun m!1157099 () Bool)

(assert (=> b!1256380 m!1157099))

(declare-fun m!1157101 () Bool)

(assert (=> b!1256380 m!1157101))

(declare-fun m!1157103 () Bool)

(assert (=> b!1256380 m!1157103))

(declare-fun m!1157105 () Bool)

(assert (=> b!1256380 m!1157105))

(declare-fun m!1157107 () Bool)

(assert (=> b!1256380 m!1157107))

(assert (=> b!1256380 m!1157103))

(declare-fun m!1157109 () Bool)

(assert (=> b!1256380 m!1157109))

(assert (=> b!1256380 m!1157107))

(declare-fun m!1157111 () Bool)

(assert (=> b!1256380 m!1157111))

(declare-fun m!1157113 () Bool)

(assert (=> b!1256380 m!1157113))

(declare-fun m!1157115 () Bool)

(assert (=> b!1256380 m!1157115))

(declare-fun m!1157117 () Bool)

(assert (=> bm!61795 m!1157117))

(assert (=> bm!61793 m!1156963))

(declare-fun m!1157119 () Bool)

(assert (=> bm!61790 m!1157119))

(assert (=> b!1256244 d!138121))

(declare-fun bm!61798 () Bool)

(declare-fun call!61801 () Bool)

(declare-fun c!122391 () Bool)

(assert (=> bm!61798 (= call!61801 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122391 (Cons!28135 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000) Nil!28136) Nil!28136)))))

(declare-fun d!138123 () Bool)

(declare-fun res!837644 () Bool)

(declare-fun e!714281 () Bool)

(assert (=> d!138123 (=> res!837644 e!714281)))

(assert (=> d!138123 (= res!837644 (bvsge #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(assert (=> d!138123 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28136) e!714281)))

(declare-fun b!1256404 () Bool)

(declare-fun e!714283 () Bool)

(assert (=> b!1256404 (= e!714283 call!61801)))

(declare-fun b!1256405 () Bool)

(declare-fun e!714284 () Bool)

(assert (=> b!1256405 (= e!714281 e!714284)))

(declare-fun res!837643 () Bool)

(assert (=> b!1256405 (=> (not res!837643) (not e!714284))))

(declare-fun e!714282 () Bool)

(assert (=> b!1256405 (= res!837643 (not e!714282))))

(declare-fun res!837645 () Bool)

(assert (=> b!1256405 (=> (not res!837645) (not e!714282))))

(assert (=> b!1256405 (= res!837645 (validKeyInArray!0 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1256406 () Bool)

(assert (=> b!1256406 (= e!714283 call!61801)))

(declare-fun b!1256407 () Bool)

(declare-fun contains!7568 (List!28139 (_ BitVec 64)) Bool)

(assert (=> b!1256407 (= e!714282 (contains!7568 Nil!28136 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1256408 () Bool)

(assert (=> b!1256408 (= e!714284 e!714283)))

(assert (=> b!1256408 (= c!122391 (validKeyInArray!0 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138123 (not res!837644)) b!1256405))

(assert (= (and b!1256405 res!837645) b!1256407))

(assert (= (and b!1256405 res!837643) b!1256408))

(assert (= (and b!1256408 c!122391) b!1256404))

(assert (= (and b!1256408 (not c!122391)) b!1256406))

(assert (= (or b!1256404 b!1256406) bm!61798))

(assert (=> bm!61798 m!1157017))

(declare-fun m!1157121 () Bool)

(assert (=> bm!61798 m!1157121))

(assert (=> b!1256405 m!1157017))

(assert (=> b!1256405 m!1157017))

(assert (=> b!1256405 m!1157019))

(assert (=> b!1256407 m!1157017))

(assert (=> b!1256407 m!1157017))

(declare-fun m!1157123 () Bool)

(assert (=> b!1256407 m!1157123))

(assert (=> b!1256408 m!1157017))

(assert (=> b!1256408 m!1157017))

(assert (=> b!1256408 m!1157019))

(assert (=> b!1256240 d!138123))

(declare-fun b!1256417 () Bool)

(declare-fun e!714291 () Bool)

(declare-fun e!714293 () Bool)

(assert (=> b!1256417 (= e!714291 e!714293)))

(declare-fun lt!568138 () (_ BitVec 64))

(assert (=> b!1256417 (= lt!568138 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!568137 () Unit!41790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!81647 (_ BitVec 64) (_ BitVec 32)) Unit!41790)

(assert (=> b!1256417 (= lt!568137 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!568138 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!81647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1256417 (arrayContainsKey!0 _keys!1118 lt!568138 #b00000000000000000000000000000000)))

(declare-fun lt!568136 () Unit!41790)

(assert (=> b!1256417 (= lt!568136 lt!568137)))

(declare-fun res!837650 () Bool)

(declare-datatypes ((SeekEntryResult!9963 0))(
  ( (MissingZero!9963 (index!42222 (_ BitVec 32))) (Found!9963 (index!42223 (_ BitVec 32))) (Intermediate!9963 (undefined!10775 Bool) (index!42224 (_ BitVec 32)) (x!110625 (_ BitVec 32))) (Undefined!9963) (MissingVacant!9963 (index!42225 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!81647 (_ BitVec 32)) SeekEntryResult!9963)

(assert (=> b!1256417 (= res!837650 (= (seekEntryOrOpen!0 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9963 #b00000000000000000000000000000000)))))

(assert (=> b!1256417 (=> (not res!837650) (not e!714293))))

(declare-fun bm!61801 () Bool)

(declare-fun call!61804 () Bool)

(assert (=> bm!61801 (= call!61804 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1256418 () Bool)

(assert (=> b!1256418 (= e!714291 call!61804)))

(declare-fun b!1256420 () Bool)

(assert (=> b!1256420 (= e!714293 call!61804)))

(declare-fun d!138125 () Bool)

(declare-fun res!837651 () Bool)

(declare-fun e!714292 () Bool)

(assert (=> d!138125 (=> res!837651 e!714292)))

(assert (=> d!138125 (= res!837651 (bvsge #b00000000000000000000000000000000 (size!39915 _keys!1118)))))

(assert (=> d!138125 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!714292)))

(declare-fun b!1256419 () Bool)

(assert (=> b!1256419 (= e!714292 e!714291)))

(declare-fun c!122394 () Bool)

(assert (=> b!1256419 (= c!122394 (validKeyInArray!0 (select (arr!39378 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138125 (not res!837651)) b!1256419))

(assert (= (and b!1256419 c!122394) b!1256417))

(assert (= (and b!1256419 (not c!122394)) b!1256418))

(assert (= (and b!1256417 res!837650) b!1256420))

(assert (= (or b!1256420 b!1256418) bm!61801))

(assert (=> b!1256417 m!1157017))

(declare-fun m!1157125 () Bool)

(assert (=> b!1256417 m!1157125))

(declare-fun m!1157127 () Bool)

(assert (=> b!1256417 m!1157127))

(assert (=> b!1256417 m!1157017))

(declare-fun m!1157129 () Bool)

(assert (=> b!1256417 m!1157129))

(declare-fun m!1157131 () Bool)

(assert (=> bm!61801 m!1157131))

(assert (=> b!1256419 m!1157017))

(assert (=> b!1256419 m!1157017))

(assert (=> b!1256419 m!1157019))

(assert (=> b!1256236 d!138125))

(declare-fun b!1256427 () Bool)

(declare-fun e!714298 () Bool)

(assert (=> b!1256427 (= e!714298 tp_is_empty!32007)))

(declare-fun mapNonEmpty!49801 () Bool)

(declare-fun mapRes!49801 () Bool)

(declare-fun tp!94839 () Bool)

(assert (=> mapNonEmpty!49801 (= mapRes!49801 (and tp!94839 e!714298))))

(declare-fun mapValue!49801 () ValueCell!15240)

(declare-fun mapRest!49801 () (Array (_ BitVec 32) ValueCell!15240))

(declare-fun mapKey!49801 () (_ BitVec 32))

(assert (=> mapNonEmpty!49801 (= mapRest!49795 (store mapRest!49801 mapKey!49801 mapValue!49801))))

(declare-fun mapIsEmpty!49801 () Bool)

(assert (=> mapIsEmpty!49801 mapRes!49801))

(declare-fun b!1256428 () Bool)

(declare-fun e!714299 () Bool)

(assert (=> b!1256428 (= e!714299 tp_is_empty!32007)))

(declare-fun condMapEmpty!49801 () Bool)

(declare-fun mapDefault!49801 () ValueCell!15240)

(assert (=> mapNonEmpty!49795 (= condMapEmpty!49801 (= mapRest!49795 ((as const (Array (_ BitVec 32) ValueCell!15240)) mapDefault!49801)))))

(assert (=> mapNonEmpty!49795 (= tp!94829 (and e!714299 mapRes!49801))))

(assert (= (and mapNonEmpty!49795 condMapEmpty!49801) mapIsEmpty!49801))

(assert (= (and mapNonEmpty!49795 (not condMapEmpty!49801)) mapNonEmpty!49801))

(assert (= (and mapNonEmpty!49801 ((_ is ValueCellFull!15240) mapValue!49801)) b!1256427))

(assert (= (and mapNonEmpty!49795 ((_ is ValueCellFull!15240) mapDefault!49801)) b!1256428))

(declare-fun m!1157133 () Bool)

(assert (=> mapNonEmpty!49801 m!1157133))

(declare-fun b_lambda!22687 () Bool)

(assert (= b_lambda!22679 (or (and start!105482 b_free!27105) b_lambda!22687)))

(declare-fun b_lambda!22689 () Bool)

(assert (= b_lambda!22677 (or (and start!105482 b_free!27105) b_lambda!22689)))

(declare-fun b_lambda!22691 () Bool)

(assert (= b_lambda!22681 (or (and start!105482 b_free!27105) b_lambda!22691)))

(declare-fun b_lambda!22693 () Bool)

(assert (= b_lambda!22683 (or (and start!105482 b_free!27105) b_lambda!22693)))

(declare-fun b_lambda!22695 () Bool)

(assert (= b_lambda!22685 (or (and start!105482 b_free!27105) b_lambda!22695)))

(check-sat (not bm!61793) (not b!1256297) (not b!1256317) (not b!1256375) (not b!1256310) (not b_lambda!22693) (not b!1256311) (not d!138111) (not b!1256296) (not d!138109) (not bm!61801) (not mapNonEmpty!49801) (not b!1256312) (not b!1256304) (not b!1256407) (not b_next!27105) (not bm!61791) (not bm!61790) tp_is_empty!32007 (not b_lambda!22691) (not b!1256417) (not b!1256384) (not d!138121) (not b_lambda!22695) (not d!138117) (not b_lambda!22689) (not bm!61773) (not b!1256307) (not b!1256300) (not bm!61774) (not b!1256380) (not b!1256419) (not b!1256314) (not b!1256318) (not b!1256321) (not d!138119) (not b!1256298) (not b!1256379) (not d!138115) (not b_lambda!22687) b_and!44973 (not b!1256303) (not b!1256328) (not bm!61795) (not b!1256382) (not d!138113) (not bm!61798) (not b!1256319) (not b!1256305) (not b!1256389) (not b!1256376) (not b!1256377) (not b!1256405) (not b!1256408) (not b!1256330))
(check-sat b_and!44973 (not b_next!27105))
