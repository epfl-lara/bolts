; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105854 () Bool)

(assert start!105854)

(declare-fun b_free!27381 () Bool)

(declare-fun b_next!27381 () Bool)

(assert (=> start!105854 (= b_free!27381 (not b_next!27381))))

(declare-fun tp!95673 () Bool)

(declare-fun b_and!45287 () Bool)

(assert (=> start!105854 (= tp!95673 b_and!45287)))

(declare-fun b!1260459 () Bool)

(declare-fun res!840110 () Bool)

(declare-fun e!717305 () Bool)

(assert (=> b!1260459 (=> (not res!840110) (not e!717305))))

(declare-datatypes ((array!82171 0))(
  ( (array!82172 (arr!39635 (Array (_ BitVec 32) (_ BitVec 64))) (size!40172 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82171)

(declare-datatypes ((List!28334 0))(
  ( (Nil!28331) (Cons!28330 (h!29539 (_ BitVec 64)) (t!41838 List!28334)) )
))
(declare-fun arrayNoDuplicates!0 (array!82171 (_ BitVec 32) List!28334) Bool)

(assert (=> b!1260459 (= res!840110 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28331))))

(declare-fun b!1260460 () Bool)

(declare-fun e!717304 () Bool)

(assert (=> b!1260460 (= e!717304 (bvsle #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun b!1260461 () Bool)

(declare-fun res!840112 () Bool)

(assert (=> b!1260461 (=> (not res!840112) (not e!717305))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48409 0))(
  ( (V!48410 (val!16204 Int)) )
))
(declare-datatypes ((ValueCell!15378 0))(
  ( (ValueCellFull!15378 (v!18907 V!48409)) (EmptyCell!15378) )
))
(declare-datatypes ((array!82173 0))(
  ( (array!82174 (arr!39636 (Array (_ BitVec 32) ValueCell!15378)) (size!40173 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82173)

(assert (=> b!1260461 (= res!840112 (and (= (size!40173 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40172 _keys!1118) (size!40173 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260462 () Bool)

(declare-fun e!717309 () Bool)

(declare-fun tp_is_empty!32283 () Bool)

(assert (=> b!1260462 (= e!717309 tp_is_empty!32283)))

(declare-fun b!1260463 () Bool)

(declare-fun e!717303 () Bool)

(assert (=> b!1260463 (= e!717303 tp_is_empty!32283)))

(declare-fun mapIsEmpty!50224 () Bool)

(declare-fun mapRes!50224 () Bool)

(assert (=> mapIsEmpty!50224 mapRes!50224))

(declare-datatypes ((tuple2!21114 0))(
  ( (tuple2!21115 (_1!10567 (_ BitVec 64)) (_2!10567 V!48409)) )
))
(declare-fun lt!571175 () tuple2!21114)

(declare-datatypes ((List!28335 0))(
  ( (Nil!28332) (Cons!28331 (h!29540 tuple2!21114) (t!41839 List!28335)) )
))
(declare-datatypes ((ListLongMap!18999 0))(
  ( (ListLongMap!19000 (toList!9515 List!28335)) )
))
(declare-fun lt!571178 () ListLongMap!18999)

(declare-fun lt!571179 () ListLongMap!18999)

(declare-fun b!1260464 () Bool)

(declare-fun e!717308 () Bool)

(declare-fun +!4211 (ListLongMap!18999 tuple2!21114) ListLongMap!18999)

(assert (=> b!1260464 (= e!717308 (= lt!571179 (+!4211 lt!571178 lt!571175)))))

(declare-fun b!1260465 () Bool)

(declare-fun e!717302 () Bool)

(assert (=> b!1260465 (= e!717305 (not e!717302))))

(declare-fun res!840111 () Bool)

(assert (=> b!1260465 (=> res!840111 e!717302)))

(assert (=> b!1260465 (= res!840111 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!571177 () ListLongMap!18999)

(assert (=> b!1260465 (= lt!571177 lt!571178)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48409)

(declare-fun zeroValue!871 () V!48409)

(declare-fun minValueBefore!43 () V!48409)

(declare-datatypes ((Unit!41997 0))(
  ( (Unit!41998) )
))
(declare-fun lt!571174 () Unit!41997)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1174 (array!82171 array!82173 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48409 V!48409 V!48409 V!48409 (_ BitVec 32) Int) Unit!41997)

(assert (=> b!1260465 (= lt!571174 (lemmaNoChangeToArrayThenSameMapNoExtras!1174 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5856 (array!82171 array!82173 (_ BitVec 32) (_ BitVec 32) V!48409 V!48409 (_ BitVec 32) Int) ListLongMap!18999)

(assert (=> b!1260465 (= lt!571178 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260465 (= lt!571177 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260466 () Bool)

(declare-fun res!840114 () Bool)

(assert (=> b!1260466 (=> (not res!840114) (not e!717305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82171 (_ BitVec 32)) Bool)

(assert (=> b!1260466 (= res!840114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!50224 () Bool)

(declare-fun tp!95672 () Bool)

(assert (=> mapNonEmpty!50224 (= mapRes!50224 (and tp!95672 e!717309))))

(declare-fun mapRest!50224 () (Array (_ BitVec 32) ValueCell!15378))

(declare-fun mapKey!50224 () (_ BitVec 32))

(declare-fun mapValue!50224 () ValueCell!15378)

(assert (=> mapNonEmpty!50224 (= (arr!39636 _values!914) (store mapRest!50224 mapKey!50224 mapValue!50224))))

(declare-fun res!840113 () Bool)

(assert (=> start!105854 (=> (not res!840113) (not e!717305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105854 (= res!840113 (validMask!0 mask!1466))))

(assert (=> start!105854 e!717305))

(assert (=> start!105854 true))

(assert (=> start!105854 tp!95673))

(assert (=> start!105854 tp_is_empty!32283))

(declare-fun array_inv!30127 (array!82171) Bool)

(assert (=> start!105854 (array_inv!30127 _keys!1118)))

(declare-fun e!717307 () Bool)

(declare-fun array_inv!30128 (array!82173) Bool)

(assert (=> start!105854 (and (array_inv!30128 _values!914) e!717307)))

(declare-fun b!1260467 () Bool)

(assert (=> b!1260467 (= e!717307 (and e!717303 mapRes!50224))))

(declare-fun condMapEmpty!50224 () Bool)

(declare-fun mapDefault!50224 () ValueCell!15378)

(assert (=> b!1260467 (= condMapEmpty!50224 (= (arr!39636 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15378)) mapDefault!50224)))))

(declare-fun b!1260468 () Bool)

(assert (=> b!1260468 (= e!717302 e!717304)))

(declare-fun res!840115 () Bool)

(assert (=> b!1260468 (=> res!840115 e!717304)))

(declare-fun lt!571181 () ListLongMap!18999)

(declare-fun -!2141 (ListLongMap!18999 (_ BitVec 64)) ListLongMap!18999)

(assert (=> b!1260468 (= res!840115 (not (= (-!2141 lt!571181 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571179)))))

(declare-fun lt!571180 () ListLongMap!18999)

(declare-fun lt!571176 () ListLongMap!18999)

(assert (=> b!1260468 (= (-!2141 lt!571180 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571176)))

(declare-fun lt!571182 () Unit!41997)

(declare-fun addThenRemoveForNewKeyIsSame!366 (ListLongMap!18999 (_ BitVec 64) V!48409) Unit!41997)

(assert (=> b!1260468 (= lt!571182 (addThenRemoveForNewKeyIsSame!366 lt!571176 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1260468 e!717308))

(declare-fun res!840116 () Bool)

(assert (=> b!1260468 (=> (not res!840116) (not e!717308))))

(assert (=> b!1260468 (= res!840116 (= lt!571181 lt!571180))))

(assert (=> b!1260468 (= lt!571180 (+!4211 lt!571176 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1260468 (= lt!571176 (+!4211 lt!571177 lt!571175))))

(assert (=> b!1260468 (= lt!571175 (tuple2!21115 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4645 (array!82171 array!82173 (_ BitVec 32) (_ BitVec 32) V!48409 V!48409 (_ BitVec 32) Int) ListLongMap!18999)

(assert (=> b!1260468 (= lt!571179 (getCurrentListMap!4645 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260468 (= lt!571181 (getCurrentListMap!4645 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105854 res!840113) b!1260461))

(assert (= (and b!1260461 res!840112) b!1260466))

(assert (= (and b!1260466 res!840114) b!1260459))

(assert (= (and b!1260459 res!840110) b!1260465))

(assert (= (and b!1260465 (not res!840111)) b!1260468))

(assert (= (and b!1260468 res!840116) b!1260464))

(assert (= (and b!1260468 (not res!840115)) b!1260460))

(assert (= (and b!1260467 condMapEmpty!50224) mapIsEmpty!50224))

(assert (= (and b!1260467 (not condMapEmpty!50224)) mapNonEmpty!50224))

(get-info :version)

(assert (= (and mapNonEmpty!50224 ((_ is ValueCellFull!15378) mapValue!50224)) b!1260462))

(assert (= (and b!1260467 ((_ is ValueCellFull!15378) mapDefault!50224)) b!1260463))

(assert (= start!105854 b!1260467))

(declare-fun m!1161233 () Bool)

(assert (=> b!1260464 m!1161233))

(declare-fun m!1161235 () Bool)

(assert (=> b!1260466 m!1161235))

(declare-fun m!1161237 () Bool)

(assert (=> start!105854 m!1161237))

(declare-fun m!1161239 () Bool)

(assert (=> start!105854 m!1161239))

(declare-fun m!1161241 () Bool)

(assert (=> start!105854 m!1161241))

(declare-fun m!1161243 () Bool)

(assert (=> b!1260465 m!1161243))

(declare-fun m!1161245 () Bool)

(assert (=> b!1260465 m!1161245))

(declare-fun m!1161247 () Bool)

(assert (=> b!1260465 m!1161247))

(declare-fun m!1161249 () Bool)

(assert (=> b!1260468 m!1161249))

(declare-fun m!1161251 () Bool)

(assert (=> b!1260468 m!1161251))

(declare-fun m!1161253 () Bool)

(assert (=> b!1260468 m!1161253))

(declare-fun m!1161255 () Bool)

(assert (=> b!1260468 m!1161255))

(declare-fun m!1161257 () Bool)

(assert (=> b!1260468 m!1161257))

(declare-fun m!1161259 () Bool)

(assert (=> b!1260468 m!1161259))

(declare-fun m!1161261 () Bool)

(assert (=> b!1260468 m!1161261))

(declare-fun m!1161263 () Bool)

(assert (=> b!1260459 m!1161263))

(declare-fun m!1161265 () Bool)

(assert (=> mapNonEmpty!50224 m!1161265))

(check-sat (not b!1260464) (not b_next!27381) (not mapNonEmpty!50224) (not start!105854) (not b!1260465) (not b!1260466) (not b!1260468) b_and!45287 tp_is_empty!32283 (not b!1260459))
(check-sat b_and!45287 (not b_next!27381))
(get-model)

(declare-fun b!1260507 () Bool)

(declare-fun e!717342 () Bool)

(declare-fun call!61917 () Bool)

(assert (=> b!1260507 (= e!717342 call!61917)))

(declare-fun b!1260508 () Bool)

(declare-fun e!717341 () Bool)

(assert (=> b!1260508 (= e!717341 call!61917)))

(declare-fun b!1260509 () Bool)

(assert (=> b!1260509 (= e!717341 e!717342)))

(declare-fun lt!571216 () (_ BitVec 64))

(assert (=> b!1260509 (= lt!571216 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571217 () Unit!41997)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82171 (_ BitVec 64) (_ BitVec 32)) Unit!41997)

(assert (=> b!1260509 (= lt!571217 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!571216 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1260509 (arrayContainsKey!0 _keys!1118 lt!571216 #b00000000000000000000000000000000)))

(declare-fun lt!571218 () Unit!41997)

(assert (=> b!1260509 (= lt!571218 lt!571217)))

(declare-fun res!840143 () Bool)

(declare-datatypes ((SeekEntryResult!9968 0))(
  ( (MissingZero!9968 (index!42242 (_ BitVec 32))) (Found!9968 (index!42243 (_ BitVec 32))) (Intermediate!9968 (undefined!10780 Bool) (index!42244 (_ BitVec 32)) (x!111053 (_ BitVec 32))) (Undefined!9968) (MissingVacant!9968 (index!42245 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82171 (_ BitVec 32)) SeekEntryResult!9968)

(assert (=> b!1260509 (= res!840143 (= (seekEntryOrOpen!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9968 #b00000000000000000000000000000000)))))

(assert (=> b!1260509 (=> (not res!840143) (not e!717342))))

(declare-fun d!138309 () Bool)

(declare-fun res!840142 () Bool)

(declare-fun e!717340 () Bool)

(assert (=> d!138309 (=> res!840142 e!717340)))

(assert (=> d!138309 (= res!840142 (bvsge #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(assert (=> d!138309 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!717340)))

(declare-fun b!1260510 () Bool)

(assert (=> b!1260510 (= e!717340 e!717341)))

(declare-fun c!122548 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1260510 (= c!122548 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61914 () Bool)

(assert (=> bm!61914 (= call!61917 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(assert (= (and d!138309 (not res!840142)) b!1260510))

(assert (= (and b!1260510 c!122548) b!1260509))

(assert (= (and b!1260510 (not c!122548)) b!1260508))

(assert (= (and b!1260509 res!840143) b!1260507))

(assert (= (or b!1260507 b!1260508) bm!61914))

(declare-fun m!1161301 () Bool)

(assert (=> b!1260509 m!1161301))

(declare-fun m!1161303 () Bool)

(assert (=> b!1260509 m!1161303))

(declare-fun m!1161305 () Bool)

(assert (=> b!1260509 m!1161305))

(assert (=> b!1260509 m!1161301))

(declare-fun m!1161307 () Bool)

(assert (=> b!1260509 m!1161307))

(assert (=> b!1260510 m!1161301))

(assert (=> b!1260510 m!1161301))

(declare-fun m!1161309 () Bool)

(assert (=> b!1260510 m!1161309))

(declare-fun m!1161311 () Bool)

(assert (=> bm!61914 m!1161311))

(assert (=> b!1260466 d!138309))

(declare-fun b!1260521 () Bool)

(declare-fun e!717352 () Bool)

(declare-fun contains!7599 (List!28334 (_ BitVec 64)) Bool)

(assert (=> b!1260521 (= e!717352 (contains!7599 Nil!28331 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138311 () Bool)

(declare-fun res!840151 () Bool)

(declare-fun e!717354 () Bool)

(assert (=> d!138311 (=> res!840151 e!717354)))

(assert (=> d!138311 (= res!840151 (bvsge #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(assert (=> d!138311 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28331) e!717354)))

(declare-fun b!1260522 () Bool)

(declare-fun e!717353 () Bool)

(declare-fun call!61920 () Bool)

(assert (=> b!1260522 (= e!717353 call!61920)))

(declare-fun b!1260523 () Bool)

(assert (=> b!1260523 (= e!717353 call!61920)))

(declare-fun bm!61917 () Bool)

(declare-fun c!122551 () Bool)

(assert (=> bm!61917 (= call!61920 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122551 (Cons!28330 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000) Nil!28331) Nil!28331)))))

(declare-fun b!1260524 () Bool)

(declare-fun e!717351 () Bool)

(assert (=> b!1260524 (= e!717351 e!717353)))

(assert (=> b!1260524 (= c!122551 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1260525 () Bool)

(assert (=> b!1260525 (= e!717354 e!717351)))

(declare-fun res!840150 () Bool)

(assert (=> b!1260525 (=> (not res!840150) (not e!717351))))

(assert (=> b!1260525 (= res!840150 (not e!717352))))

(declare-fun res!840152 () Bool)

(assert (=> b!1260525 (=> (not res!840152) (not e!717352))))

(assert (=> b!1260525 (= res!840152 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138311 (not res!840151)) b!1260525))

(assert (= (and b!1260525 res!840152) b!1260521))

(assert (= (and b!1260525 res!840150) b!1260524))

(assert (= (and b!1260524 c!122551) b!1260523))

(assert (= (and b!1260524 (not c!122551)) b!1260522))

(assert (= (or b!1260523 b!1260522) bm!61917))

(assert (=> b!1260521 m!1161301))

(assert (=> b!1260521 m!1161301))

(declare-fun m!1161313 () Bool)

(assert (=> b!1260521 m!1161313))

(assert (=> bm!61917 m!1161301))

(declare-fun m!1161315 () Bool)

(assert (=> bm!61917 m!1161315))

(assert (=> b!1260524 m!1161301))

(assert (=> b!1260524 m!1161301))

(assert (=> b!1260524 m!1161309))

(assert (=> b!1260525 m!1161301))

(assert (=> b!1260525 m!1161301))

(assert (=> b!1260525 m!1161309))

(assert (=> b!1260459 d!138311))

(declare-fun d!138313 () Bool)

(assert (=> d!138313 (= (-!2141 (+!4211 lt!571176 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) #b1000000000000000000000000000000000000000000000000000000000000000) lt!571176)))

(declare-fun lt!571221 () Unit!41997)

(declare-fun choose!1875 (ListLongMap!18999 (_ BitVec 64) V!48409) Unit!41997)

(assert (=> d!138313 (= lt!571221 (choose!1875 lt!571176 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun contains!7600 (ListLongMap!18999 (_ BitVec 64)) Bool)

(assert (=> d!138313 (not (contains!7600 lt!571176 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138313 (= (addThenRemoveForNewKeyIsSame!366 lt!571176 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43) lt!571221)))

(declare-fun bs!35662 () Bool)

(assert (= bs!35662 d!138313))

(assert (=> bs!35662 m!1161251))

(assert (=> bs!35662 m!1161251))

(declare-fun m!1161317 () Bool)

(assert (=> bs!35662 m!1161317))

(declare-fun m!1161319 () Bool)

(assert (=> bs!35662 m!1161319))

(declare-fun m!1161321 () Bool)

(assert (=> bs!35662 m!1161321))

(assert (=> b!1260468 d!138313))

(declare-fun d!138315 () Bool)

(declare-fun lt!571224 () ListLongMap!18999)

(assert (=> d!138315 (not (contains!7600 lt!571224 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!144 (List!28335 (_ BitVec 64)) List!28335)

(assert (=> d!138315 (= lt!571224 (ListLongMap!19000 (removeStrictlySorted!144 (toList!9515 lt!571180) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138315 (= (-!2141 lt!571180 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571224)))

(declare-fun bs!35663 () Bool)

(assert (= bs!35663 d!138315))

(declare-fun m!1161323 () Bool)

(assert (=> bs!35663 m!1161323))

(declare-fun m!1161325 () Bool)

(assert (=> bs!35663 m!1161325))

(assert (=> b!1260468 d!138315))

(declare-fun d!138317 () Bool)

(declare-fun lt!571225 () ListLongMap!18999)

(assert (=> d!138317 (not (contains!7600 lt!571225 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138317 (= lt!571225 (ListLongMap!19000 (removeStrictlySorted!144 (toList!9515 lt!571181) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138317 (= (-!2141 lt!571181 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571225)))

(declare-fun bs!35664 () Bool)

(assert (= bs!35664 d!138317))

(declare-fun m!1161327 () Bool)

(assert (=> bs!35664 m!1161327))

(declare-fun m!1161329 () Bool)

(assert (=> bs!35664 m!1161329))

(assert (=> b!1260468 d!138317))

(declare-fun d!138319 () Bool)

(declare-fun e!717357 () Bool)

(assert (=> d!138319 e!717357))

(declare-fun res!840158 () Bool)

(assert (=> d!138319 (=> (not res!840158) (not e!717357))))

(declare-fun lt!571237 () ListLongMap!18999)

(assert (=> d!138319 (= res!840158 (contains!7600 lt!571237 (_1!10567 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!571236 () List!28335)

(assert (=> d!138319 (= lt!571237 (ListLongMap!19000 lt!571236))))

(declare-fun lt!571235 () Unit!41997)

(declare-fun lt!571234 () Unit!41997)

(assert (=> d!138319 (= lt!571235 lt!571234)))

(declare-datatypes ((Option!713 0))(
  ( (Some!712 (v!18909 V!48409)) (None!711) )
))
(declare-fun getValueByKey!662 (List!28335 (_ BitVec 64)) Option!713)

(assert (=> d!138319 (= (getValueByKey!662 lt!571236 (_1!10567 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!712 (_2!10567 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lemmaContainsTupThenGetReturnValue!333 (List!28335 (_ BitVec 64) V!48409) Unit!41997)

(assert (=> d!138319 (= lt!571234 (lemmaContainsTupThenGetReturnValue!333 lt!571236 (_1!10567 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10567 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun insertStrictlySorted!446 (List!28335 (_ BitVec 64) V!48409) List!28335)

(assert (=> d!138319 (= lt!571236 (insertStrictlySorted!446 (toList!9515 lt!571176) (_1!10567 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10567 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138319 (= (+!4211 lt!571176 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) lt!571237)))

(declare-fun b!1260530 () Bool)

(declare-fun res!840157 () Bool)

(assert (=> b!1260530 (=> (not res!840157) (not e!717357))))

(assert (=> b!1260530 (= res!840157 (= (getValueByKey!662 (toList!9515 lt!571237) (_1!10567 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!712 (_2!10567 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))))

(declare-fun b!1260531 () Bool)

(declare-fun contains!7601 (List!28335 tuple2!21114) Bool)

(assert (=> b!1260531 (= e!717357 (contains!7601 (toList!9515 lt!571237) (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (= (and d!138319 res!840158) b!1260530))

(assert (= (and b!1260530 res!840157) b!1260531))

(declare-fun m!1161331 () Bool)

(assert (=> d!138319 m!1161331))

(declare-fun m!1161333 () Bool)

(assert (=> d!138319 m!1161333))

(declare-fun m!1161335 () Bool)

(assert (=> d!138319 m!1161335))

(declare-fun m!1161337 () Bool)

(assert (=> d!138319 m!1161337))

(declare-fun m!1161339 () Bool)

(assert (=> b!1260530 m!1161339))

(declare-fun m!1161341 () Bool)

(assert (=> b!1260531 m!1161341))

(assert (=> b!1260468 d!138319))

(declare-fun call!61939 () ListLongMap!18999)

(declare-fun bm!61932 () Bool)

(declare-fun c!122564 () Bool)

(declare-fun call!61941 () ListLongMap!18999)

(declare-fun call!61940 () ListLongMap!18999)

(declare-fun c!122567 () Bool)

(declare-fun call!61937 () ListLongMap!18999)

(assert (=> bm!61932 (= call!61939 (+!4211 (ite c!122564 call!61940 (ite c!122567 call!61941 call!61937)) (ite (or c!122564 c!122567) (tuple2!21115 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun bm!61933 () Bool)

(assert (=> bm!61933 (= call!61940 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun bm!61934 () Bool)

(declare-fun call!61935 () Bool)

(declare-fun lt!571297 () ListLongMap!18999)

(assert (=> bm!61934 (= call!61935 (contains!7600 lt!571297 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1260574 () Bool)

(declare-fun e!717391 () Bool)

(assert (=> b!1260574 (= e!717391 (not call!61935))))

(declare-fun b!1260575 () Bool)

(declare-fun res!840185 () Bool)

(declare-fun e!717386 () Bool)

(assert (=> b!1260575 (=> (not res!840185) (not e!717386))))

(assert (=> b!1260575 (= res!840185 e!717391)))

(declare-fun c!122565 () Bool)

(assert (=> b!1260575 (= c!122565 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!61935 () Bool)

(declare-fun call!61936 () Bool)

(assert (=> bm!61935 (= call!61936 (contains!7600 lt!571297 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1260576 () Bool)

(declare-fun e!717392 () Unit!41997)

(declare-fun lt!571300 () Unit!41997)

(assert (=> b!1260576 (= e!717392 lt!571300)))

(declare-fun lt!571288 () ListLongMap!18999)

(assert (=> b!1260576 (= lt!571288 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571286 () (_ BitVec 64))

(assert (=> b!1260576 (= lt!571286 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571282 () (_ BitVec 64))

(assert (=> b!1260576 (= lt!571282 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571299 () Unit!41997)

(declare-fun addStillContains!1100 (ListLongMap!18999 (_ BitVec 64) V!48409 (_ BitVec 64)) Unit!41997)

(assert (=> b!1260576 (= lt!571299 (addStillContains!1100 lt!571288 lt!571286 zeroValue!871 lt!571282))))

(assert (=> b!1260576 (contains!7600 (+!4211 lt!571288 (tuple2!21115 lt!571286 zeroValue!871)) lt!571282)))

(declare-fun lt!571302 () Unit!41997)

(assert (=> b!1260576 (= lt!571302 lt!571299)))

(declare-fun lt!571303 () ListLongMap!18999)

(assert (=> b!1260576 (= lt!571303 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571285 () (_ BitVec 64))

(assert (=> b!1260576 (= lt!571285 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571290 () (_ BitVec 64))

(assert (=> b!1260576 (= lt!571290 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571283 () Unit!41997)

(declare-fun addApplyDifferent!534 (ListLongMap!18999 (_ BitVec 64) V!48409 (_ BitVec 64)) Unit!41997)

(assert (=> b!1260576 (= lt!571283 (addApplyDifferent!534 lt!571303 lt!571285 minValueAfter!43 lt!571290))))

(declare-fun apply!1028 (ListLongMap!18999 (_ BitVec 64)) V!48409)

(assert (=> b!1260576 (= (apply!1028 (+!4211 lt!571303 (tuple2!21115 lt!571285 minValueAfter!43)) lt!571290) (apply!1028 lt!571303 lt!571290))))

(declare-fun lt!571296 () Unit!41997)

(assert (=> b!1260576 (= lt!571296 lt!571283)))

(declare-fun lt!571295 () ListLongMap!18999)

(assert (=> b!1260576 (= lt!571295 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571298 () (_ BitVec 64))

(assert (=> b!1260576 (= lt!571298 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571292 () (_ BitVec 64))

(assert (=> b!1260576 (= lt!571292 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571294 () Unit!41997)

(assert (=> b!1260576 (= lt!571294 (addApplyDifferent!534 lt!571295 lt!571298 zeroValue!871 lt!571292))))

(assert (=> b!1260576 (= (apply!1028 (+!4211 lt!571295 (tuple2!21115 lt!571298 zeroValue!871)) lt!571292) (apply!1028 lt!571295 lt!571292))))

(declare-fun lt!571287 () Unit!41997)

(assert (=> b!1260576 (= lt!571287 lt!571294)))

(declare-fun lt!571289 () ListLongMap!18999)

(assert (=> b!1260576 (= lt!571289 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571284 () (_ BitVec 64))

(assert (=> b!1260576 (= lt!571284 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571291 () (_ BitVec 64))

(assert (=> b!1260576 (= lt!571291 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1260576 (= lt!571300 (addApplyDifferent!534 lt!571289 lt!571284 minValueAfter!43 lt!571291))))

(assert (=> b!1260576 (= (apply!1028 (+!4211 lt!571289 (tuple2!21115 lt!571284 minValueAfter!43)) lt!571291) (apply!1028 lt!571289 lt!571291))))

(declare-fun b!1260577 () Bool)

(declare-fun e!717388 () Bool)

(declare-fun e!717387 () Bool)

(assert (=> b!1260577 (= e!717388 e!717387)))

(declare-fun res!840181 () Bool)

(assert (=> b!1260577 (= res!840181 call!61936)))

(assert (=> b!1260577 (=> (not res!840181) (not e!717387))))

(declare-fun bm!61936 () Bool)

(declare-fun call!61938 () ListLongMap!18999)

(assert (=> bm!61936 (= call!61938 call!61939)))

(declare-fun b!1260578 () Bool)

(declare-fun e!717395 () ListLongMap!18999)

(declare-fun e!717393 () ListLongMap!18999)

(assert (=> b!1260578 (= e!717395 e!717393)))

(assert (=> b!1260578 (= c!122567 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260579 () Bool)

(declare-fun e!717396 () Bool)

(assert (=> b!1260579 (= e!717396 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1260580 () Bool)

(assert (=> b!1260580 (= e!717387 (= (apply!1028 lt!571297 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(declare-fun bm!61937 () Bool)

(assert (=> bm!61937 (= call!61937 call!61941)))

(declare-fun b!1260581 () Bool)

(declare-fun e!717385 () Bool)

(assert (=> b!1260581 (= e!717391 e!717385)))

(declare-fun res!840177 () Bool)

(assert (=> b!1260581 (= res!840177 call!61935)))

(assert (=> b!1260581 (=> (not res!840177) (not e!717385))))

(declare-fun b!1260582 () Bool)

(declare-fun res!840182 () Bool)

(assert (=> b!1260582 (=> (not res!840182) (not e!717386))))

(declare-fun e!717389 () Bool)

(assert (=> b!1260582 (= res!840182 e!717389)))

(declare-fun res!840179 () Bool)

(assert (=> b!1260582 (=> res!840179 e!717389)))

(assert (=> b!1260582 (= res!840179 (not e!717396))))

(declare-fun res!840178 () Bool)

(assert (=> b!1260582 (=> (not res!840178) (not e!717396))))

(assert (=> b!1260582 (= res!840178 (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun b!1260583 () Bool)

(assert (=> b!1260583 (= e!717393 call!61938)))

(declare-fun b!1260584 () Bool)

(declare-fun Unit!41999 () Unit!41997)

(assert (=> b!1260584 (= e!717392 Unit!41999)))

(declare-fun b!1260585 () Bool)

(declare-fun e!717390 () ListLongMap!18999)

(assert (=> b!1260585 (= e!717390 call!61938)))

(declare-fun b!1260586 () Bool)

(assert (=> b!1260586 (= e!717390 call!61937)))

(declare-fun bm!61938 () Bool)

(assert (=> bm!61938 (= call!61941 call!61940)))

(declare-fun d!138321 () Bool)

(assert (=> d!138321 e!717386))

(declare-fun res!840180 () Bool)

(assert (=> d!138321 (=> (not res!840180) (not e!717386))))

(assert (=> d!138321 (= res!840180 (or (bvsge #b00000000000000000000000000000000 (size!40172 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))))

(declare-fun lt!571301 () ListLongMap!18999)

(assert (=> d!138321 (= lt!571297 lt!571301)))

(declare-fun lt!571293 () Unit!41997)

(assert (=> d!138321 (= lt!571293 e!717392)))

(declare-fun c!122566 () Bool)

(declare-fun e!717384 () Bool)

(assert (=> d!138321 (= c!122566 e!717384)))

(declare-fun res!840184 () Bool)

(assert (=> d!138321 (=> (not res!840184) (not e!717384))))

(assert (=> d!138321 (= res!840184 (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(assert (=> d!138321 (= lt!571301 e!717395)))

(assert (=> d!138321 (= c!122564 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138321 (validMask!0 mask!1466)))

(assert (=> d!138321 (= (getCurrentListMap!4645 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571297)))

(declare-fun b!1260587 () Bool)

(assert (=> b!1260587 (= e!717388 (not call!61936))))

(declare-fun b!1260588 () Bool)

(declare-fun e!717394 () Bool)

(assert (=> b!1260588 (= e!717389 e!717394)))

(declare-fun res!840183 () Bool)

(assert (=> b!1260588 (=> (not res!840183) (not e!717394))))

(assert (=> b!1260588 (= res!840183 (contains!7600 lt!571297 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1260588 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun b!1260589 () Bool)

(declare-fun get!20278 (ValueCell!15378 V!48409) V!48409)

(declare-fun dynLambda!3473 (Int (_ BitVec 64)) V!48409)

(assert (=> b!1260589 (= e!717394 (= (apply!1028 lt!571297 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)) (get!20278 (select (arr!39636 _values!914) #b00000000000000000000000000000000) (dynLambda!3473 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1260589 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40173 _values!914)))))

(assert (=> b!1260589 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun b!1260590 () Bool)

(assert (=> b!1260590 (= e!717395 (+!4211 call!61939 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun b!1260591 () Bool)

(assert (=> b!1260591 (= e!717385 (= (apply!1028 lt!571297 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1260592 () Bool)

(assert (=> b!1260592 (= e!717386 e!717388)))

(declare-fun c!122569 () Bool)

(assert (=> b!1260592 (= c!122569 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260593 () Bool)

(assert (=> b!1260593 (= e!717384 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1260594 () Bool)

(declare-fun c!122568 () Bool)

(assert (=> b!1260594 (= c!122568 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1260594 (= e!717393 e!717390)))

(assert (= (and d!138321 c!122564) b!1260590))

(assert (= (and d!138321 (not c!122564)) b!1260578))

(assert (= (and b!1260578 c!122567) b!1260583))

(assert (= (and b!1260578 (not c!122567)) b!1260594))

(assert (= (and b!1260594 c!122568) b!1260585))

(assert (= (and b!1260594 (not c!122568)) b!1260586))

(assert (= (or b!1260585 b!1260586) bm!61937))

(assert (= (or b!1260583 bm!61937) bm!61938))

(assert (= (or b!1260583 b!1260585) bm!61936))

(assert (= (or b!1260590 bm!61938) bm!61933))

(assert (= (or b!1260590 bm!61936) bm!61932))

(assert (= (and d!138321 res!840184) b!1260593))

(assert (= (and d!138321 c!122566) b!1260576))

(assert (= (and d!138321 (not c!122566)) b!1260584))

(assert (= (and d!138321 res!840180) b!1260582))

(assert (= (and b!1260582 res!840178) b!1260579))

(assert (= (and b!1260582 (not res!840179)) b!1260588))

(assert (= (and b!1260588 res!840183) b!1260589))

(assert (= (and b!1260582 res!840182) b!1260575))

(assert (= (and b!1260575 c!122565) b!1260581))

(assert (= (and b!1260575 (not c!122565)) b!1260574))

(assert (= (and b!1260581 res!840177) b!1260591))

(assert (= (or b!1260581 b!1260574) bm!61934))

(assert (= (and b!1260575 res!840185) b!1260592))

(assert (= (and b!1260592 c!122569) b!1260577))

(assert (= (and b!1260592 (not c!122569)) b!1260587))

(assert (= (and b!1260577 res!840181) b!1260580))

(assert (= (or b!1260577 b!1260587) bm!61935))

(declare-fun b_lambda!22777 () Bool)

(assert (=> (not b_lambda!22777) (not b!1260589)))

(declare-fun t!41841 () Bool)

(declare-fun tb!11321 () Bool)

(assert (=> (and start!105854 (= defaultEntry!922 defaultEntry!922) t!41841) tb!11321))

(declare-fun result!23355 () Bool)

(assert (=> tb!11321 (= result!23355 tp_is_empty!32283)))

(assert (=> b!1260589 t!41841))

(declare-fun b_and!45291 () Bool)

(assert (= b_and!45287 (and (=> t!41841 result!23355) b_and!45291)))

(declare-fun m!1161343 () Bool)

(assert (=> bm!61935 m!1161343))

(declare-fun m!1161345 () Bool)

(assert (=> b!1260576 m!1161345))

(declare-fun m!1161347 () Bool)

(assert (=> b!1260576 m!1161347))

(declare-fun m!1161349 () Bool)

(assert (=> b!1260576 m!1161349))

(declare-fun m!1161351 () Bool)

(assert (=> b!1260576 m!1161351))

(declare-fun m!1161353 () Bool)

(assert (=> b!1260576 m!1161353))

(assert (=> b!1260576 m!1161245))

(declare-fun m!1161355 () Bool)

(assert (=> b!1260576 m!1161355))

(declare-fun m!1161357 () Bool)

(assert (=> b!1260576 m!1161357))

(assert (=> b!1260576 m!1161355))

(assert (=> b!1260576 m!1161351))

(declare-fun m!1161359 () Bool)

(assert (=> b!1260576 m!1161359))

(declare-fun m!1161361 () Bool)

(assert (=> b!1260576 m!1161361))

(declare-fun m!1161363 () Bool)

(assert (=> b!1260576 m!1161363))

(assert (=> b!1260576 m!1161363))

(declare-fun m!1161365 () Bool)

(assert (=> b!1260576 m!1161365))

(declare-fun m!1161367 () Bool)

(assert (=> b!1260576 m!1161367))

(declare-fun m!1161369 () Bool)

(assert (=> b!1260576 m!1161369))

(assert (=> b!1260576 m!1161301))

(assert (=> b!1260576 m!1161345))

(declare-fun m!1161371 () Bool)

(assert (=> b!1260576 m!1161371))

(declare-fun m!1161373 () Bool)

(assert (=> b!1260576 m!1161373))

(assert (=> d!138321 m!1161237))

(assert (=> bm!61933 m!1161245))

(declare-fun m!1161375 () Bool)

(assert (=> b!1260591 m!1161375))

(declare-fun m!1161377 () Bool)

(assert (=> bm!61934 m!1161377))

(declare-fun m!1161379 () Bool)

(assert (=> b!1260590 m!1161379))

(assert (=> b!1260579 m!1161301))

(assert (=> b!1260579 m!1161301))

(assert (=> b!1260579 m!1161309))

(declare-fun m!1161381 () Bool)

(assert (=> b!1260589 m!1161381))

(declare-fun m!1161383 () Bool)

(assert (=> b!1260589 m!1161383))

(assert (=> b!1260589 m!1161381))

(declare-fun m!1161385 () Bool)

(assert (=> b!1260589 m!1161385))

(assert (=> b!1260589 m!1161301))

(assert (=> b!1260589 m!1161301))

(declare-fun m!1161387 () Bool)

(assert (=> b!1260589 m!1161387))

(assert (=> b!1260589 m!1161383))

(assert (=> b!1260593 m!1161301))

(assert (=> b!1260593 m!1161301))

(assert (=> b!1260593 m!1161309))

(assert (=> b!1260588 m!1161301))

(assert (=> b!1260588 m!1161301))

(declare-fun m!1161389 () Bool)

(assert (=> b!1260588 m!1161389))

(declare-fun m!1161391 () Bool)

(assert (=> b!1260580 m!1161391))

(declare-fun m!1161393 () Bool)

(assert (=> bm!61932 m!1161393))

(assert (=> b!1260468 d!138321))

(declare-fun d!138323 () Bool)

(declare-fun e!717397 () Bool)

(assert (=> d!138323 e!717397))

(declare-fun res!840187 () Bool)

(assert (=> d!138323 (=> (not res!840187) (not e!717397))))

(declare-fun lt!571307 () ListLongMap!18999)

(assert (=> d!138323 (= res!840187 (contains!7600 lt!571307 (_1!10567 lt!571175)))))

(declare-fun lt!571306 () List!28335)

(assert (=> d!138323 (= lt!571307 (ListLongMap!19000 lt!571306))))

(declare-fun lt!571305 () Unit!41997)

(declare-fun lt!571304 () Unit!41997)

(assert (=> d!138323 (= lt!571305 lt!571304)))

(assert (=> d!138323 (= (getValueByKey!662 lt!571306 (_1!10567 lt!571175)) (Some!712 (_2!10567 lt!571175)))))

(assert (=> d!138323 (= lt!571304 (lemmaContainsTupThenGetReturnValue!333 lt!571306 (_1!10567 lt!571175) (_2!10567 lt!571175)))))

(assert (=> d!138323 (= lt!571306 (insertStrictlySorted!446 (toList!9515 lt!571177) (_1!10567 lt!571175) (_2!10567 lt!571175)))))

(assert (=> d!138323 (= (+!4211 lt!571177 lt!571175) lt!571307)))

(declare-fun b!1260597 () Bool)

(declare-fun res!840186 () Bool)

(assert (=> b!1260597 (=> (not res!840186) (not e!717397))))

(assert (=> b!1260597 (= res!840186 (= (getValueByKey!662 (toList!9515 lt!571307) (_1!10567 lt!571175)) (Some!712 (_2!10567 lt!571175))))))

(declare-fun b!1260598 () Bool)

(assert (=> b!1260598 (= e!717397 (contains!7601 (toList!9515 lt!571307) lt!571175))))

(assert (= (and d!138323 res!840187) b!1260597))

(assert (= (and b!1260597 res!840186) b!1260598))

(declare-fun m!1161395 () Bool)

(assert (=> d!138323 m!1161395))

(declare-fun m!1161397 () Bool)

(assert (=> d!138323 m!1161397))

(declare-fun m!1161399 () Bool)

(assert (=> d!138323 m!1161399))

(declare-fun m!1161401 () Bool)

(assert (=> d!138323 m!1161401))

(declare-fun m!1161403 () Bool)

(assert (=> b!1260597 m!1161403))

(declare-fun m!1161405 () Bool)

(assert (=> b!1260598 m!1161405))

(assert (=> b!1260468 d!138323))

(declare-fun c!122573 () Bool)

(declare-fun call!61948 () ListLongMap!18999)

(declare-fun c!122570 () Bool)

(declare-fun call!61946 () ListLongMap!18999)

(declare-fun call!61947 () ListLongMap!18999)

(declare-fun call!61944 () ListLongMap!18999)

(declare-fun bm!61939 () Bool)

(assert (=> bm!61939 (= call!61946 (+!4211 (ite c!122570 call!61947 (ite c!122573 call!61948 call!61944)) (ite (or c!122570 c!122573) (tuple2!21115 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun bm!61940 () Bool)

(assert (=> bm!61940 (= call!61947 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun bm!61941 () Bool)

(declare-fun call!61942 () Bool)

(declare-fun lt!571323 () ListLongMap!18999)

(assert (=> bm!61941 (= call!61942 (contains!7600 lt!571323 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1260599 () Bool)

(declare-fun e!717405 () Bool)

(assert (=> b!1260599 (= e!717405 (not call!61942))))

(declare-fun b!1260600 () Bool)

(declare-fun res!840196 () Bool)

(declare-fun e!717400 () Bool)

(assert (=> b!1260600 (=> (not res!840196) (not e!717400))))

(assert (=> b!1260600 (= res!840196 e!717405)))

(declare-fun c!122571 () Bool)

(assert (=> b!1260600 (= c!122571 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!61942 () Bool)

(declare-fun call!61943 () Bool)

(assert (=> bm!61942 (= call!61943 (contains!7600 lt!571323 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1260601 () Bool)

(declare-fun e!717406 () Unit!41997)

(declare-fun lt!571326 () Unit!41997)

(assert (=> b!1260601 (= e!717406 lt!571326)))

(declare-fun lt!571314 () ListLongMap!18999)

(assert (=> b!1260601 (= lt!571314 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571312 () (_ BitVec 64))

(assert (=> b!1260601 (= lt!571312 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571308 () (_ BitVec 64))

(assert (=> b!1260601 (= lt!571308 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571325 () Unit!41997)

(assert (=> b!1260601 (= lt!571325 (addStillContains!1100 lt!571314 lt!571312 zeroValue!871 lt!571308))))

(assert (=> b!1260601 (contains!7600 (+!4211 lt!571314 (tuple2!21115 lt!571312 zeroValue!871)) lt!571308)))

(declare-fun lt!571328 () Unit!41997)

(assert (=> b!1260601 (= lt!571328 lt!571325)))

(declare-fun lt!571329 () ListLongMap!18999)

(assert (=> b!1260601 (= lt!571329 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571311 () (_ BitVec 64))

(assert (=> b!1260601 (= lt!571311 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571316 () (_ BitVec 64))

(assert (=> b!1260601 (= lt!571316 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571309 () Unit!41997)

(assert (=> b!1260601 (= lt!571309 (addApplyDifferent!534 lt!571329 lt!571311 minValueBefore!43 lt!571316))))

(assert (=> b!1260601 (= (apply!1028 (+!4211 lt!571329 (tuple2!21115 lt!571311 minValueBefore!43)) lt!571316) (apply!1028 lt!571329 lt!571316))))

(declare-fun lt!571322 () Unit!41997)

(assert (=> b!1260601 (= lt!571322 lt!571309)))

(declare-fun lt!571321 () ListLongMap!18999)

(assert (=> b!1260601 (= lt!571321 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571324 () (_ BitVec 64))

(assert (=> b!1260601 (= lt!571324 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571318 () (_ BitVec 64))

(assert (=> b!1260601 (= lt!571318 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571320 () Unit!41997)

(assert (=> b!1260601 (= lt!571320 (addApplyDifferent!534 lt!571321 lt!571324 zeroValue!871 lt!571318))))

(assert (=> b!1260601 (= (apply!1028 (+!4211 lt!571321 (tuple2!21115 lt!571324 zeroValue!871)) lt!571318) (apply!1028 lt!571321 lt!571318))))

(declare-fun lt!571313 () Unit!41997)

(assert (=> b!1260601 (= lt!571313 lt!571320)))

(declare-fun lt!571315 () ListLongMap!18999)

(assert (=> b!1260601 (= lt!571315 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571310 () (_ BitVec 64))

(assert (=> b!1260601 (= lt!571310 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571317 () (_ BitVec 64))

(assert (=> b!1260601 (= lt!571317 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1260601 (= lt!571326 (addApplyDifferent!534 lt!571315 lt!571310 minValueBefore!43 lt!571317))))

(assert (=> b!1260601 (= (apply!1028 (+!4211 lt!571315 (tuple2!21115 lt!571310 minValueBefore!43)) lt!571317) (apply!1028 lt!571315 lt!571317))))

(declare-fun b!1260602 () Bool)

(declare-fun e!717402 () Bool)

(declare-fun e!717401 () Bool)

(assert (=> b!1260602 (= e!717402 e!717401)))

(declare-fun res!840192 () Bool)

(assert (=> b!1260602 (= res!840192 call!61943)))

(assert (=> b!1260602 (=> (not res!840192) (not e!717401))))

(declare-fun bm!61943 () Bool)

(declare-fun call!61945 () ListLongMap!18999)

(assert (=> bm!61943 (= call!61945 call!61946)))

(declare-fun b!1260603 () Bool)

(declare-fun e!717409 () ListLongMap!18999)

(declare-fun e!717407 () ListLongMap!18999)

(assert (=> b!1260603 (= e!717409 e!717407)))

(assert (=> b!1260603 (= c!122573 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260604 () Bool)

(declare-fun e!717410 () Bool)

(assert (=> b!1260604 (= e!717410 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1260605 () Bool)

(assert (=> b!1260605 (= e!717401 (= (apply!1028 lt!571323 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun bm!61944 () Bool)

(assert (=> bm!61944 (= call!61944 call!61948)))

(declare-fun b!1260606 () Bool)

(declare-fun e!717399 () Bool)

(assert (=> b!1260606 (= e!717405 e!717399)))

(declare-fun res!840188 () Bool)

(assert (=> b!1260606 (= res!840188 call!61942)))

(assert (=> b!1260606 (=> (not res!840188) (not e!717399))))

(declare-fun b!1260607 () Bool)

(declare-fun res!840193 () Bool)

(assert (=> b!1260607 (=> (not res!840193) (not e!717400))))

(declare-fun e!717403 () Bool)

(assert (=> b!1260607 (= res!840193 e!717403)))

(declare-fun res!840190 () Bool)

(assert (=> b!1260607 (=> res!840190 e!717403)))

(assert (=> b!1260607 (= res!840190 (not e!717410))))

(declare-fun res!840189 () Bool)

(assert (=> b!1260607 (=> (not res!840189) (not e!717410))))

(assert (=> b!1260607 (= res!840189 (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun b!1260608 () Bool)

(assert (=> b!1260608 (= e!717407 call!61945)))

(declare-fun b!1260609 () Bool)

(declare-fun Unit!42000 () Unit!41997)

(assert (=> b!1260609 (= e!717406 Unit!42000)))

(declare-fun b!1260610 () Bool)

(declare-fun e!717404 () ListLongMap!18999)

(assert (=> b!1260610 (= e!717404 call!61945)))

(declare-fun b!1260611 () Bool)

(assert (=> b!1260611 (= e!717404 call!61944)))

(declare-fun bm!61945 () Bool)

(assert (=> bm!61945 (= call!61948 call!61947)))

(declare-fun d!138325 () Bool)

(assert (=> d!138325 e!717400))

(declare-fun res!840191 () Bool)

(assert (=> d!138325 (=> (not res!840191) (not e!717400))))

(assert (=> d!138325 (= res!840191 (or (bvsge #b00000000000000000000000000000000 (size!40172 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))))

(declare-fun lt!571327 () ListLongMap!18999)

(assert (=> d!138325 (= lt!571323 lt!571327)))

(declare-fun lt!571319 () Unit!41997)

(assert (=> d!138325 (= lt!571319 e!717406)))

(declare-fun c!122572 () Bool)

(declare-fun e!717398 () Bool)

(assert (=> d!138325 (= c!122572 e!717398)))

(declare-fun res!840195 () Bool)

(assert (=> d!138325 (=> (not res!840195) (not e!717398))))

(assert (=> d!138325 (= res!840195 (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(assert (=> d!138325 (= lt!571327 e!717409)))

(assert (=> d!138325 (= c!122570 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138325 (validMask!0 mask!1466)))

(assert (=> d!138325 (= (getCurrentListMap!4645 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571323)))

(declare-fun b!1260612 () Bool)

(assert (=> b!1260612 (= e!717402 (not call!61943))))

(declare-fun b!1260613 () Bool)

(declare-fun e!717408 () Bool)

(assert (=> b!1260613 (= e!717403 e!717408)))

(declare-fun res!840194 () Bool)

(assert (=> b!1260613 (=> (not res!840194) (not e!717408))))

(assert (=> b!1260613 (= res!840194 (contains!7600 lt!571323 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1260613 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun b!1260614 () Bool)

(assert (=> b!1260614 (= e!717408 (= (apply!1028 lt!571323 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)) (get!20278 (select (arr!39636 _values!914) #b00000000000000000000000000000000) (dynLambda!3473 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1260614 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40173 _values!914)))))

(assert (=> b!1260614 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun b!1260615 () Bool)

(assert (=> b!1260615 (= e!717409 (+!4211 call!61946 (tuple2!21115 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun b!1260616 () Bool)

(assert (=> b!1260616 (= e!717399 (= (apply!1028 lt!571323 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1260617 () Bool)

(assert (=> b!1260617 (= e!717400 e!717402)))

(declare-fun c!122575 () Bool)

(assert (=> b!1260617 (= c!122575 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260618 () Bool)

(assert (=> b!1260618 (= e!717398 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1260619 () Bool)

(declare-fun c!122574 () Bool)

(assert (=> b!1260619 (= c!122574 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1260619 (= e!717407 e!717404)))

(assert (= (and d!138325 c!122570) b!1260615))

(assert (= (and d!138325 (not c!122570)) b!1260603))

(assert (= (and b!1260603 c!122573) b!1260608))

(assert (= (and b!1260603 (not c!122573)) b!1260619))

(assert (= (and b!1260619 c!122574) b!1260610))

(assert (= (and b!1260619 (not c!122574)) b!1260611))

(assert (= (or b!1260610 b!1260611) bm!61944))

(assert (= (or b!1260608 bm!61944) bm!61945))

(assert (= (or b!1260608 b!1260610) bm!61943))

(assert (= (or b!1260615 bm!61945) bm!61940))

(assert (= (or b!1260615 bm!61943) bm!61939))

(assert (= (and d!138325 res!840195) b!1260618))

(assert (= (and d!138325 c!122572) b!1260601))

(assert (= (and d!138325 (not c!122572)) b!1260609))

(assert (= (and d!138325 res!840191) b!1260607))

(assert (= (and b!1260607 res!840189) b!1260604))

(assert (= (and b!1260607 (not res!840190)) b!1260613))

(assert (= (and b!1260613 res!840194) b!1260614))

(assert (= (and b!1260607 res!840193) b!1260600))

(assert (= (and b!1260600 c!122571) b!1260606))

(assert (= (and b!1260600 (not c!122571)) b!1260599))

(assert (= (and b!1260606 res!840188) b!1260616))

(assert (= (or b!1260606 b!1260599) bm!61941))

(assert (= (and b!1260600 res!840196) b!1260617))

(assert (= (and b!1260617 c!122575) b!1260602))

(assert (= (and b!1260617 (not c!122575)) b!1260612))

(assert (= (and b!1260602 res!840192) b!1260605))

(assert (= (or b!1260602 b!1260612) bm!61942))

(declare-fun b_lambda!22779 () Bool)

(assert (=> (not b_lambda!22779) (not b!1260614)))

(assert (=> b!1260614 t!41841))

(declare-fun b_and!45293 () Bool)

(assert (= b_and!45291 (and (=> t!41841 result!23355) b_and!45293)))

(declare-fun m!1161407 () Bool)

(assert (=> bm!61942 m!1161407))

(declare-fun m!1161409 () Bool)

(assert (=> b!1260601 m!1161409))

(declare-fun m!1161411 () Bool)

(assert (=> b!1260601 m!1161411))

(declare-fun m!1161413 () Bool)

(assert (=> b!1260601 m!1161413))

(declare-fun m!1161415 () Bool)

(assert (=> b!1260601 m!1161415))

(declare-fun m!1161417 () Bool)

(assert (=> b!1260601 m!1161417))

(assert (=> b!1260601 m!1161247))

(declare-fun m!1161419 () Bool)

(assert (=> b!1260601 m!1161419))

(declare-fun m!1161421 () Bool)

(assert (=> b!1260601 m!1161421))

(assert (=> b!1260601 m!1161419))

(assert (=> b!1260601 m!1161415))

(declare-fun m!1161423 () Bool)

(assert (=> b!1260601 m!1161423))

(declare-fun m!1161425 () Bool)

(assert (=> b!1260601 m!1161425))

(declare-fun m!1161427 () Bool)

(assert (=> b!1260601 m!1161427))

(assert (=> b!1260601 m!1161427))

(declare-fun m!1161429 () Bool)

(assert (=> b!1260601 m!1161429))

(declare-fun m!1161431 () Bool)

(assert (=> b!1260601 m!1161431))

(declare-fun m!1161433 () Bool)

(assert (=> b!1260601 m!1161433))

(assert (=> b!1260601 m!1161301))

(assert (=> b!1260601 m!1161409))

(declare-fun m!1161435 () Bool)

(assert (=> b!1260601 m!1161435))

(declare-fun m!1161437 () Bool)

(assert (=> b!1260601 m!1161437))

(assert (=> d!138325 m!1161237))

(assert (=> bm!61940 m!1161247))

(declare-fun m!1161439 () Bool)

(assert (=> b!1260616 m!1161439))

(declare-fun m!1161441 () Bool)

(assert (=> bm!61941 m!1161441))

(declare-fun m!1161443 () Bool)

(assert (=> b!1260615 m!1161443))

(assert (=> b!1260604 m!1161301))

(assert (=> b!1260604 m!1161301))

(assert (=> b!1260604 m!1161309))

(assert (=> b!1260614 m!1161381))

(assert (=> b!1260614 m!1161383))

(assert (=> b!1260614 m!1161381))

(assert (=> b!1260614 m!1161385))

(assert (=> b!1260614 m!1161301))

(assert (=> b!1260614 m!1161301))

(declare-fun m!1161445 () Bool)

(assert (=> b!1260614 m!1161445))

(assert (=> b!1260614 m!1161383))

(assert (=> b!1260618 m!1161301))

(assert (=> b!1260618 m!1161301))

(assert (=> b!1260618 m!1161309))

(assert (=> b!1260613 m!1161301))

(assert (=> b!1260613 m!1161301))

(declare-fun m!1161447 () Bool)

(assert (=> b!1260613 m!1161447))

(declare-fun m!1161449 () Bool)

(assert (=> b!1260605 m!1161449))

(declare-fun m!1161451 () Bool)

(assert (=> bm!61939 m!1161451))

(assert (=> b!1260468 d!138325))

(declare-fun d!138327 () Bool)

(assert (=> d!138327 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105854 d!138327))

(declare-fun d!138329 () Bool)

(assert (=> d!138329 (= (array_inv!30127 _keys!1118) (bvsge (size!40172 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105854 d!138329))

(declare-fun d!138331 () Bool)

(assert (=> d!138331 (= (array_inv!30128 _values!914) (bvsge (size!40173 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105854 d!138331))

(declare-fun d!138333 () Bool)

(declare-fun e!717411 () Bool)

(assert (=> d!138333 e!717411))

(declare-fun res!840198 () Bool)

(assert (=> d!138333 (=> (not res!840198) (not e!717411))))

(declare-fun lt!571333 () ListLongMap!18999)

(assert (=> d!138333 (= res!840198 (contains!7600 lt!571333 (_1!10567 lt!571175)))))

(declare-fun lt!571332 () List!28335)

(assert (=> d!138333 (= lt!571333 (ListLongMap!19000 lt!571332))))

(declare-fun lt!571331 () Unit!41997)

(declare-fun lt!571330 () Unit!41997)

(assert (=> d!138333 (= lt!571331 lt!571330)))

(assert (=> d!138333 (= (getValueByKey!662 lt!571332 (_1!10567 lt!571175)) (Some!712 (_2!10567 lt!571175)))))

(assert (=> d!138333 (= lt!571330 (lemmaContainsTupThenGetReturnValue!333 lt!571332 (_1!10567 lt!571175) (_2!10567 lt!571175)))))

(assert (=> d!138333 (= lt!571332 (insertStrictlySorted!446 (toList!9515 lt!571178) (_1!10567 lt!571175) (_2!10567 lt!571175)))))

(assert (=> d!138333 (= (+!4211 lt!571178 lt!571175) lt!571333)))

(declare-fun b!1260620 () Bool)

(declare-fun res!840197 () Bool)

(assert (=> b!1260620 (=> (not res!840197) (not e!717411))))

(assert (=> b!1260620 (= res!840197 (= (getValueByKey!662 (toList!9515 lt!571333) (_1!10567 lt!571175)) (Some!712 (_2!10567 lt!571175))))))

(declare-fun b!1260621 () Bool)

(assert (=> b!1260621 (= e!717411 (contains!7601 (toList!9515 lt!571333) lt!571175))))

(assert (= (and d!138333 res!840198) b!1260620))

(assert (= (and b!1260620 res!840197) b!1260621))

(declare-fun m!1161453 () Bool)

(assert (=> d!138333 m!1161453))

(declare-fun m!1161455 () Bool)

(assert (=> d!138333 m!1161455))

(declare-fun m!1161457 () Bool)

(assert (=> d!138333 m!1161457))

(declare-fun m!1161459 () Bool)

(assert (=> d!138333 m!1161459))

(declare-fun m!1161461 () Bool)

(assert (=> b!1260620 m!1161461))

(declare-fun m!1161463 () Bool)

(assert (=> b!1260621 m!1161463))

(assert (=> b!1260464 d!138333))

(declare-fun d!138335 () Bool)

(assert (=> d!138335 (= (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571336 () Unit!41997)

(declare-fun choose!1876 (array!82171 array!82173 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48409 V!48409 V!48409 V!48409 (_ BitVec 32) Int) Unit!41997)

(assert (=> d!138335 (= lt!571336 (choose!1876 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138335 (validMask!0 mask!1466)))

(assert (=> d!138335 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1174 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571336)))

(declare-fun bs!35665 () Bool)

(assert (= bs!35665 d!138335))

(assert (=> bs!35665 m!1161247))

(assert (=> bs!35665 m!1161245))

(declare-fun m!1161465 () Bool)

(assert (=> bs!35665 m!1161465))

(assert (=> bs!35665 m!1161237))

(assert (=> b!1260465 d!138335))

(declare-fun b!1260646 () Bool)

(declare-fun e!717430 () ListLongMap!18999)

(declare-fun e!717427 () ListLongMap!18999)

(assert (=> b!1260646 (= e!717430 e!717427)))

(declare-fun c!122587 () Bool)

(assert (=> b!1260646 (= c!122587 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1260647 () Bool)

(declare-fun lt!571356 () Unit!41997)

(declare-fun lt!571352 () Unit!41997)

(assert (=> b!1260647 (= lt!571356 lt!571352)))

(declare-fun lt!571351 () V!48409)

(declare-fun lt!571353 () ListLongMap!18999)

(declare-fun lt!571355 () (_ BitVec 64))

(declare-fun lt!571357 () (_ BitVec 64))

(assert (=> b!1260647 (not (contains!7600 (+!4211 lt!571353 (tuple2!21115 lt!571357 lt!571351)) lt!571355))))

(declare-fun addStillNotContains!323 (ListLongMap!18999 (_ BitVec 64) V!48409 (_ BitVec 64)) Unit!41997)

(assert (=> b!1260647 (= lt!571352 (addStillNotContains!323 lt!571353 lt!571357 lt!571351 lt!571355))))

(assert (=> b!1260647 (= lt!571355 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1260647 (= lt!571351 (get!20278 (select (arr!39636 _values!914) #b00000000000000000000000000000000) (dynLambda!3473 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1260647 (= lt!571357 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!61951 () ListLongMap!18999)

(assert (=> b!1260647 (= lt!571353 call!61951)))

(assert (=> b!1260647 (= e!717427 (+!4211 call!61951 (tuple2!21115 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000) (get!20278 (select (arr!39636 _values!914) #b00000000000000000000000000000000) (dynLambda!3473 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!138337 () Bool)

(declare-fun e!717429 () Bool)

(assert (=> d!138337 e!717429))

(declare-fun res!840207 () Bool)

(assert (=> d!138337 (=> (not res!840207) (not e!717429))))

(declare-fun lt!571354 () ListLongMap!18999)

(assert (=> d!138337 (= res!840207 (not (contains!7600 lt!571354 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138337 (= lt!571354 e!717430)))

(declare-fun c!122584 () Bool)

(assert (=> d!138337 (= c!122584 (bvsge #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(assert (=> d!138337 (validMask!0 mask!1466)))

(assert (=> d!138337 (= (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571354)))

(declare-fun b!1260648 () Bool)

(declare-fun e!717431 () Bool)

(assert (=> b!1260648 (= e!717431 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1260648 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1260649 () Bool)

(declare-fun e!717428 () Bool)

(declare-fun e!717432 () Bool)

(assert (=> b!1260649 (= e!717428 e!717432)))

(declare-fun c!122585 () Bool)

(assert (=> b!1260649 (= c!122585 (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun bm!61948 () Bool)

(assert (=> bm!61948 (= call!61951 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1260650 () Bool)

(assert (=> b!1260650 (= e!717432 (= lt!571354 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1260651 () Bool)

(declare-fun e!717426 () Bool)

(assert (=> b!1260651 (= e!717428 e!717426)))

(assert (=> b!1260651 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun res!840210 () Bool)

(assert (=> b!1260651 (= res!840210 (contains!7600 lt!571354 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1260651 (=> (not res!840210) (not e!717426))))

(declare-fun b!1260652 () Bool)

(assert (=> b!1260652 (= e!717427 call!61951)))

(declare-fun b!1260653 () Bool)

(assert (=> b!1260653 (= e!717429 e!717428)))

(declare-fun c!122586 () Bool)

(assert (=> b!1260653 (= c!122586 e!717431)))

(declare-fun res!840209 () Bool)

(assert (=> b!1260653 (=> (not res!840209) (not e!717431))))

(assert (=> b!1260653 (= res!840209 (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun b!1260654 () Bool)

(assert (=> b!1260654 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(assert (=> b!1260654 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40173 _values!914)))))

(assert (=> b!1260654 (= e!717426 (= (apply!1028 lt!571354 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)) (get!20278 (select (arr!39636 _values!914) #b00000000000000000000000000000000) (dynLambda!3473 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1260655 () Bool)

(declare-fun isEmpty!1038 (ListLongMap!18999) Bool)

(assert (=> b!1260655 (= e!717432 (isEmpty!1038 lt!571354))))

(declare-fun b!1260656 () Bool)

(assert (=> b!1260656 (= e!717430 (ListLongMap!19000 Nil!28332))))

(declare-fun b!1260657 () Bool)

(declare-fun res!840208 () Bool)

(assert (=> b!1260657 (=> (not res!840208) (not e!717429))))

(assert (=> b!1260657 (= res!840208 (not (contains!7600 lt!571354 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138337 c!122584) b!1260656))

(assert (= (and d!138337 (not c!122584)) b!1260646))

(assert (= (and b!1260646 c!122587) b!1260647))

(assert (= (and b!1260646 (not c!122587)) b!1260652))

(assert (= (or b!1260647 b!1260652) bm!61948))

(assert (= (and d!138337 res!840207) b!1260657))

(assert (= (and b!1260657 res!840208) b!1260653))

(assert (= (and b!1260653 res!840209) b!1260648))

(assert (= (and b!1260653 c!122586) b!1260651))

(assert (= (and b!1260653 (not c!122586)) b!1260649))

(assert (= (and b!1260651 res!840210) b!1260654))

(assert (= (and b!1260649 c!122585) b!1260650))

(assert (= (and b!1260649 (not c!122585)) b!1260655))

(declare-fun b_lambda!22781 () Bool)

(assert (=> (not b_lambda!22781) (not b!1260647)))

(assert (=> b!1260647 t!41841))

(declare-fun b_and!45295 () Bool)

(assert (= b_and!45293 (and (=> t!41841 result!23355) b_and!45295)))

(declare-fun b_lambda!22783 () Bool)

(assert (=> (not b_lambda!22783) (not b!1260654)))

(assert (=> b!1260654 t!41841))

(declare-fun b_and!45297 () Bool)

(assert (= b_and!45295 (and (=> t!41841 result!23355) b_and!45297)))

(assert (=> b!1260654 m!1161301))

(assert (=> b!1260654 m!1161383))

(assert (=> b!1260654 m!1161381))

(assert (=> b!1260654 m!1161385))

(assert (=> b!1260654 m!1161383))

(assert (=> b!1260654 m!1161381))

(assert (=> b!1260654 m!1161301))

(declare-fun m!1161467 () Bool)

(assert (=> b!1260654 m!1161467))

(declare-fun m!1161469 () Bool)

(assert (=> bm!61948 m!1161469))

(assert (=> b!1260651 m!1161301))

(assert (=> b!1260651 m!1161301))

(declare-fun m!1161471 () Bool)

(assert (=> b!1260651 m!1161471))

(assert (=> b!1260646 m!1161301))

(assert (=> b!1260646 m!1161301))

(assert (=> b!1260646 m!1161309))

(declare-fun m!1161473 () Bool)

(assert (=> b!1260655 m!1161473))

(declare-fun m!1161475 () Bool)

(assert (=> b!1260657 m!1161475))

(assert (=> b!1260650 m!1161469))

(declare-fun m!1161477 () Bool)

(assert (=> d!138337 m!1161477))

(assert (=> d!138337 m!1161237))

(declare-fun m!1161479 () Bool)

(assert (=> b!1260647 m!1161479))

(assert (=> b!1260647 m!1161383))

(assert (=> b!1260647 m!1161381))

(assert (=> b!1260647 m!1161385))

(assert (=> b!1260647 m!1161383))

(declare-fun m!1161481 () Bool)

(assert (=> b!1260647 m!1161481))

(declare-fun m!1161483 () Bool)

(assert (=> b!1260647 m!1161483))

(assert (=> b!1260647 m!1161301))

(assert (=> b!1260647 m!1161479))

(declare-fun m!1161485 () Bool)

(assert (=> b!1260647 m!1161485))

(assert (=> b!1260647 m!1161381))

(assert (=> b!1260648 m!1161301))

(assert (=> b!1260648 m!1161301))

(assert (=> b!1260648 m!1161309))

(assert (=> b!1260465 d!138337))

(declare-fun b!1260658 () Bool)

(declare-fun e!717437 () ListLongMap!18999)

(declare-fun e!717434 () ListLongMap!18999)

(assert (=> b!1260658 (= e!717437 e!717434)))

(declare-fun c!122591 () Bool)

(assert (=> b!1260658 (= c!122591 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1260659 () Bool)

(declare-fun lt!571363 () Unit!41997)

(declare-fun lt!571359 () Unit!41997)

(assert (=> b!1260659 (= lt!571363 lt!571359)))

(declare-fun lt!571362 () (_ BitVec 64))

(declare-fun lt!571360 () ListLongMap!18999)

(declare-fun lt!571358 () V!48409)

(declare-fun lt!571364 () (_ BitVec 64))

(assert (=> b!1260659 (not (contains!7600 (+!4211 lt!571360 (tuple2!21115 lt!571364 lt!571358)) lt!571362))))

(assert (=> b!1260659 (= lt!571359 (addStillNotContains!323 lt!571360 lt!571364 lt!571358 lt!571362))))

(assert (=> b!1260659 (= lt!571362 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1260659 (= lt!571358 (get!20278 (select (arr!39636 _values!914) #b00000000000000000000000000000000) (dynLambda!3473 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1260659 (= lt!571364 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!61952 () ListLongMap!18999)

(assert (=> b!1260659 (= lt!571360 call!61952)))

(assert (=> b!1260659 (= e!717434 (+!4211 call!61952 (tuple2!21115 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000) (get!20278 (select (arr!39636 _values!914) #b00000000000000000000000000000000) (dynLambda!3473 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!138339 () Bool)

(declare-fun e!717436 () Bool)

(assert (=> d!138339 e!717436))

(declare-fun res!840211 () Bool)

(assert (=> d!138339 (=> (not res!840211) (not e!717436))))

(declare-fun lt!571361 () ListLongMap!18999)

(assert (=> d!138339 (= res!840211 (not (contains!7600 lt!571361 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138339 (= lt!571361 e!717437)))

(declare-fun c!122588 () Bool)

(assert (=> d!138339 (= c!122588 (bvsge #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(assert (=> d!138339 (validMask!0 mask!1466)))

(assert (=> d!138339 (= (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571361)))

(declare-fun b!1260660 () Bool)

(declare-fun e!717438 () Bool)

(assert (=> b!1260660 (= e!717438 (validKeyInArray!0 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1260660 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1260661 () Bool)

(declare-fun e!717435 () Bool)

(declare-fun e!717439 () Bool)

(assert (=> b!1260661 (= e!717435 e!717439)))

(declare-fun c!122589 () Bool)

(assert (=> b!1260661 (= c!122589 (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun bm!61949 () Bool)

(assert (=> bm!61949 (= call!61952 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1260662 () Bool)

(assert (=> b!1260662 (= e!717439 (= lt!571361 (getCurrentListMapNoExtraKeys!5856 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1260663 () Bool)

(declare-fun e!717433 () Bool)

(assert (=> b!1260663 (= e!717435 e!717433)))

(assert (=> b!1260663 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun res!840214 () Bool)

(assert (=> b!1260663 (= res!840214 (contains!7600 lt!571361 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1260663 (=> (not res!840214) (not e!717433))))

(declare-fun b!1260664 () Bool)

(assert (=> b!1260664 (= e!717434 call!61952)))

(declare-fun b!1260665 () Bool)

(assert (=> b!1260665 (= e!717436 e!717435)))

(declare-fun c!122590 () Bool)

(assert (=> b!1260665 (= c!122590 e!717438)))

(declare-fun res!840213 () Bool)

(assert (=> b!1260665 (=> (not res!840213) (not e!717438))))

(assert (=> b!1260665 (= res!840213 (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(declare-fun b!1260666 () Bool)

(assert (=> b!1260666 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40172 _keys!1118)))))

(assert (=> b!1260666 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40173 _values!914)))))

(assert (=> b!1260666 (= e!717433 (= (apply!1028 lt!571361 (select (arr!39635 _keys!1118) #b00000000000000000000000000000000)) (get!20278 (select (arr!39636 _values!914) #b00000000000000000000000000000000) (dynLambda!3473 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1260667 () Bool)

(assert (=> b!1260667 (= e!717439 (isEmpty!1038 lt!571361))))

(declare-fun b!1260668 () Bool)

(assert (=> b!1260668 (= e!717437 (ListLongMap!19000 Nil!28332))))

(declare-fun b!1260669 () Bool)

(declare-fun res!840212 () Bool)

(assert (=> b!1260669 (=> (not res!840212) (not e!717436))))

(assert (=> b!1260669 (= res!840212 (not (contains!7600 lt!571361 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138339 c!122588) b!1260668))

(assert (= (and d!138339 (not c!122588)) b!1260658))

(assert (= (and b!1260658 c!122591) b!1260659))

(assert (= (and b!1260658 (not c!122591)) b!1260664))

(assert (= (or b!1260659 b!1260664) bm!61949))

(assert (= (and d!138339 res!840211) b!1260669))

(assert (= (and b!1260669 res!840212) b!1260665))

(assert (= (and b!1260665 res!840213) b!1260660))

(assert (= (and b!1260665 c!122590) b!1260663))

(assert (= (and b!1260665 (not c!122590)) b!1260661))

(assert (= (and b!1260663 res!840214) b!1260666))

(assert (= (and b!1260661 c!122589) b!1260662))

(assert (= (and b!1260661 (not c!122589)) b!1260667))

(declare-fun b_lambda!22785 () Bool)

(assert (=> (not b_lambda!22785) (not b!1260659)))

(assert (=> b!1260659 t!41841))

(declare-fun b_and!45299 () Bool)

(assert (= b_and!45297 (and (=> t!41841 result!23355) b_and!45299)))

(declare-fun b_lambda!22787 () Bool)

(assert (=> (not b_lambda!22787) (not b!1260666)))

(assert (=> b!1260666 t!41841))

(declare-fun b_and!45301 () Bool)

(assert (= b_and!45299 (and (=> t!41841 result!23355) b_and!45301)))

(assert (=> b!1260666 m!1161301))

(assert (=> b!1260666 m!1161383))

(assert (=> b!1260666 m!1161381))

(assert (=> b!1260666 m!1161385))

(assert (=> b!1260666 m!1161383))

(assert (=> b!1260666 m!1161381))

(assert (=> b!1260666 m!1161301))

(declare-fun m!1161487 () Bool)

(assert (=> b!1260666 m!1161487))

(declare-fun m!1161489 () Bool)

(assert (=> bm!61949 m!1161489))

(assert (=> b!1260663 m!1161301))

(assert (=> b!1260663 m!1161301))

(declare-fun m!1161491 () Bool)

(assert (=> b!1260663 m!1161491))

(assert (=> b!1260658 m!1161301))

(assert (=> b!1260658 m!1161301))

(assert (=> b!1260658 m!1161309))

(declare-fun m!1161493 () Bool)

(assert (=> b!1260667 m!1161493))

(declare-fun m!1161495 () Bool)

(assert (=> b!1260669 m!1161495))

(assert (=> b!1260662 m!1161489))

(declare-fun m!1161497 () Bool)

(assert (=> d!138339 m!1161497))

(assert (=> d!138339 m!1161237))

(declare-fun m!1161499 () Bool)

(assert (=> b!1260659 m!1161499))

(assert (=> b!1260659 m!1161383))

(assert (=> b!1260659 m!1161381))

(assert (=> b!1260659 m!1161385))

(assert (=> b!1260659 m!1161383))

(declare-fun m!1161501 () Bool)

(assert (=> b!1260659 m!1161501))

(declare-fun m!1161503 () Bool)

(assert (=> b!1260659 m!1161503))

(assert (=> b!1260659 m!1161301))

(assert (=> b!1260659 m!1161499))

(declare-fun m!1161505 () Bool)

(assert (=> b!1260659 m!1161505))

(assert (=> b!1260659 m!1161381))

(assert (=> b!1260660 m!1161301))

(assert (=> b!1260660 m!1161301))

(assert (=> b!1260660 m!1161309))

(assert (=> b!1260465 d!138339))

(declare-fun mapNonEmpty!50230 () Bool)

(declare-fun mapRes!50230 () Bool)

(declare-fun tp!95682 () Bool)

(declare-fun e!717445 () Bool)

(assert (=> mapNonEmpty!50230 (= mapRes!50230 (and tp!95682 e!717445))))

(declare-fun mapKey!50230 () (_ BitVec 32))

(declare-fun mapValue!50230 () ValueCell!15378)

(declare-fun mapRest!50230 () (Array (_ BitVec 32) ValueCell!15378))

(assert (=> mapNonEmpty!50230 (= mapRest!50224 (store mapRest!50230 mapKey!50230 mapValue!50230))))

(declare-fun b!1260676 () Bool)

(assert (=> b!1260676 (= e!717445 tp_is_empty!32283)))

(declare-fun condMapEmpty!50230 () Bool)

(declare-fun mapDefault!50230 () ValueCell!15378)

(assert (=> mapNonEmpty!50224 (= condMapEmpty!50230 (= mapRest!50224 ((as const (Array (_ BitVec 32) ValueCell!15378)) mapDefault!50230)))))

(declare-fun e!717444 () Bool)

(assert (=> mapNonEmpty!50224 (= tp!95672 (and e!717444 mapRes!50230))))

(declare-fun mapIsEmpty!50230 () Bool)

(assert (=> mapIsEmpty!50230 mapRes!50230))

(declare-fun b!1260677 () Bool)

(assert (=> b!1260677 (= e!717444 tp_is_empty!32283)))

(assert (= (and mapNonEmpty!50224 condMapEmpty!50230) mapIsEmpty!50230))

(assert (= (and mapNonEmpty!50224 (not condMapEmpty!50230)) mapNonEmpty!50230))

(assert (= (and mapNonEmpty!50230 ((_ is ValueCellFull!15378) mapValue!50230)) b!1260676))

(assert (= (and mapNonEmpty!50224 ((_ is ValueCellFull!15378) mapDefault!50230)) b!1260677))

(declare-fun m!1161507 () Bool)

(assert (=> mapNonEmpty!50230 m!1161507))

(declare-fun b_lambda!22789 () Bool)

(assert (= b_lambda!22783 (or (and start!105854 b_free!27381) b_lambda!22789)))

(declare-fun b_lambda!22791 () Bool)

(assert (= b_lambda!22779 (or (and start!105854 b_free!27381) b_lambda!22791)))

(declare-fun b_lambda!22793 () Bool)

(assert (= b_lambda!22787 (or (and start!105854 b_free!27381) b_lambda!22793)))

(declare-fun b_lambda!22795 () Bool)

(assert (= b_lambda!22781 (or (and start!105854 b_free!27381) b_lambda!22795)))

(declare-fun b_lambda!22797 () Bool)

(assert (= b_lambda!22785 (or (and start!105854 b_free!27381) b_lambda!22797)))

(declare-fun b_lambda!22799 () Bool)

(assert (= b_lambda!22777 (or (and start!105854 b_free!27381) b_lambda!22799)))

(check-sat (not d!138333) (not b!1260655) (not b_next!27381) (not b!1260618) (not b!1260509) (not d!138323) (not bm!61939) (not d!138317) (not d!138321) (not bm!61948) (not d!138337) (not b!1260651) (not b!1260659) (not b!1260525) (not b!1260621) (not bm!61933) (not b!1260620) (not d!138319) (not b!1260654) (not b!1260613) (not b!1260614) (not bm!61914) (not b!1260521) (not b!1260580) (not d!138315) (not bm!61940) (not b!1260593) (not d!138335) (not b!1260590) (not bm!61949) (not b_lambda!22793) (not b!1260588) (not b!1260616) (not b!1260666) (not bm!61917) (not b!1260667) (not b_lambda!22797) (not b!1260660) (not b!1260579) (not b_lambda!22795) (not d!138339) (not d!138313) (not mapNonEmpty!50230) (not b!1260615) tp_is_empty!32283 (not b!1260524) (not b_lambda!22791) (not b!1260650) (not bm!61942) (not b!1260591) (not b!1260646) (not b!1260510) (not b!1260597) (not b!1260531) (not b!1260662) (not b_lambda!22799) (not b!1260598) (not b!1260658) (not b!1260589) (not b!1260601) (not bm!61932) (not bm!61934) (not bm!61935) (not b!1260657) (not b_lambda!22789) (not b!1260605) (not b!1260648) (not b!1260576) (not b!1260669) (not b!1260647) (not d!138325) (not b!1260663) (not b!1260530) b_and!45301 (not bm!61941) (not b!1260604))
(check-sat b_and!45301 (not b_next!27381))
