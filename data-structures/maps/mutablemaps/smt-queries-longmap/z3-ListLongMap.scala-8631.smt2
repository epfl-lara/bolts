; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105112 () Bool)

(assert start!105112)

(declare-fun b_free!26823 () Bool)

(declare-fun b_next!26823 () Bool)

(assert (=> start!105112 (= b_free!26823 (not b_next!26823))))

(declare-fun tp!93968 () Bool)

(declare-fun b_and!44629 () Bool)

(assert (=> start!105112 (= tp!93968 b_and!44629)))

(declare-fun res!835167 () Bool)

(declare-fun e!711195 () Bool)

(assert (=> start!105112 (=> (not res!835167) (not e!711195))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105112 (= res!835167 (validMask!0 mask!1466))))

(assert (=> start!105112 e!711195))

(assert (=> start!105112 true))

(assert (=> start!105112 tp!93968))

(declare-fun tp_is_empty!31725 () Bool)

(assert (=> start!105112 tp_is_empty!31725))

(declare-datatypes ((array!81091 0))(
  ( (array!81092 (arr!39105 (Array (_ BitVec 32) (_ BitVec 64))) (size!39642 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81091)

(declare-fun array_inv!29755 (array!81091) Bool)

(assert (=> start!105112 (array_inv!29755 _keys!1118)))

(declare-datatypes ((V!47665 0))(
  ( (V!47666 (val!15925 Int)) )
))
(declare-datatypes ((ValueCell!15099 0))(
  ( (ValueCellFull!15099 (v!18623 V!47665)) (EmptyCell!15099) )
))
(declare-datatypes ((array!81093 0))(
  ( (array!81094 (arr!39106 (Array (_ BitVec 32) ValueCell!15099)) (size!39643 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81093)

(declare-fun e!711192 () Bool)

(declare-fun array_inv!29756 (array!81093) Bool)

(assert (=> start!105112 (and (array_inv!29756 _values!914) e!711192)))

(declare-fun b!1252165 () Bool)

(declare-fun e!711193 () Bool)

(assert (=> b!1252165 (= e!711193 tp_is_empty!31725)))

(declare-fun b!1252166 () Bool)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252166 (= e!711195 (not (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!39642 _keys!1118)))))))

(declare-datatypes ((tuple2!20680 0))(
  ( (tuple2!20681 (_1!10350 (_ BitVec 64)) (_2!10350 V!47665)) )
))
(declare-datatypes ((List!27931 0))(
  ( (Nil!27928) (Cons!27927 (h!29136 tuple2!20680) (t!41415 List!27931)) )
))
(declare-datatypes ((ListLongMap!18565 0))(
  ( (ListLongMap!18566 (toList!9298 List!27931)) )
))
(declare-fun lt!565184 () ListLongMap!18565)

(declare-fun lt!565185 () ListLongMap!18565)

(assert (=> b!1252166 (= lt!565184 lt!565185)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47665)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47665)

(declare-fun minValueBefore!43 () V!47665)

(declare-datatypes ((Unit!41573 0))(
  ( (Unit!41574) )
))
(declare-fun lt!565183 () Unit!41573)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!989 (array!81091 array!81093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47665 V!47665 V!47665 V!47665 (_ BitVec 32) Int) Unit!41573)

(assert (=> b!1252166 (= lt!565183 (lemmaNoChangeToArrayThenSameMapNoExtras!989 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5671 (array!81091 array!81093 (_ BitVec 32) (_ BitVec 32) V!47665 V!47665 (_ BitVec 32) Int) ListLongMap!18565)

(assert (=> b!1252166 (= lt!565185 (getCurrentListMapNoExtraKeys!5671 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252166 (= lt!565184 (getCurrentListMapNoExtraKeys!5671 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252167 () Bool)

(declare-fun res!835168 () Bool)

(assert (=> b!1252167 (=> (not res!835168) (not e!711195))))

(declare-datatypes ((List!27932 0))(
  ( (Nil!27929) (Cons!27928 (h!29137 (_ BitVec 64)) (t!41416 List!27932)) )
))
(declare-fun arrayNoDuplicates!0 (array!81091 (_ BitVec 32) List!27932) Bool)

(assert (=> b!1252167 (= res!835168 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27929))))

(declare-fun b!1252168 () Bool)

(declare-fun res!835170 () Bool)

(assert (=> b!1252168 (=> (not res!835170) (not e!711195))))

(assert (=> b!1252168 (= res!835170 (and (= (size!39643 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39642 _keys!1118) (size!39643 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49357 () Bool)

(declare-fun mapRes!49357 () Bool)

(declare-fun tp!93969 () Bool)

(assert (=> mapNonEmpty!49357 (= mapRes!49357 (and tp!93969 e!711193))))

(declare-fun mapKey!49357 () (_ BitVec 32))

(declare-fun mapValue!49357 () ValueCell!15099)

(declare-fun mapRest!49357 () (Array (_ BitVec 32) ValueCell!15099))

(assert (=> mapNonEmpty!49357 (= (arr!39106 _values!914) (store mapRest!49357 mapKey!49357 mapValue!49357))))

(declare-fun b!1252169 () Bool)

(declare-fun e!711191 () Bool)

(assert (=> b!1252169 (= e!711191 tp_is_empty!31725)))

(declare-fun b!1252170 () Bool)

(assert (=> b!1252170 (= e!711192 (and e!711191 mapRes!49357))))

(declare-fun condMapEmpty!49357 () Bool)

(declare-fun mapDefault!49357 () ValueCell!15099)

(assert (=> b!1252170 (= condMapEmpty!49357 (= (arr!39106 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15099)) mapDefault!49357)))))

(declare-fun b!1252171 () Bool)

(declare-fun res!835169 () Bool)

(assert (=> b!1252171 (=> (not res!835169) (not e!711195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81091 (_ BitVec 32)) Bool)

(assert (=> b!1252171 (= res!835169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49357 () Bool)

(assert (=> mapIsEmpty!49357 mapRes!49357))

(assert (= (and start!105112 res!835167) b!1252168))

(assert (= (and b!1252168 res!835170) b!1252171))

(assert (= (and b!1252171 res!835169) b!1252167))

(assert (= (and b!1252167 res!835168) b!1252166))

(assert (= (and b!1252170 condMapEmpty!49357) mapIsEmpty!49357))

(assert (= (and b!1252170 (not condMapEmpty!49357)) mapNonEmpty!49357))

(get-info :version)

(assert (= (and mapNonEmpty!49357 ((_ is ValueCellFull!15099) mapValue!49357)) b!1252165))

(assert (= (and b!1252170 ((_ is ValueCellFull!15099) mapDefault!49357)) b!1252169))

(assert (= start!105112 b!1252170))

(declare-fun m!1152869 () Bool)

(assert (=> mapNonEmpty!49357 m!1152869))

(declare-fun m!1152871 () Bool)

(assert (=> b!1252167 m!1152871))

(declare-fun m!1152873 () Bool)

(assert (=> b!1252166 m!1152873))

(declare-fun m!1152875 () Bool)

(assert (=> b!1252166 m!1152875))

(declare-fun m!1152877 () Bool)

(assert (=> b!1252166 m!1152877))

(declare-fun m!1152879 () Bool)

(assert (=> start!105112 m!1152879))

(declare-fun m!1152881 () Bool)

(assert (=> start!105112 m!1152881))

(declare-fun m!1152883 () Bool)

(assert (=> start!105112 m!1152883))

(declare-fun m!1152885 () Bool)

(assert (=> b!1252171 m!1152885))

(check-sat (not mapNonEmpty!49357) (not b!1252171) tp_is_empty!31725 (not start!105112) (not b!1252166) b_and!44629 (not b!1252167) (not b_next!26823))
(check-sat b_and!44629 (not b_next!26823))
(get-model)

(declare-fun b!1252203 () Bool)

(declare-fun e!711219 () Bool)

(declare-fun call!61649 () Bool)

(assert (=> b!1252203 (= e!711219 call!61649)))

(declare-fun b!1252204 () Bool)

(declare-fun e!711221 () Bool)

(assert (=> b!1252204 (= e!711221 e!711219)))

(declare-fun c!122178 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1252204 (= c!122178 (validKeyInArray!0 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61646 () Bool)

(assert (=> bm!61646 (= call!61649 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122178 (Cons!27928 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000) Nil!27929) Nil!27929)))))

(declare-fun b!1252205 () Bool)

(declare-fun e!711220 () Bool)

(assert (=> b!1252205 (= e!711220 e!711221)))

(declare-fun res!835191 () Bool)

(assert (=> b!1252205 (=> (not res!835191) (not e!711221))))

(declare-fun e!711222 () Bool)

(assert (=> b!1252205 (= res!835191 (not e!711222))))

(declare-fun res!835189 () Bool)

(assert (=> b!1252205 (=> (not res!835189) (not e!711222))))

(assert (=> b!1252205 (= res!835189 (validKeyInArray!0 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1252206 () Bool)

(declare-fun contains!7533 (List!27932 (_ BitVec 64)) Bool)

(assert (=> b!1252206 (= e!711222 (contains!7533 Nil!27929 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1252207 () Bool)

(assert (=> b!1252207 (= e!711219 call!61649)))

(declare-fun d!137903 () Bool)

(declare-fun res!835190 () Bool)

(assert (=> d!137903 (=> res!835190 e!711220)))

(assert (=> d!137903 (= res!835190 (bvsge #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(assert (=> d!137903 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27929) e!711220)))

(assert (= (and d!137903 (not res!835190)) b!1252205))

(assert (= (and b!1252205 res!835189) b!1252206))

(assert (= (and b!1252205 res!835191) b!1252204))

(assert (= (and b!1252204 c!122178) b!1252203))

(assert (= (and b!1252204 (not c!122178)) b!1252207))

(assert (= (or b!1252203 b!1252207) bm!61646))

(declare-fun m!1152905 () Bool)

(assert (=> b!1252204 m!1152905))

(assert (=> b!1252204 m!1152905))

(declare-fun m!1152907 () Bool)

(assert (=> b!1252204 m!1152907))

(assert (=> bm!61646 m!1152905))

(declare-fun m!1152909 () Bool)

(assert (=> bm!61646 m!1152909))

(assert (=> b!1252205 m!1152905))

(assert (=> b!1252205 m!1152905))

(assert (=> b!1252205 m!1152907))

(assert (=> b!1252206 m!1152905))

(assert (=> b!1252206 m!1152905))

(declare-fun m!1152911 () Bool)

(assert (=> b!1252206 m!1152911))

(assert (=> b!1252167 d!137903))

(declare-fun d!137905 () Bool)

(declare-fun res!835196 () Bool)

(declare-fun e!711229 () Bool)

(assert (=> d!137905 (=> res!835196 e!711229)))

(assert (=> d!137905 (= res!835196 (bvsge #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(assert (=> d!137905 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!711229)))

(declare-fun bm!61649 () Bool)

(declare-fun call!61652 () Bool)

(assert (=> bm!61649 (= call!61652 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1252216 () Bool)

(declare-fun e!711230 () Bool)

(assert (=> b!1252216 (= e!711229 e!711230)))

(declare-fun c!122181 () Bool)

(assert (=> b!1252216 (= c!122181 (validKeyInArray!0 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1252217 () Bool)

(assert (=> b!1252217 (= e!711230 call!61652)))

(declare-fun b!1252218 () Bool)

(declare-fun e!711231 () Bool)

(assert (=> b!1252218 (= e!711231 call!61652)))

(declare-fun b!1252219 () Bool)

(assert (=> b!1252219 (= e!711230 e!711231)))

(declare-fun lt!565201 () (_ BitVec 64))

(assert (=> b!1252219 (= lt!565201 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!565202 () Unit!41573)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!81091 (_ BitVec 64) (_ BitVec 32)) Unit!41573)

(assert (=> b!1252219 (= lt!565202 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!565201 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!81091 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1252219 (arrayContainsKey!0 _keys!1118 lt!565201 #b00000000000000000000000000000000)))

(declare-fun lt!565203 () Unit!41573)

(assert (=> b!1252219 (= lt!565203 lt!565202)))

(declare-fun res!835197 () Bool)

(declare-datatypes ((SeekEntryResult!9958 0))(
  ( (MissingZero!9958 (index!42202 (_ BitVec 32))) (Found!9958 (index!42203 (_ BitVec 32))) (Intermediate!9958 (undefined!10770 Bool) (index!42204 (_ BitVec 32)) (x!110189 (_ BitVec 32))) (Undefined!9958) (MissingVacant!9958 (index!42205 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!81091 (_ BitVec 32)) SeekEntryResult!9958)

(assert (=> b!1252219 (= res!835197 (= (seekEntryOrOpen!0 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9958 #b00000000000000000000000000000000)))))

(assert (=> b!1252219 (=> (not res!835197) (not e!711231))))

(assert (= (and d!137905 (not res!835196)) b!1252216))

(assert (= (and b!1252216 c!122181) b!1252219))

(assert (= (and b!1252216 (not c!122181)) b!1252217))

(assert (= (and b!1252219 res!835197) b!1252218))

(assert (= (or b!1252218 b!1252217) bm!61649))

(declare-fun m!1152913 () Bool)

(assert (=> bm!61649 m!1152913))

(assert (=> b!1252216 m!1152905))

(assert (=> b!1252216 m!1152905))

(assert (=> b!1252216 m!1152907))

(assert (=> b!1252219 m!1152905))

(declare-fun m!1152915 () Bool)

(assert (=> b!1252219 m!1152915))

(declare-fun m!1152917 () Bool)

(assert (=> b!1252219 m!1152917))

(assert (=> b!1252219 m!1152905))

(declare-fun m!1152919 () Bool)

(assert (=> b!1252219 m!1152919))

(assert (=> b!1252171 d!137905))

(declare-fun d!137907 () Bool)

(assert (=> d!137907 (= (getCurrentListMapNoExtraKeys!5671 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5671 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!565206 () Unit!41573)

(declare-fun choose!1860 (array!81091 array!81093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47665 V!47665 V!47665 V!47665 (_ BitVec 32) Int) Unit!41573)

(assert (=> d!137907 (= lt!565206 (choose!1860 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!137907 (validMask!0 mask!1466)))

(assert (=> d!137907 (= (lemmaNoChangeToArrayThenSameMapNoExtras!989 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!565206)))

(declare-fun bs!35360 () Bool)

(assert (= bs!35360 d!137907))

(assert (=> bs!35360 m!1152877))

(assert (=> bs!35360 m!1152875))

(declare-fun m!1152921 () Bool)

(assert (=> bs!35360 m!1152921))

(assert (=> bs!35360 m!1152879))

(assert (=> b!1252166 d!137907))

(declare-fun b!1252244 () Bool)

(declare-fun e!711251 () Bool)

(declare-fun lt!565226 () ListLongMap!18565)

(declare-fun isEmpty!1028 (ListLongMap!18565) Bool)

(assert (=> b!1252244 (= e!711251 (isEmpty!1028 lt!565226))))

(declare-fun b!1252245 () Bool)

(declare-fun e!711246 () ListLongMap!18565)

(assert (=> b!1252245 (= e!711246 (ListLongMap!18566 Nil!27928))))

(declare-fun b!1252246 () Bool)

(declare-fun e!711247 () Bool)

(declare-fun e!711248 () Bool)

(assert (=> b!1252246 (= e!711247 e!711248)))

(declare-fun c!122190 () Bool)

(declare-fun e!711252 () Bool)

(assert (=> b!1252246 (= c!122190 e!711252)))

(declare-fun res!835207 () Bool)

(assert (=> b!1252246 (=> (not res!835207) (not e!711252))))

(assert (=> b!1252246 (= res!835207 (bvslt #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(declare-fun b!1252247 () Bool)

(assert (=> b!1252247 (= e!711252 (validKeyInArray!0 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1252247 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1252248 () Bool)

(declare-fun e!711249 () Bool)

(assert (=> b!1252248 (= e!711248 e!711249)))

(assert (=> b!1252248 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(declare-fun res!835209 () Bool)

(declare-fun contains!7534 (ListLongMap!18565 (_ BitVec 64)) Bool)

(assert (=> b!1252248 (= res!835209 (contains!7534 lt!565226 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1252248 (=> (not res!835209) (not e!711249))))

(declare-fun call!61655 () ListLongMap!18565)

(declare-fun bm!61652 () Bool)

(assert (=> bm!61652 (= call!61655 (getCurrentListMapNoExtraKeys!5671 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1252249 () Bool)

(assert (=> b!1252249 (= e!711248 e!711251)))

(declare-fun c!122192 () Bool)

(assert (=> b!1252249 (= c!122192 (bvslt #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(declare-fun b!1252250 () Bool)

(assert (=> b!1252250 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(assert (=> b!1252250 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39643 _values!914)))))

(declare-fun apply!1018 (ListLongMap!18565 (_ BitVec 64)) V!47665)

(declare-fun get!20082 (ValueCell!15099 V!47665) V!47665)

(declare-fun dynLambda!3463 (Int (_ BitVec 64)) V!47665)

(assert (=> b!1252250 (= e!711249 (= (apply!1018 lt!565226 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)) (get!20082 (select (arr!39106 _values!914) #b00000000000000000000000000000000) (dynLambda!3463 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1252251 () Bool)

(declare-fun res!835208 () Bool)

(assert (=> b!1252251 (=> (not res!835208) (not e!711247))))

(assert (=> b!1252251 (= res!835208 (not (contains!7534 lt!565226 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1252252 () Bool)

(declare-fun e!711250 () ListLongMap!18565)

(assert (=> b!1252252 (= e!711250 call!61655)))

(declare-fun b!1252253 () Bool)

(assert (=> b!1252253 (= e!711246 e!711250)))

(declare-fun c!122191 () Bool)

(assert (=> b!1252253 (= c!122191 (validKeyInArray!0 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!137909 () Bool)

(assert (=> d!137909 e!711247))

(declare-fun res!835206 () Bool)

(assert (=> d!137909 (=> (not res!835206) (not e!711247))))

(assert (=> d!137909 (= res!835206 (not (contains!7534 lt!565226 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137909 (= lt!565226 e!711246)))

(declare-fun c!122193 () Bool)

(assert (=> d!137909 (= c!122193 (bvsge #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(assert (=> d!137909 (validMask!0 mask!1466)))

(assert (=> d!137909 (= (getCurrentListMapNoExtraKeys!5671 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!565226)))

(declare-fun b!1252254 () Bool)

(assert (=> b!1252254 (= e!711251 (= lt!565226 (getCurrentListMapNoExtraKeys!5671 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1252255 () Bool)

(declare-fun lt!565225 () Unit!41573)

(declare-fun lt!565227 () Unit!41573)

(assert (=> b!1252255 (= lt!565225 lt!565227)))

(declare-fun lt!565223 () (_ BitVec 64))

(declare-fun lt!565224 () (_ BitVec 64))

(declare-fun lt!565222 () V!47665)

(declare-fun lt!565221 () ListLongMap!18565)

(declare-fun +!4127 (ListLongMap!18565 tuple2!20680) ListLongMap!18565)

(assert (=> b!1252255 (not (contains!7534 (+!4127 lt!565221 (tuple2!20681 lt!565223 lt!565222)) lt!565224))))

(declare-fun addStillNotContains!313 (ListLongMap!18565 (_ BitVec 64) V!47665 (_ BitVec 64)) Unit!41573)

(assert (=> b!1252255 (= lt!565227 (addStillNotContains!313 lt!565221 lt!565223 lt!565222 lt!565224))))

(assert (=> b!1252255 (= lt!565224 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1252255 (= lt!565222 (get!20082 (select (arr!39106 _values!914) #b00000000000000000000000000000000) (dynLambda!3463 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1252255 (= lt!565223 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1252255 (= lt!565221 call!61655)))

(assert (=> b!1252255 (= e!711250 (+!4127 call!61655 (tuple2!20681 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000) (get!20082 (select (arr!39106 _values!914) #b00000000000000000000000000000000) (dynLambda!3463 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!137909 c!122193) b!1252245))

(assert (= (and d!137909 (not c!122193)) b!1252253))

(assert (= (and b!1252253 c!122191) b!1252255))

(assert (= (and b!1252253 (not c!122191)) b!1252252))

(assert (= (or b!1252255 b!1252252) bm!61652))

(assert (= (and d!137909 res!835206) b!1252251))

(assert (= (and b!1252251 res!835208) b!1252246))

(assert (= (and b!1252246 res!835207) b!1252247))

(assert (= (and b!1252246 c!122190) b!1252248))

(assert (= (and b!1252246 (not c!122190)) b!1252249))

(assert (= (and b!1252248 res!835209) b!1252250))

(assert (= (and b!1252249 c!122192) b!1252254))

(assert (= (and b!1252249 (not c!122192)) b!1252244))

(declare-fun b_lambda!22577 () Bool)

(assert (=> (not b_lambda!22577) (not b!1252250)))

(declare-fun t!41420 () Bool)

(declare-fun tb!11301 () Bool)

(assert (=> (and start!105112 (= defaultEntry!922 defaultEntry!922) t!41420) tb!11301))

(declare-fun result!23295 () Bool)

(assert (=> tb!11301 (= result!23295 tp_is_empty!31725)))

(assert (=> b!1252250 t!41420))

(declare-fun b_and!44633 () Bool)

(assert (= b_and!44629 (and (=> t!41420 result!23295) b_and!44633)))

(declare-fun b_lambda!22579 () Bool)

(assert (=> (not b_lambda!22579) (not b!1252255)))

(assert (=> b!1252255 t!41420))

(declare-fun b_and!44635 () Bool)

(assert (= b_and!44633 (and (=> t!41420 result!23295) b_and!44635)))

(declare-fun m!1152923 () Bool)

(assert (=> bm!61652 m!1152923))

(declare-fun m!1152925 () Bool)

(assert (=> d!137909 m!1152925))

(assert (=> d!137909 m!1152879))

(assert (=> b!1252248 m!1152905))

(assert (=> b!1252248 m!1152905))

(declare-fun m!1152927 () Bool)

(assert (=> b!1252248 m!1152927))

(assert (=> b!1252254 m!1152923))

(declare-fun m!1152929 () Bool)

(assert (=> b!1252255 m!1152929))

(assert (=> b!1252255 m!1152905))

(declare-fun m!1152931 () Bool)

(assert (=> b!1252255 m!1152931))

(declare-fun m!1152933 () Bool)

(assert (=> b!1252255 m!1152933))

(assert (=> b!1252255 m!1152933))

(assert (=> b!1252255 m!1152931))

(declare-fun m!1152935 () Bool)

(assert (=> b!1252255 m!1152935))

(declare-fun m!1152937 () Bool)

(assert (=> b!1252255 m!1152937))

(declare-fun m!1152939 () Bool)

(assert (=> b!1252255 m!1152939))

(declare-fun m!1152941 () Bool)

(assert (=> b!1252255 m!1152941))

(assert (=> b!1252255 m!1152939))

(assert (=> b!1252250 m!1152905))

(declare-fun m!1152943 () Bool)

(assert (=> b!1252250 m!1152943))

(assert (=> b!1252250 m!1152905))

(assert (=> b!1252250 m!1152931))

(assert (=> b!1252250 m!1152933))

(assert (=> b!1252250 m!1152933))

(assert (=> b!1252250 m!1152931))

(assert (=> b!1252250 m!1152935))

(assert (=> b!1252247 m!1152905))

(assert (=> b!1252247 m!1152905))

(assert (=> b!1252247 m!1152907))

(declare-fun m!1152945 () Bool)

(assert (=> b!1252244 m!1152945))

(declare-fun m!1152947 () Bool)

(assert (=> b!1252251 m!1152947))

(assert (=> b!1252253 m!1152905))

(assert (=> b!1252253 m!1152905))

(assert (=> b!1252253 m!1152907))

(assert (=> b!1252166 d!137909))

(declare-fun b!1252258 () Bool)

(declare-fun e!711258 () Bool)

(declare-fun lt!565233 () ListLongMap!18565)

(assert (=> b!1252258 (= e!711258 (isEmpty!1028 lt!565233))))

(declare-fun b!1252259 () Bool)

(declare-fun e!711253 () ListLongMap!18565)

(assert (=> b!1252259 (= e!711253 (ListLongMap!18566 Nil!27928))))

(declare-fun b!1252260 () Bool)

(declare-fun e!711254 () Bool)

(declare-fun e!711255 () Bool)

(assert (=> b!1252260 (= e!711254 e!711255)))

(declare-fun c!122194 () Bool)

(declare-fun e!711259 () Bool)

(assert (=> b!1252260 (= c!122194 e!711259)))

(declare-fun res!835211 () Bool)

(assert (=> b!1252260 (=> (not res!835211) (not e!711259))))

(assert (=> b!1252260 (= res!835211 (bvslt #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(declare-fun b!1252261 () Bool)

(assert (=> b!1252261 (= e!711259 (validKeyInArray!0 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1252261 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1252262 () Bool)

(declare-fun e!711256 () Bool)

(assert (=> b!1252262 (= e!711255 e!711256)))

(assert (=> b!1252262 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(declare-fun res!835213 () Bool)

(assert (=> b!1252262 (= res!835213 (contains!7534 lt!565233 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1252262 (=> (not res!835213) (not e!711256))))

(declare-fun bm!61653 () Bool)

(declare-fun call!61656 () ListLongMap!18565)

(assert (=> bm!61653 (= call!61656 (getCurrentListMapNoExtraKeys!5671 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1252263 () Bool)

(assert (=> b!1252263 (= e!711255 e!711258)))

(declare-fun c!122196 () Bool)

(assert (=> b!1252263 (= c!122196 (bvslt #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(declare-fun b!1252264 () Bool)

(assert (=> b!1252264 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(assert (=> b!1252264 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39643 _values!914)))))

(assert (=> b!1252264 (= e!711256 (= (apply!1018 lt!565233 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)) (get!20082 (select (arr!39106 _values!914) #b00000000000000000000000000000000) (dynLambda!3463 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1252265 () Bool)

(declare-fun res!835212 () Bool)

(assert (=> b!1252265 (=> (not res!835212) (not e!711254))))

(assert (=> b!1252265 (= res!835212 (not (contains!7534 lt!565233 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1252266 () Bool)

(declare-fun e!711257 () ListLongMap!18565)

(assert (=> b!1252266 (= e!711257 call!61656)))

(declare-fun b!1252267 () Bool)

(assert (=> b!1252267 (= e!711253 e!711257)))

(declare-fun c!122195 () Bool)

(assert (=> b!1252267 (= c!122195 (validKeyInArray!0 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!137911 () Bool)

(assert (=> d!137911 e!711254))

(declare-fun res!835210 () Bool)

(assert (=> d!137911 (=> (not res!835210) (not e!711254))))

(assert (=> d!137911 (= res!835210 (not (contains!7534 lt!565233 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137911 (= lt!565233 e!711253)))

(declare-fun c!122197 () Bool)

(assert (=> d!137911 (= c!122197 (bvsge #b00000000000000000000000000000000 (size!39642 _keys!1118)))))

(assert (=> d!137911 (validMask!0 mask!1466)))

(assert (=> d!137911 (= (getCurrentListMapNoExtraKeys!5671 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!565233)))

(declare-fun b!1252268 () Bool)

(assert (=> b!1252268 (= e!711258 (= lt!565233 (getCurrentListMapNoExtraKeys!5671 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1252269 () Bool)

(declare-fun lt!565232 () Unit!41573)

(declare-fun lt!565234 () Unit!41573)

(assert (=> b!1252269 (= lt!565232 lt!565234)))

(declare-fun lt!565228 () ListLongMap!18565)

(declare-fun lt!565229 () V!47665)

(declare-fun lt!565230 () (_ BitVec 64))

(declare-fun lt!565231 () (_ BitVec 64))

(assert (=> b!1252269 (not (contains!7534 (+!4127 lt!565228 (tuple2!20681 lt!565230 lt!565229)) lt!565231))))

(assert (=> b!1252269 (= lt!565234 (addStillNotContains!313 lt!565228 lt!565230 lt!565229 lt!565231))))

(assert (=> b!1252269 (= lt!565231 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1252269 (= lt!565229 (get!20082 (select (arr!39106 _values!914) #b00000000000000000000000000000000) (dynLambda!3463 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1252269 (= lt!565230 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1252269 (= lt!565228 call!61656)))

(assert (=> b!1252269 (= e!711257 (+!4127 call!61656 (tuple2!20681 (select (arr!39105 _keys!1118) #b00000000000000000000000000000000) (get!20082 (select (arr!39106 _values!914) #b00000000000000000000000000000000) (dynLambda!3463 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!137911 c!122197) b!1252259))

(assert (= (and d!137911 (not c!122197)) b!1252267))

(assert (= (and b!1252267 c!122195) b!1252269))

(assert (= (and b!1252267 (not c!122195)) b!1252266))

(assert (= (or b!1252269 b!1252266) bm!61653))

(assert (= (and d!137911 res!835210) b!1252265))

(assert (= (and b!1252265 res!835212) b!1252260))

(assert (= (and b!1252260 res!835211) b!1252261))

(assert (= (and b!1252260 c!122194) b!1252262))

(assert (= (and b!1252260 (not c!122194)) b!1252263))

(assert (= (and b!1252262 res!835213) b!1252264))

(assert (= (and b!1252263 c!122196) b!1252268))

(assert (= (and b!1252263 (not c!122196)) b!1252258))

(declare-fun b_lambda!22581 () Bool)

(assert (=> (not b_lambda!22581) (not b!1252264)))

(assert (=> b!1252264 t!41420))

(declare-fun b_and!44637 () Bool)

(assert (= b_and!44635 (and (=> t!41420 result!23295) b_and!44637)))

(declare-fun b_lambda!22583 () Bool)

(assert (=> (not b_lambda!22583) (not b!1252269)))

(assert (=> b!1252269 t!41420))

(declare-fun b_and!44639 () Bool)

(assert (= b_and!44637 (and (=> t!41420 result!23295) b_and!44639)))

(declare-fun m!1152949 () Bool)

(assert (=> bm!61653 m!1152949))

(declare-fun m!1152951 () Bool)

(assert (=> d!137911 m!1152951))

(assert (=> d!137911 m!1152879))

(assert (=> b!1252262 m!1152905))

(assert (=> b!1252262 m!1152905))

(declare-fun m!1152953 () Bool)

(assert (=> b!1252262 m!1152953))

(assert (=> b!1252268 m!1152949))

(declare-fun m!1152955 () Bool)

(assert (=> b!1252269 m!1152955))

(assert (=> b!1252269 m!1152905))

(assert (=> b!1252269 m!1152931))

(assert (=> b!1252269 m!1152933))

(assert (=> b!1252269 m!1152933))

(assert (=> b!1252269 m!1152931))

(assert (=> b!1252269 m!1152935))

(declare-fun m!1152957 () Bool)

(assert (=> b!1252269 m!1152957))

(declare-fun m!1152959 () Bool)

(assert (=> b!1252269 m!1152959))

(declare-fun m!1152961 () Bool)

(assert (=> b!1252269 m!1152961))

(assert (=> b!1252269 m!1152959))

(assert (=> b!1252264 m!1152905))

(declare-fun m!1152963 () Bool)

(assert (=> b!1252264 m!1152963))

(assert (=> b!1252264 m!1152905))

(assert (=> b!1252264 m!1152931))

(assert (=> b!1252264 m!1152933))

(assert (=> b!1252264 m!1152933))

(assert (=> b!1252264 m!1152931))

(assert (=> b!1252264 m!1152935))

(assert (=> b!1252261 m!1152905))

(assert (=> b!1252261 m!1152905))

(assert (=> b!1252261 m!1152907))

(declare-fun m!1152965 () Bool)

(assert (=> b!1252258 m!1152965))

(declare-fun m!1152967 () Bool)

(assert (=> b!1252265 m!1152967))

(assert (=> b!1252267 m!1152905))

(assert (=> b!1252267 m!1152905))

(assert (=> b!1252267 m!1152907))

(assert (=> b!1252166 d!137911))

(declare-fun d!137913 () Bool)

(assert (=> d!137913 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105112 d!137913))

(declare-fun d!137915 () Bool)

(assert (=> d!137915 (= (array_inv!29755 _keys!1118) (bvsge (size!39642 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105112 d!137915))

(declare-fun d!137917 () Bool)

(assert (=> d!137917 (= (array_inv!29756 _values!914) (bvsge (size!39643 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105112 d!137917))

(declare-fun mapIsEmpty!49363 () Bool)

(declare-fun mapRes!49363 () Bool)

(assert (=> mapIsEmpty!49363 mapRes!49363))

(declare-fun mapNonEmpty!49363 () Bool)

(declare-fun tp!93978 () Bool)

(declare-fun e!711264 () Bool)

(assert (=> mapNonEmpty!49363 (= mapRes!49363 (and tp!93978 e!711264))))

(declare-fun mapValue!49363 () ValueCell!15099)

(declare-fun mapRest!49363 () (Array (_ BitVec 32) ValueCell!15099))

(declare-fun mapKey!49363 () (_ BitVec 32))

(assert (=> mapNonEmpty!49363 (= mapRest!49357 (store mapRest!49363 mapKey!49363 mapValue!49363))))

(declare-fun b!1252277 () Bool)

(declare-fun e!711265 () Bool)

(assert (=> b!1252277 (= e!711265 tp_is_empty!31725)))

(declare-fun condMapEmpty!49363 () Bool)

(declare-fun mapDefault!49363 () ValueCell!15099)

(assert (=> mapNonEmpty!49357 (= condMapEmpty!49363 (= mapRest!49357 ((as const (Array (_ BitVec 32) ValueCell!15099)) mapDefault!49363)))))

(assert (=> mapNonEmpty!49357 (= tp!93969 (and e!711265 mapRes!49363))))

(declare-fun b!1252276 () Bool)

(assert (=> b!1252276 (= e!711264 tp_is_empty!31725)))

(assert (= (and mapNonEmpty!49357 condMapEmpty!49363) mapIsEmpty!49363))

(assert (= (and mapNonEmpty!49357 (not condMapEmpty!49363)) mapNonEmpty!49363))

(assert (= (and mapNonEmpty!49363 ((_ is ValueCellFull!15099) mapValue!49363)) b!1252276))

(assert (= (and mapNonEmpty!49357 ((_ is ValueCellFull!15099) mapDefault!49363)) b!1252277))

(declare-fun m!1152969 () Bool)

(assert (=> mapNonEmpty!49363 m!1152969))

(declare-fun b_lambda!22585 () Bool)

(assert (= b_lambda!22583 (or (and start!105112 b_free!26823) b_lambda!22585)))

(declare-fun b_lambda!22587 () Bool)

(assert (= b_lambda!22581 (or (and start!105112 b_free!26823) b_lambda!22587)))

(declare-fun b_lambda!22589 () Bool)

(assert (= b_lambda!22579 (or (and start!105112 b_free!26823) b_lambda!22589)))

(declare-fun b_lambda!22591 () Bool)

(assert (= b_lambda!22577 (or (and start!105112 b_free!26823) b_lambda!22591)))

(check-sat (not d!137911) b_and!44639 (not b!1252254) (not b!1252258) (not b!1252219) (not b_lambda!22585) tp_is_empty!31725 (not d!137907) (not b!1252269) (not b!1252253) (not b_next!26823) (not bm!61649) (not d!137909) (not mapNonEmpty!49363) (not b_lambda!22589) (not bm!61646) (not b!1252251) (not b!1252261) (not b!1252268) (not b!1252206) (not b!1252204) (not b!1252265) (not b!1252267) (not b!1252262) (not b!1252216) (not bm!61653) (not b!1252205) (not b_lambda!22591) (not b!1252264) (not b!1252250) (not b!1252255) (not bm!61652) (not b!1252248) (not b!1252244) (not b!1252247) (not b_lambda!22587))
(check-sat b_and!44639 (not b_next!26823))
