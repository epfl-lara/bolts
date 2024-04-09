; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105408 () Bool)

(assert start!105408)

(declare-fun b_free!27045 () Bool)

(declare-fun b_next!27045 () Bool)

(assert (=> start!105408 (= b_free!27045 (not b_next!27045))))

(declare-fun tp!94646 () Bool)

(declare-fun b_and!44893 () Bool)

(assert (=> start!105408 (= tp!94646 b_and!44893)))

(declare-fun b!1255358 () Bool)

(declare-fun e!713507 () Bool)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((array!81527 0))(
  ( (array!81528 (arr!39319 (Array (_ BitVec 32) (_ BitVec 64))) (size!39856 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81527)

(assert (=> b!1255358 (= e!713507 (not (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!39856 _keys!1118)))))))

(declare-datatypes ((V!47961 0))(
  ( (V!47962 (val!16036 Int)) )
))
(declare-datatypes ((tuple2!20852 0))(
  ( (tuple2!20853 (_1!10436 (_ BitVec 64)) (_2!10436 V!47961)) )
))
(declare-datatypes ((List!28091 0))(
  ( (Nil!28088) (Cons!28087 (h!29296 tuple2!20852) (t!41583 List!28091)) )
))
(declare-datatypes ((ListLongMap!18737 0))(
  ( (ListLongMap!18738 (toList!9384 List!28091)) )
))
(declare-fun lt!567523 () ListLongMap!18737)

(declare-fun lt!567524 () ListLongMap!18737)

(assert (=> b!1255358 (= lt!567523 lt!567524)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41742 0))(
  ( (Unit!41743) )
))
(declare-fun lt!567522 () Unit!41742)

(declare-fun minValueAfter!43 () V!47961)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47961)

(declare-datatypes ((ValueCell!15210 0))(
  ( (ValueCellFull!15210 (v!18736 V!47961)) (EmptyCell!15210) )
))
(declare-datatypes ((array!81529 0))(
  ( (array!81530 (arr!39320 (Array (_ BitVec 32) ValueCell!15210)) (size!39857 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81529)

(declare-fun minValueBefore!43 () V!47961)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1063 (array!81527 array!81529 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47961 V!47961 V!47961 V!47961 (_ BitVec 32) Int) Unit!41742)

(assert (=> b!1255358 (= lt!567522 (lemmaNoChangeToArrayThenSameMapNoExtras!1063 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5745 (array!81527 array!81529 (_ BitVec 32) (_ BitVec 32) V!47961 V!47961 (_ BitVec 32) Int) ListLongMap!18737)

(assert (=> b!1255358 (= lt!567524 (getCurrentListMapNoExtraKeys!5745 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255358 (= lt!567523 (getCurrentListMapNoExtraKeys!5745 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255359 () Bool)

(declare-fun res!837016 () Bool)

(assert (=> b!1255359 (=> (not res!837016) (not e!713507))))

(assert (=> b!1255359 (= res!837016 (and (= (size!39857 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39856 _keys!1118) (size!39857 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49702 () Bool)

(declare-fun mapRes!49702 () Bool)

(assert (=> mapIsEmpty!49702 mapRes!49702))

(declare-fun b!1255360 () Bool)

(declare-fun e!713508 () Bool)

(declare-fun tp_is_empty!31947 () Bool)

(assert (=> b!1255360 (= e!713508 tp_is_empty!31947)))

(declare-fun b!1255361 () Bool)

(declare-fun e!713504 () Bool)

(assert (=> b!1255361 (= e!713504 (and e!713508 mapRes!49702))))

(declare-fun condMapEmpty!49702 () Bool)

(declare-fun mapDefault!49702 () ValueCell!15210)

(assert (=> b!1255361 (= condMapEmpty!49702 (= (arr!39320 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15210)) mapDefault!49702)))))

(declare-fun b!1255362 () Bool)

(declare-fun e!713505 () Bool)

(assert (=> b!1255362 (= e!713505 tp_is_empty!31947)))

(declare-fun b!1255363 () Bool)

(declare-fun res!837013 () Bool)

(assert (=> b!1255363 (=> (not res!837013) (not e!713507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81527 (_ BitVec 32)) Bool)

(assert (=> b!1255363 (= res!837013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!837015 () Bool)

(assert (=> start!105408 (=> (not res!837015) (not e!713507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105408 (= res!837015 (validMask!0 mask!1466))))

(assert (=> start!105408 e!713507))

(assert (=> start!105408 true))

(assert (=> start!105408 tp!94646))

(assert (=> start!105408 tp_is_empty!31947))

(declare-fun array_inv!29907 (array!81527) Bool)

(assert (=> start!105408 (array_inv!29907 _keys!1118)))

(declare-fun array_inv!29908 (array!81529) Bool)

(assert (=> start!105408 (and (array_inv!29908 _values!914) e!713504)))

(declare-fun mapNonEmpty!49702 () Bool)

(declare-fun tp!94647 () Bool)

(assert (=> mapNonEmpty!49702 (= mapRes!49702 (and tp!94647 e!713505))))

(declare-fun mapKey!49702 () (_ BitVec 32))

(declare-fun mapRest!49702 () (Array (_ BitVec 32) ValueCell!15210))

(declare-fun mapValue!49702 () ValueCell!15210)

(assert (=> mapNonEmpty!49702 (= (arr!39320 _values!914) (store mapRest!49702 mapKey!49702 mapValue!49702))))

(declare-fun b!1255364 () Bool)

(declare-fun res!837014 () Bool)

(assert (=> b!1255364 (=> (not res!837014) (not e!713507))))

(declare-datatypes ((List!28092 0))(
  ( (Nil!28089) (Cons!28088 (h!29297 (_ BitVec 64)) (t!41584 List!28092)) )
))
(declare-fun arrayNoDuplicates!0 (array!81527 (_ BitVec 32) List!28092) Bool)

(assert (=> b!1255364 (= res!837014 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28089))))

(assert (= (and start!105408 res!837015) b!1255359))

(assert (= (and b!1255359 res!837016) b!1255363))

(assert (= (and b!1255363 res!837013) b!1255364))

(assert (= (and b!1255364 res!837014) b!1255358))

(assert (= (and b!1255361 condMapEmpty!49702) mapIsEmpty!49702))

(assert (= (and b!1255361 (not condMapEmpty!49702)) mapNonEmpty!49702))

(get-info :version)

(assert (= (and mapNonEmpty!49702 ((_ is ValueCellFull!15210) mapValue!49702)) b!1255362))

(assert (= (and b!1255361 ((_ is ValueCellFull!15210) mapDefault!49702)) b!1255360))

(assert (= start!105408 b!1255361))

(declare-fun m!1156139 () Bool)

(assert (=> mapNonEmpty!49702 m!1156139))

(declare-fun m!1156141 () Bool)

(assert (=> start!105408 m!1156141))

(declare-fun m!1156143 () Bool)

(assert (=> start!105408 m!1156143))

(declare-fun m!1156145 () Bool)

(assert (=> start!105408 m!1156145))

(declare-fun m!1156147 () Bool)

(assert (=> b!1255363 m!1156147))

(declare-fun m!1156149 () Bool)

(assert (=> b!1255364 m!1156149))

(declare-fun m!1156151 () Bool)

(assert (=> b!1255358 m!1156151))

(declare-fun m!1156153 () Bool)

(assert (=> b!1255358 m!1156153))

(declare-fun m!1156155 () Bool)

(assert (=> b!1255358 m!1156155))

(check-sat (not b_next!27045) (not mapNonEmpty!49702) (not b!1255364) b_and!44893 (not b!1255363) (not start!105408) tp_is_empty!31947 (not b!1255358))
(check-sat b_and!44893 (not b_next!27045))
(get-model)

(declare-fun d!138067 () Bool)

(assert (=> d!138067 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105408 d!138067))

(declare-fun d!138069 () Bool)

(assert (=> d!138069 (= (array_inv!29907 _keys!1118) (bvsge (size!39856 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105408 d!138069))

(declare-fun d!138071 () Bool)

(assert (=> d!138071 (= (array_inv!29908 _values!914) (bvsge (size!39857 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105408 d!138071))

(declare-fun bm!61763 () Bool)

(declare-fun call!61766 () Bool)

(assert (=> bm!61763 (= call!61766 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1255394 () Bool)

(declare-fun e!713531 () Bool)

(declare-fun e!713530 () Bool)

(assert (=> b!1255394 (= e!713531 e!713530)))

(declare-fun lt!567541 () (_ BitVec 64))

(assert (=> b!1255394 (= lt!567541 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!567540 () Unit!41742)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!81527 (_ BitVec 64) (_ BitVec 32)) Unit!41742)

(assert (=> b!1255394 (= lt!567540 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!567541 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!81527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1255394 (arrayContainsKey!0 _keys!1118 lt!567541 #b00000000000000000000000000000000)))

(declare-fun lt!567542 () Unit!41742)

(assert (=> b!1255394 (= lt!567542 lt!567540)))

(declare-fun res!837033 () Bool)

(declare-datatypes ((SeekEntryResult!9962 0))(
  ( (MissingZero!9962 (index!42218 (_ BitVec 32))) (Found!9962 (index!42219 (_ BitVec 32))) (Intermediate!9962 (undefined!10774 Bool) (index!42220 (_ BitVec 32)) (x!110533 (_ BitVec 32))) (Undefined!9962) (MissingVacant!9962 (index!42221 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!81527 (_ BitVec 32)) SeekEntryResult!9962)

(assert (=> b!1255394 (= res!837033 (= (seekEntryOrOpen!0 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9962 #b00000000000000000000000000000000)))))

(assert (=> b!1255394 (=> (not res!837033) (not e!713530))))

(declare-fun b!1255395 () Bool)

(assert (=> b!1255395 (= e!713531 call!61766)))

(declare-fun d!138073 () Bool)

(declare-fun res!837034 () Bool)

(declare-fun e!713532 () Bool)

(assert (=> d!138073 (=> res!837034 e!713532)))

(assert (=> d!138073 (= res!837034 (bvsge #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(assert (=> d!138073 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!713532)))

(declare-fun b!1255396 () Bool)

(assert (=> b!1255396 (= e!713530 call!61766)))

(declare-fun b!1255397 () Bool)

(assert (=> b!1255397 (= e!713532 e!713531)))

(declare-fun c!122332 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1255397 (= c!122332 (validKeyInArray!0 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138073 (not res!837034)) b!1255397))

(assert (= (and b!1255397 c!122332) b!1255394))

(assert (= (and b!1255397 (not c!122332)) b!1255395))

(assert (= (and b!1255394 res!837033) b!1255396))

(assert (= (or b!1255396 b!1255395) bm!61763))

(declare-fun m!1156175 () Bool)

(assert (=> bm!61763 m!1156175))

(declare-fun m!1156177 () Bool)

(assert (=> b!1255394 m!1156177))

(declare-fun m!1156179 () Bool)

(assert (=> b!1255394 m!1156179))

(declare-fun m!1156181 () Bool)

(assert (=> b!1255394 m!1156181))

(assert (=> b!1255394 m!1156177))

(declare-fun m!1156183 () Bool)

(assert (=> b!1255394 m!1156183))

(assert (=> b!1255397 m!1156177))

(assert (=> b!1255397 m!1156177))

(declare-fun m!1156185 () Bool)

(assert (=> b!1255397 m!1156185))

(assert (=> b!1255363 d!138073))

(declare-fun d!138075 () Bool)

(assert (=> d!138075 (= (getCurrentListMapNoExtraKeys!5745 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5745 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!567545 () Unit!41742)

(declare-fun choose!1866 (array!81527 array!81529 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47961 V!47961 V!47961 V!47961 (_ BitVec 32) Int) Unit!41742)

(assert (=> d!138075 (= lt!567545 (choose!1866 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138075 (validMask!0 mask!1466)))

(assert (=> d!138075 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1063 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!567545)))

(declare-fun bs!35481 () Bool)

(assert (= bs!35481 d!138075))

(assert (=> bs!35481 m!1156155))

(assert (=> bs!35481 m!1156153))

(declare-fun m!1156187 () Bool)

(assert (=> bs!35481 m!1156187))

(assert (=> bs!35481 m!1156141))

(assert (=> b!1255358 d!138075))

(declare-fun b!1255422 () Bool)

(declare-fun e!713553 () Bool)

(declare-fun lt!567563 () ListLongMap!18737)

(declare-fun isEmpty!1032 (ListLongMap!18737) Bool)

(assert (=> b!1255422 (= e!713553 (isEmpty!1032 lt!567563))))

(declare-fun b!1255423 () Bool)

(declare-fun e!713549 () Bool)

(declare-fun e!713550 () Bool)

(assert (=> b!1255423 (= e!713549 e!713550)))

(assert (=> b!1255423 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(declare-fun res!837045 () Bool)

(declare-fun contains!7545 (ListLongMap!18737 (_ BitVec 64)) Bool)

(assert (=> b!1255423 (= res!837045 (contains!7545 lt!567563 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1255423 (=> (not res!837045) (not e!713550))))

(declare-fun b!1255425 () Bool)

(assert (=> b!1255425 (= e!713549 e!713553)))

(declare-fun c!122342 () Bool)

(assert (=> b!1255425 (= c!122342 (bvslt #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(declare-fun call!61769 () ListLongMap!18737)

(declare-fun bm!61766 () Bool)

(assert (=> bm!61766 (= call!61769 (getCurrentListMapNoExtraKeys!5745 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1255426 () Bool)

(declare-fun e!713547 () ListLongMap!18737)

(assert (=> b!1255426 (= e!713547 call!61769)))

(declare-fun b!1255427 () Bool)

(declare-fun e!713551 () ListLongMap!18737)

(assert (=> b!1255427 (= e!713551 (ListLongMap!18738 Nil!28088))))

(declare-fun b!1255428 () Bool)

(declare-fun res!837043 () Bool)

(declare-fun e!713552 () Bool)

(assert (=> b!1255428 (=> (not res!837043) (not e!713552))))

(assert (=> b!1255428 (= res!837043 (not (contains!7545 lt!567563 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1255429 () Bool)

(assert (=> b!1255429 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(assert (=> b!1255429 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39857 _values!914)))))

(declare-fun apply!1022 (ListLongMap!18737 (_ BitVec 64)) V!47961)

(declare-fun get!20160 (ValueCell!15210 V!47961) V!47961)

(declare-fun dynLambda!3467 (Int (_ BitVec 64)) V!47961)

(assert (=> b!1255429 (= e!713550 (= (apply!1022 lt!567563 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)) (get!20160 (select (arr!39320 _values!914) #b00000000000000000000000000000000) (dynLambda!3467 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1255430 () Bool)

(assert (=> b!1255430 (= e!713552 e!713549)))

(declare-fun c!122344 () Bool)

(declare-fun e!713548 () Bool)

(assert (=> b!1255430 (= c!122344 e!713548)))

(declare-fun res!837046 () Bool)

(assert (=> b!1255430 (=> (not res!837046) (not e!713548))))

(assert (=> b!1255430 (= res!837046 (bvslt #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(declare-fun b!1255431 () Bool)

(assert (=> b!1255431 (= e!713548 (validKeyInArray!0 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1255431 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!138077 () Bool)

(assert (=> d!138077 e!713552))

(declare-fun res!837044 () Bool)

(assert (=> d!138077 (=> (not res!837044) (not e!713552))))

(assert (=> d!138077 (= res!837044 (not (contains!7545 lt!567563 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138077 (= lt!567563 e!713551)))

(declare-fun c!122341 () Bool)

(assert (=> d!138077 (= c!122341 (bvsge #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(assert (=> d!138077 (validMask!0 mask!1466)))

(assert (=> d!138077 (= (getCurrentListMapNoExtraKeys!5745 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!567563)))

(declare-fun b!1255424 () Bool)

(declare-fun lt!567562 () Unit!41742)

(declare-fun lt!567566 () Unit!41742)

(assert (=> b!1255424 (= lt!567562 lt!567566)))

(declare-fun lt!567560 () (_ BitVec 64))

(declare-fun lt!567565 () (_ BitVec 64))

(declare-fun lt!567564 () V!47961)

(declare-fun lt!567561 () ListLongMap!18737)

(declare-fun +!4165 (ListLongMap!18737 tuple2!20852) ListLongMap!18737)

(assert (=> b!1255424 (not (contains!7545 (+!4165 lt!567561 (tuple2!20853 lt!567565 lt!567564)) lt!567560))))

(declare-fun addStillNotContains!317 (ListLongMap!18737 (_ BitVec 64) V!47961 (_ BitVec 64)) Unit!41742)

(assert (=> b!1255424 (= lt!567566 (addStillNotContains!317 lt!567561 lt!567565 lt!567564 lt!567560))))

(assert (=> b!1255424 (= lt!567560 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1255424 (= lt!567564 (get!20160 (select (arr!39320 _values!914) #b00000000000000000000000000000000) (dynLambda!3467 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1255424 (= lt!567565 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1255424 (= lt!567561 call!61769)))

(assert (=> b!1255424 (= e!713547 (+!4165 call!61769 (tuple2!20853 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000) (get!20160 (select (arr!39320 _values!914) #b00000000000000000000000000000000) (dynLambda!3467 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1255432 () Bool)

(assert (=> b!1255432 (= e!713553 (= lt!567563 (getCurrentListMapNoExtraKeys!5745 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1255433 () Bool)

(assert (=> b!1255433 (= e!713551 e!713547)))

(declare-fun c!122343 () Bool)

(assert (=> b!1255433 (= c!122343 (validKeyInArray!0 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138077 c!122341) b!1255427))

(assert (= (and d!138077 (not c!122341)) b!1255433))

(assert (= (and b!1255433 c!122343) b!1255424))

(assert (= (and b!1255433 (not c!122343)) b!1255426))

(assert (= (or b!1255424 b!1255426) bm!61766))

(assert (= (and d!138077 res!837044) b!1255428))

(assert (= (and b!1255428 res!837043) b!1255430))

(assert (= (and b!1255430 res!837046) b!1255431))

(assert (= (and b!1255430 c!122344) b!1255423))

(assert (= (and b!1255430 (not c!122344)) b!1255425))

(assert (= (and b!1255423 res!837045) b!1255429))

(assert (= (and b!1255425 c!122342) b!1255432))

(assert (= (and b!1255425 (not c!122342)) b!1255422))

(declare-fun b_lambda!22661 () Bool)

(assert (=> (not b_lambda!22661) (not b!1255429)))

(declare-fun t!41588 () Bool)

(declare-fun tb!11309 () Bool)

(assert (=> (and start!105408 (= defaultEntry!922 defaultEntry!922) t!41588) tb!11309))

(declare-fun result!23319 () Bool)

(assert (=> tb!11309 (= result!23319 tp_is_empty!31947)))

(assert (=> b!1255429 t!41588))

(declare-fun b_and!44897 () Bool)

(assert (= b_and!44893 (and (=> t!41588 result!23319) b_and!44897)))

(declare-fun b_lambda!22663 () Bool)

(assert (=> (not b_lambda!22663) (not b!1255424)))

(assert (=> b!1255424 t!41588))

(declare-fun b_and!44899 () Bool)

(assert (= b_and!44897 (and (=> t!41588 result!23319) b_and!44899)))

(declare-fun m!1156189 () Bool)

(assert (=> b!1255428 m!1156189))

(declare-fun m!1156191 () Bool)

(assert (=> b!1255424 m!1156191))

(declare-fun m!1156193 () Bool)

(assert (=> b!1255424 m!1156193))

(declare-fun m!1156195 () Bool)

(assert (=> b!1255424 m!1156195))

(declare-fun m!1156197 () Bool)

(assert (=> b!1255424 m!1156197))

(assert (=> b!1255424 m!1156195))

(assert (=> b!1255424 m!1156193))

(declare-fun m!1156199 () Bool)

(assert (=> b!1255424 m!1156199))

(assert (=> b!1255424 m!1156197))

(declare-fun m!1156201 () Bool)

(assert (=> b!1255424 m!1156201))

(assert (=> b!1255424 m!1156177))

(declare-fun m!1156203 () Bool)

(assert (=> b!1255424 m!1156203))

(declare-fun m!1156205 () Bool)

(assert (=> b!1255432 m!1156205))

(assert (=> b!1255431 m!1156177))

(assert (=> b!1255431 m!1156177))

(assert (=> b!1255431 m!1156185))

(assert (=> b!1255429 m!1156177))

(declare-fun m!1156207 () Bool)

(assert (=> b!1255429 m!1156207))

(assert (=> b!1255429 m!1156193))

(assert (=> b!1255429 m!1156195))

(assert (=> b!1255429 m!1156195))

(assert (=> b!1255429 m!1156193))

(assert (=> b!1255429 m!1156199))

(assert (=> b!1255429 m!1156177))

(declare-fun m!1156209 () Bool)

(assert (=> b!1255422 m!1156209))

(assert (=> b!1255423 m!1156177))

(assert (=> b!1255423 m!1156177))

(declare-fun m!1156211 () Bool)

(assert (=> b!1255423 m!1156211))

(declare-fun m!1156213 () Bool)

(assert (=> d!138077 m!1156213))

(assert (=> d!138077 m!1156141))

(assert (=> b!1255433 m!1156177))

(assert (=> b!1255433 m!1156177))

(assert (=> b!1255433 m!1156185))

(assert (=> bm!61766 m!1156205))

(assert (=> b!1255358 d!138077))

(declare-fun b!1255436 () Bool)

(declare-fun e!713560 () Bool)

(declare-fun lt!567570 () ListLongMap!18737)

(assert (=> b!1255436 (= e!713560 (isEmpty!1032 lt!567570))))

(declare-fun b!1255437 () Bool)

(declare-fun e!713556 () Bool)

(declare-fun e!713557 () Bool)

(assert (=> b!1255437 (= e!713556 e!713557)))

(assert (=> b!1255437 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(declare-fun res!837049 () Bool)

(assert (=> b!1255437 (= res!837049 (contains!7545 lt!567570 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1255437 (=> (not res!837049) (not e!713557))))

(declare-fun b!1255439 () Bool)

(assert (=> b!1255439 (= e!713556 e!713560)))

(declare-fun c!122346 () Bool)

(assert (=> b!1255439 (= c!122346 (bvslt #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(declare-fun call!61770 () ListLongMap!18737)

(declare-fun bm!61767 () Bool)

(assert (=> bm!61767 (= call!61770 (getCurrentListMapNoExtraKeys!5745 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1255440 () Bool)

(declare-fun e!713554 () ListLongMap!18737)

(assert (=> b!1255440 (= e!713554 call!61770)))

(declare-fun b!1255441 () Bool)

(declare-fun e!713558 () ListLongMap!18737)

(assert (=> b!1255441 (= e!713558 (ListLongMap!18738 Nil!28088))))

(declare-fun b!1255442 () Bool)

(declare-fun res!837047 () Bool)

(declare-fun e!713559 () Bool)

(assert (=> b!1255442 (=> (not res!837047) (not e!713559))))

(assert (=> b!1255442 (= res!837047 (not (contains!7545 lt!567570 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1255443 () Bool)

(assert (=> b!1255443 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(assert (=> b!1255443 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39857 _values!914)))))

(assert (=> b!1255443 (= e!713557 (= (apply!1022 lt!567570 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)) (get!20160 (select (arr!39320 _values!914) #b00000000000000000000000000000000) (dynLambda!3467 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1255444 () Bool)

(assert (=> b!1255444 (= e!713559 e!713556)))

(declare-fun c!122348 () Bool)

(declare-fun e!713555 () Bool)

(assert (=> b!1255444 (= c!122348 e!713555)))

(declare-fun res!837050 () Bool)

(assert (=> b!1255444 (=> (not res!837050) (not e!713555))))

(assert (=> b!1255444 (= res!837050 (bvslt #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(declare-fun b!1255445 () Bool)

(assert (=> b!1255445 (= e!713555 (validKeyInArray!0 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1255445 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!138079 () Bool)

(assert (=> d!138079 e!713559))

(declare-fun res!837048 () Bool)

(assert (=> d!138079 (=> (not res!837048) (not e!713559))))

(assert (=> d!138079 (= res!837048 (not (contains!7545 lt!567570 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138079 (= lt!567570 e!713558)))

(declare-fun c!122345 () Bool)

(assert (=> d!138079 (= c!122345 (bvsge #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(assert (=> d!138079 (validMask!0 mask!1466)))

(assert (=> d!138079 (= (getCurrentListMapNoExtraKeys!5745 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!567570)))

(declare-fun b!1255438 () Bool)

(declare-fun lt!567569 () Unit!41742)

(declare-fun lt!567573 () Unit!41742)

(assert (=> b!1255438 (= lt!567569 lt!567573)))

(declare-fun lt!567572 () (_ BitVec 64))

(declare-fun lt!567571 () V!47961)

(declare-fun lt!567568 () ListLongMap!18737)

(declare-fun lt!567567 () (_ BitVec 64))

(assert (=> b!1255438 (not (contains!7545 (+!4165 lt!567568 (tuple2!20853 lt!567572 lt!567571)) lt!567567))))

(assert (=> b!1255438 (= lt!567573 (addStillNotContains!317 lt!567568 lt!567572 lt!567571 lt!567567))))

(assert (=> b!1255438 (= lt!567567 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1255438 (= lt!567571 (get!20160 (select (arr!39320 _values!914) #b00000000000000000000000000000000) (dynLambda!3467 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1255438 (= lt!567572 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1255438 (= lt!567568 call!61770)))

(assert (=> b!1255438 (= e!713554 (+!4165 call!61770 (tuple2!20853 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000) (get!20160 (select (arr!39320 _values!914) #b00000000000000000000000000000000) (dynLambda!3467 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1255446 () Bool)

(assert (=> b!1255446 (= e!713560 (= lt!567570 (getCurrentListMapNoExtraKeys!5745 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1255447 () Bool)

(assert (=> b!1255447 (= e!713558 e!713554)))

(declare-fun c!122347 () Bool)

(assert (=> b!1255447 (= c!122347 (validKeyInArray!0 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138079 c!122345) b!1255441))

(assert (= (and d!138079 (not c!122345)) b!1255447))

(assert (= (and b!1255447 c!122347) b!1255438))

(assert (= (and b!1255447 (not c!122347)) b!1255440))

(assert (= (or b!1255438 b!1255440) bm!61767))

(assert (= (and d!138079 res!837048) b!1255442))

(assert (= (and b!1255442 res!837047) b!1255444))

(assert (= (and b!1255444 res!837050) b!1255445))

(assert (= (and b!1255444 c!122348) b!1255437))

(assert (= (and b!1255444 (not c!122348)) b!1255439))

(assert (= (and b!1255437 res!837049) b!1255443))

(assert (= (and b!1255439 c!122346) b!1255446))

(assert (= (and b!1255439 (not c!122346)) b!1255436))

(declare-fun b_lambda!22665 () Bool)

(assert (=> (not b_lambda!22665) (not b!1255443)))

(assert (=> b!1255443 t!41588))

(declare-fun b_and!44901 () Bool)

(assert (= b_and!44899 (and (=> t!41588 result!23319) b_and!44901)))

(declare-fun b_lambda!22667 () Bool)

(assert (=> (not b_lambda!22667) (not b!1255438)))

(assert (=> b!1255438 t!41588))

(declare-fun b_and!44903 () Bool)

(assert (= b_and!44901 (and (=> t!41588 result!23319) b_and!44903)))

(declare-fun m!1156215 () Bool)

(assert (=> b!1255442 m!1156215))

(declare-fun m!1156217 () Bool)

(assert (=> b!1255438 m!1156217))

(assert (=> b!1255438 m!1156193))

(assert (=> b!1255438 m!1156195))

(declare-fun m!1156219 () Bool)

(assert (=> b!1255438 m!1156219))

(assert (=> b!1255438 m!1156195))

(assert (=> b!1255438 m!1156193))

(assert (=> b!1255438 m!1156199))

(assert (=> b!1255438 m!1156219))

(declare-fun m!1156221 () Bool)

(assert (=> b!1255438 m!1156221))

(assert (=> b!1255438 m!1156177))

(declare-fun m!1156223 () Bool)

(assert (=> b!1255438 m!1156223))

(declare-fun m!1156225 () Bool)

(assert (=> b!1255446 m!1156225))

(assert (=> b!1255445 m!1156177))

(assert (=> b!1255445 m!1156177))

(assert (=> b!1255445 m!1156185))

(assert (=> b!1255443 m!1156177))

(declare-fun m!1156227 () Bool)

(assert (=> b!1255443 m!1156227))

(assert (=> b!1255443 m!1156193))

(assert (=> b!1255443 m!1156195))

(assert (=> b!1255443 m!1156195))

(assert (=> b!1255443 m!1156193))

(assert (=> b!1255443 m!1156199))

(assert (=> b!1255443 m!1156177))

(declare-fun m!1156229 () Bool)

(assert (=> b!1255436 m!1156229))

(assert (=> b!1255437 m!1156177))

(assert (=> b!1255437 m!1156177))

(declare-fun m!1156231 () Bool)

(assert (=> b!1255437 m!1156231))

(declare-fun m!1156233 () Bool)

(assert (=> d!138079 m!1156233))

(assert (=> d!138079 m!1156141))

(assert (=> b!1255447 m!1156177))

(assert (=> b!1255447 m!1156177))

(assert (=> b!1255447 m!1156185))

(assert (=> bm!61767 m!1156225))

(assert (=> b!1255358 d!138079))

(declare-fun b!1255458 () Bool)

(declare-fun e!713572 () Bool)

(declare-fun contains!7546 (List!28092 (_ BitVec 64)) Bool)

(assert (=> b!1255458 (= e!713572 (contains!7546 Nil!28089 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1255459 () Bool)

(declare-fun e!713569 () Bool)

(declare-fun e!713571 () Bool)

(assert (=> b!1255459 (= e!713569 e!713571)))

(declare-fun c!122351 () Bool)

(assert (=> b!1255459 (= c!122351 (validKeyInArray!0 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1255460 () Bool)

(declare-fun call!61773 () Bool)

(assert (=> b!1255460 (= e!713571 call!61773)))

(declare-fun b!1255461 () Bool)

(assert (=> b!1255461 (= e!713571 call!61773)))

(declare-fun d!138081 () Bool)

(declare-fun res!837059 () Bool)

(declare-fun e!713570 () Bool)

(assert (=> d!138081 (=> res!837059 e!713570)))

(assert (=> d!138081 (= res!837059 (bvsge #b00000000000000000000000000000000 (size!39856 _keys!1118)))))

(assert (=> d!138081 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28089) e!713570)))

(declare-fun b!1255462 () Bool)

(assert (=> b!1255462 (= e!713570 e!713569)))

(declare-fun res!837058 () Bool)

(assert (=> b!1255462 (=> (not res!837058) (not e!713569))))

(assert (=> b!1255462 (= res!837058 (not e!713572))))

(declare-fun res!837057 () Bool)

(assert (=> b!1255462 (=> (not res!837057) (not e!713572))))

(assert (=> b!1255462 (= res!837057 (validKeyInArray!0 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61770 () Bool)

(assert (=> bm!61770 (= call!61773 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122351 (Cons!28088 (select (arr!39319 _keys!1118) #b00000000000000000000000000000000) Nil!28089) Nil!28089)))))

(assert (= (and d!138081 (not res!837059)) b!1255462))

(assert (= (and b!1255462 res!837057) b!1255458))

(assert (= (and b!1255462 res!837058) b!1255459))

(assert (= (and b!1255459 c!122351) b!1255460))

(assert (= (and b!1255459 (not c!122351)) b!1255461))

(assert (= (or b!1255460 b!1255461) bm!61770))

(assert (=> b!1255458 m!1156177))

(assert (=> b!1255458 m!1156177))

(declare-fun m!1156235 () Bool)

(assert (=> b!1255458 m!1156235))

(assert (=> b!1255459 m!1156177))

(assert (=> b!1255459 m!1156177))

(assert (=> b!1255459 m!1156185))

(assert (=> b!1255462 m!1156177))

(assert (=> b!1255462 m!1156177))

(assert (=> b!1255462 m!1156185))

(assert (=> bm!61770 m!1156177))

(declare-fun m!1156237 () Bool)

(assert (=> bm!61770 m!1156237))

(assert (=> b!1255364 d!138081))

(declare-fun condMapEmpty!49708 () Bool)

(declare-fun mapDefault!49708 () ValueCell!15210)

(assert (=> mapNonEmpty!49702 (= condMapEmpty!49708 (= mapRest!49702 ((as const (Array (_ BitVec 32) ValueCell!15210)) mapDefault!49708)))))

(declare-fun e!713578 () Bool)

(declare-fun mapRes!49708 () Bool)

(assert (=> mapNonEmpty!49702 (= tp!94647 (and e!713578 mapRes!49708))))

(declare-fun b!1255470 () Bool)

(assert (=> b!1255470 (= e!713578 tp_is_empty!31947)))

(declare-fun mapNonEmpty!49708 () Bool)

(declare-fun tp!94656 () Bool)

(declare-fun e!713577 () Bool)

(assert (=> mapNonEmpty!49708 (= mapRes!49708 (and tp!94656 e!713577))))

(declare-fun mapRest!49708 () (Array (_ BitVec 32) ValueCell!15210))

(declare-fun mapKey!49708 () (_ BitVec 32))

(declare-fun mapValue!49708 () ValueCell!15210)

(assert (=> mapNonEmpty!49708 (= mapRest!49702 (store mapRest!49708 mapKey!49708 mapValue!49708))))

(declare-fun b!1255469 () Bool)

(assert (=> b!1255469 (= e!713577 tp_is_empty!31947)))

(declare-fun mapIsEmpty!49708 () Bool)

(assert (=> mapIsEmpty!49708 mapRes!49708))

(assert (= (and mapNonEmpty!49702 condMapEmpty!49708) mapIsEmpty!49708))

(assert (= (and mapNonEmpty!49702 (not condMapEmpty!49708)) mapNonEmpty!49708))

(assert (= (and mapNonEmpty!49708 ((_ is ValueCellFull!15210) mapValue!49708)) b!1255469))

(assert (= (and mapNonEmpty!49702 ((_ is ValueCellFull!15210) mapDefault!49708)) b!1255470))

(declare-fun m!1156239 () Bool)

(assert (=> mapNonEmpty!49708 m!1156239))

(declare-fun b_lambda!22669 () Bool)

(assert (= b_lambda!22663 (or (and start!105408 b_free!27045) b_lambda!22669)))

(declare-fun b_lambda!22671 () Bool)

(assert (= b_lambda!22661 (or (and start!105408 b_free!27045) b_lambda!22671)))

(declare-fun b_lambda!22673 () Bool)

(assert (= b_lambda!22667 (or (and start!105408 b_free!27045) b_lambda!22673)))

(declare-fun b_lambda!22675 () Bool)

(assert (= b_lambda!22665 (or (and start!105408 b_free!27045) b_lambda!22675)))

(check-sat (not b!1255446) (not b_next!27045) (not b!1255422) (not bm!61767) (not b!1255443) (not b_lambda!22669) (not b!1255437) (not b_lambda!22673) (not d!138079) (not d!138075) (not b!1255458) (not b!1255423) (not d!138077) (not bm!61770) (not b!1255433) (not b!1255436) (not b!1255447) (not b!1255431) (not bm!61763) (not b!1255429) (not bm!61766) (not b_lambda!22675) (not b!1255428) (not b!1255459) tp_is_empty!31947 b_and!44903 (not b!1255432) (not b!1255394) (not b!1255397) (not b!1255438) (not mapNonEmpty!49708) (not b_lambda!22671) (not b!1255445) (not b!1255424) (not b!1255462) (not b!1255442))
(check-sat b_and!44903 (not b_next!27045))
