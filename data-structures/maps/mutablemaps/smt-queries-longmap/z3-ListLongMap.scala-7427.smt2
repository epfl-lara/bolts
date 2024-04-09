; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94436 () Bool)

(assert start!94436)

(declare-fun b_free!21741 () Bool)

(declare-fun b_next!21741 () Bool)

(assert (=> start!94436 (= b_free!21741 (not b_next!21741))))

(declare-fun tp!76667 () Bool)

(declare-fun b_and!34543 () Bool)

(assert (=> start!94436 (= tp!76667 b_and!34543)))

(declare-fun b!1067386 () Bool)

(declare-fun res!712398 () Bool)

(declare-fun e!608842 () Bool)

(assert (=> b!1067386 (=> (not res!712398) (not e!608842))))

(declare-datatypes ((V!39203 0))(
  ( (V!39204 (val!12826 Int)) )
))
(declare-datatypes ((ValueCell!12072 0))(
  ( (ValueCellFull!12072 (v!15441 V!39203)) (EmptyCell!12072) )
))
(declare-datatypes ((array!68056 0))(
  ( (array!68057 (arr!32725 (Array (_ BitVec 32) ValueCell!12072)) (size!33262 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68056)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68058 0))(
  ( (array!68059 (arr!32726 (Array (_ BitVec 32) (_ BitVec 64))) (size!33263 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68058)

(assert (=> b!1067386 (= res!712398 (and (= (size!33262 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33263 _keys!1163) (size!33262 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067387 () Bool)

(declare-fun res!712397 () Bool)

(assert (=> b!1067387 (=> (not res!712397) (not e!608842))))

(declare-datatypes ((List!22949 0))(
  ( (Nil!22946) (Cons!22945 (h!24154 (_ BitVec 64)) (t!32279 List!22949)) )
))
(declare-fun arrayNoDuplicates!0 (array!68058 (_ BitVec 32) List!22949) Bool)

(assert (=> b!1067387 (= res!712397 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22946))))

(declare-fun b!1067388 () Bool)

(declare-fun e!608839 () Bool)

(declare-fun e!608841 () Bool)

(declare-fun mapRes!40018 () Bool)

(assert (=> b!1067388 (= e!608839 (and e!608841 mapRes!40018))))

(declare-fun condMapEmpty!40018 () Bool)

(declare-fun mapDefault!40018 () ValueCell!12072)

(assert (=> b!1067388 (= condMapEmpty!40018 (= (arr!32725 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12072)) mapDefault!40018)))))

(declare-fun res!712396 () Bool)

(assert (=> start!94436 (=> (not res!712396) (not e!608842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94436 (= res!712396 (validMask!0 mask!1515))))

(assert (=> start!94436 e!608842))

(assert (=> start!94436 true))

(declare-fun tp_is_empty!25551 () Bool)

(assert (=> start!94436 tp_is_empty!25551))

(declare-fun array_inv!25170 (array!68056) Bool)

(assert (=> start!94436 (and (array_inv!25170 _values!955) e!608839)))

(assert (=> start!94436 tp!76667))

(declare-fun array_inv!25171 (array!68058) Bool)

(assert (=> start!94436 (array_inv!25171 _keys!1163)))

(declare-fun mapNonEmpty!40018 () Bool)

(declare-fun tp!76668 () Bool)

(declare-fun e!608840 () Bool)

(assert (=> mapNonEmpty!40018 (= mapRes!40018 (and tp!76668 e!608840))))

(declare-fun mapKey!40018 () (_ BitVec 32))

(declare-fun mapRest!40018 () (Array (_ BitVec 32) ValueCell!12072))

(declare-fun mapValue!40018 () ValueCell!12072)

(assert (=> mapNonEmpty!40018 (= (arr!32725 _values!955) (store mapRest!40018 mapKey!40018 mapValue!40018))))

(declare-fun b!1067389 () Bool)

(assert (=> b!1067389 (= e!608842 (not (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!33263 _keys!1163)))))))

(declare-datatypes ((tuple2!16358 0))(
  ( (tuple2!16359 (_1!8189 (_ BitVec 64)) (_2!8189 V!39203)) )
))
(declare-datatypes ((List!22950 0))(
  ( (Nil!22947) (Cons!22946 (h!24155 tuple2!16358) (t!32280 List!22950)) )
))
(declare-datatypes ((ListLongMap!14339 0))(
  ( (ListLongMap!14340 (toList!7185 List!22950)) )
))
(declare-fun lt!471423 () ListLongMap!14339)

(declare-fun lt!471424 () ListLongMap!14339)

(assert (=> b!1067389 (= lt!471423 lt!471424)))

(declare-fun zeroValueBefore!47 () V!39203)

(declare-datatypes ((Unit!35036 0))(
  ( (Unit!35037) )
))
(declare-fun lt!471422 () Unit!35036)

(declare-fun minValue!907 () V!39203)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39203)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!769 (array!68058 array!68056 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39203 V!39203 V!39203 V!39203 (_ BitVec 32) Int) Unit!35036)

(assert (=> b!1067389 (= lt!471422 (lemmaNoChangeToArrayThenSameMapNoExtras!769 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3730 (array!68058 array!68056 (_ BitVec 32) (_ BitVec 32) V!39203 V!39203 (_ BitVec 32) Int) ListLongMap!14339)

(assert (=> b!1067389 (= lt!471424 (getCurrentListMapNoExtraKeys!3730 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067389 (= lt!471423 (getCurrentListMapNoExtraKeys!3730 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067390 () Bool)

(assert (=> b!1067390 (= e!608840 tp_is_empty!25551)))

(declare-fun mapIsEmpty!40018 () Bool)

(assert (=> mapIsEmpty!40018 mapRes!40018))

(declare-fun b!1067391 () Bool)

(declare-fun res!712399 () Bool)

(assert (=> b!1067391 (=> (not res!712399) (not e!608842))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68058 (_ BitVec 32)) Bool)

(assert (=> b!1067391 (= res!712399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067392 () Bool)

(assert (=> b!1067392 (= e!608841 tp_is_empty!25551)))

(assert (= (and start!94436 res!712396) b!1067386))

(assert (= (and b!1067386 res!712398) b!1067391))

(assert (= (and b!1067391 res!712399) b!1067387))

(assert (= (and b!1067387 res!712397) b!1067389))

(assert (= (and b!1067388 condMapEmpty!40018) mapIsEmpty!40018))

(assert (= (and b!1067388 (not condMapEmpty!40018)) mapNonEmpty!40018))

(get-info :version)

(assert (= (and mapNonEmpty!40018 ((_ is ValueCellFull!12072) mapValue!40018)) b!1067390))

(assert (= (and b!1067388 ((_ is ValueCellFull!12072) mapDefault!40018)) b!1067392))

(assert (= start!94436 b!1067388))

(declare-fun m!986183 () Bool)

(assert (=> b!1067391 m!986183))

(declare-fun m!986185 () Bool)

(assert (=> b!1067389 m!986185))

(declare-fun m!986187 () Bool)

(assert (=> b!1067389 m!986187))

(declare-fun m!986189 () Bool)

(assert (=> b!1067389 m!986189))

(declare-fun m!986191 () Bool)

(assert (=> b!1067387 m!986191))

(declare-fun m!986193 () Bool)

(assert (=> start!94436 m!986193))

(declare-fun m!986195 () Bool)

(assert (=> start!94436 m!986195))

(declare-fun m!986197 () Bool)

(assert (=> start!94436 m!986197))

(declare-fun m!986199 () Bool)

(assert (=> mapNonEmpty!40018 m!986199))

(check-sat (not b_next!21741) tp_is_empty!25551 (not start!94436) (not b!1067391) (not b!1067387) (not mapNonEmpty!40018) (not b!1067389) b_and!34543)
(check-sat b_and!34543 (not b_next!21741))
(get-model)

(declare-fun d!129063 () Bool)

(assert (=> d!129063 (= (getCurrentListMapNoExtraKeys!3730 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3730 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471436 () Unit!35036)

(declare-fun choose!1740 (array!68058 array!68056 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39203 V!39203 V!39203 V!39203 (_ BitVec 32) Int) Unit!35036)

(assert (=> d!129063 (= lt!471436 (choose!1740 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129063 (validMask!0 mask!1515)))

(assert (=> d!129063 (= (lemmaNoChangeToArrayThenSameMapNoExtras!769 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!471436)))

(declare-fun bs!31418 () Bool)

(assert (= bs!31418 d!129063))

(assert (=> bs!31418 m!986189))

(assert (=> bs!31418 m!986187))

(declare-fun m!986219 () Bool)

(assert (=> bs!31418 m!986219))

(assert (=> bs!31418 m!986193))

(assert (=> b!1067389 d!129063))

(declare-fun b!1067438 () Bool)

(declare-fun e!608879 () Bool)

(declare-fun e!608875 () Bool)

(assert (=> b!1067438 (= e!608879 e!608875)))

(declare-fun c!107438 () Bool)

(assert (=> b!1067438 (= c!107438 (bvslt #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(declare-fun b!1067440 () Bool)

(declare-fun e!608877 () Bool)

(assert (=> b!1067440 (= e!608879 e!608877)))

(assert (=> b!1067440 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(declare-fun res!712421 () Bool)

(declare-fun lt!471455 () ListLongMap!14339)

(declare-fun contains!6291 (ListLongMap!14339 (_ BitVec 64)) Bool)

(assert (=> b!1067440 (= res!712421 (contains!6291 lt!471455 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1067440 (=> (not res!712421) (not e!608877))))

(declare-fun b!1067441 () Bool)

(declare-fun e!608873 () ListLongMap!14339)

(declare-fun e!608874 () ListLongMap!14339)

(assert (=> b!1067441 (= e!608873 e!608874)))

(declare-fun c!107439 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1067441 (= c!107439 (validKeyInArray!0 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1067442 () Bool)

(declare-fun lt!471451 () Unit!35036)

(declare-fun lt!471454 () Unit!35036)

(assert (=> b!1067442 (= lt!471451 lt!471454)))

(declare-fun lt!471453 () (_ BitVec 64))

(declare-fun lt!471456 () V!39203)

(declare-fun lt!471457 () ListLongMap!14339)

(declare-fun lt!471452 () (_ BitVec 64))

(declare-fun +!3120 (ListLongMap!14339 tuple2!16358) ListLongMap!14339)

(assert (=> b!1067442 (not (contains!6291 (+!3120 lt!471457 (tuple2!16359 lt!471453 lt!471456)) lt!471452))))

(declare-fun addStillNotContains!255 (ListLongMap!14339 (_ BitVec 64) V!39203 (_ BitVec 64)) Unit!35036)

(assert (=> b!1067442 (= lt!471454 (addStillNotContains!255 lt!471457 lt!471453 lt!471456 lt!471452))))

(assert (=> b!1067442 (= lt!471452 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!17078 (ValueCell!12072 V!39203) V!39203)

(declare-fun dynLambda!2036 (Int (_ BitVec 64)) V!39203)

(assert (=> b!1067442 (= lt!471456 (get!17078 (select (arr!32725 _values!955) #b00000000000000000000000000000000) (dynLambda!2036 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1067442 (= lt!471453 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45092 () ListLongMap!14339)

(assert (=> b!1067442 (= lt!471457 call!45092)))

(assert (=> b!1067442 (= e!608874 (+!3120 call!45092 (tuple2!16359 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000) (get!17078 (select (arr!32725 _values!955) #b00000000000000000000000000000000) (dynLambda!2036 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!45089 () Bool)

(assert (=> bm!45089 (= call!45092 (getCurrentListMapNoExtraKeys!3730 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1067443 () Bool)

(assert (=> b!1067443 (= e!608873 (ListLongMap!14340 Nil!22947))))

(declare-fun b!1067444 () Bool)

(assert (=> b!1067444 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(assert (=> b!1067444 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33262 _values!955)))))

(declare-fun apply!960 (ListLongMap!14339 (_ BitVec 64)) V!39203)

(assert (=> b!1067444 (= e!608877 (= (apply!960 lt!471455 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)) (get!17078 (select (arr!32725 _values!955) #b00000000000000000000000000000000) (dynLambda!2036 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1067445 () Bool)

(declare-fun isEmpty!946 (ListLongMap!14339) Bool)

(assert (=> b!1067445 (= e!608875 (isEmpty!946 lt!471455))))

(declare-fun b!1067446 () Bool)

(assert (=> b!1067446 (= e!608875 (= lt!471455 (getCurrentListMapNoExtraKeys!3730 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1067447 () Bool)

(assert (=> b!1067447 (= e!608874 call!45092)))

(declare-fun b!1067448 () Bool)

(declare-fun res!712423 () Bool)

(declare-fun e!608876 () Bool)

(assert (=> b!1067448 (=> (not res!712423) (not e!608876))))

(assert (=> b!1067448 (= res!712423 (not (contains!6291 lt!471455 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1067449 () Bool)

(declare-fun e!608878 () Bool)

(assert (=> b!1067449 (= e!608878 (validKeyInArray!0 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1067449 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!129065 () Bool)

(assert (=> d!129065 e!608876))

(declare-fun res!712420 () Bool)

(assert (=> d!129065 (=> (not res!712420) (not e!608876))))

(assert (=> d!129065 (= res!712420 (not (contains!6291 lt!471455 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129065 (= lt!471455 e!608873)))

(declare-fun c!107437 () Bool)

(assert (=> d!129065 (= c!107437 (bvsge #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(assert (=> d!129065 (validMask!0 mask!1515)))

(assert (=> d!129065 (= (getCurrentListMapNoExtraKeys!3730 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!471455)))

(declare-fun b!1067439 () Bool)

(assert (=> b!1067439 (= e!608876 e!608879)))

(declare-fun c!107436 () Bool)

(assert (=> b!1067439 (= c!107436 e!608878)))

(declare-fun res!712422 () Bool)

(assert (=> b!1067439 (=> (not res!712422) (not e!608878))))

(assert (=> b!1067439 (= res!712422 (bvslt #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(assert (= (and d!129065 c!107437) b!1067443))

(assert (= (and d!129065 (not c!107437)) b!1067441))

(assert (= (and b!1067441 c!107439) b!1067442))

(assert (= (and b!1067441 (not c!107439)) b!1067447))

(assert (= (or b!1067442 b!1067447) bm!45089))

(assert (= (and d!129065 res!712420) b!1067448))

(assert (= (and b!1067448 res!712423) b!1067439))

(assert (= (and b!1067439 res!712422) b!1067449))

(assert (= (and b!1067439 c!107436) b!1067440))

(assert (= (and b!1067439 (not c!107436)) b!1067438))

(assert (= (and b!1067440 res!712421) b!1067444))

(assert (= (and b!1067438 c!107438) b!1067446))

(assert (= (and b!1067438 (not c!107438)) b!1067445))

(declare-fun b_lambda!16615 () Bool)

(assert (=> (not b_lambda!16615) (not b!1067442)))

(declare-fun t!32282 () Bool)

(declare-fun tb!7153 () Bool)

(assert (=> (and start!94436 (= defaultEntry!963 defaultEntry!963) t!32282) tb!7153))

(declare-fun result!14751 () Bool)

(assert (=> tb!7153 (= result!14751 tp_is_empty!25551)))

(assert (=> b!1067442 t!32282))

(declare-fun b_and!34547 () Bool)

(assert (= b_and!34543 (and (=> t!32282 result!14751) b_and!34547)))

(declare-fun b_lambda!16617 () Bool)

(assert (=> (not b_lambda!16617) (not b!1067444)))

(assert (=> b!1067444 t!32282))

(declare-fun b_and!34549 () Bool)

(assert (= b_and!34547 (and (=> t!32282 result!14751) b_and!34549)))

(declare-fun m!986221 () Bool)

(assert (=> bm!45089 m!986221))

(declare-fun m!986223 () Bool)

(assert (=> b!1067441 m!986223))

(assert (=> b!1067441 m!986223))

(declare-fun m!986225 () Bool)

(assert (=> b!1067441 m!986225))

(assert (=> b!1067446 m!986221))

(assert (=> b!1067440 m!986223))

(assert (=> b!1067440 m!986223))

(declare-fun m!986227 () Bool)

(assert (=> b!1067440 m!986227))

(assert (=> b!1067449 m!986223))

(assert (=> b!1067449 m!986223))

(assert (=> b!1067449 m!986225))

(declare-fun m!986229 () Bool)

(assert (=> b!1067448 m!986229))

(assert (=> b!1067442 m!986223))

(declare-fun m!986231 () Bool)

(assert (=> b!1067442 m!986231))

(declare-fun m!986233 () Bool)

(assert (=> b!1067442 m!986233))

(declare-fun m!986235 () Bool)

(assert (=> b!1067442 m!986235))

(declare-fun m!986237 () Bool)

(assert (=> b!1067442 m!986237))

(declare-fun m!986239 () Bool)

(assert (=> b!1067442 m!986239))

(declare-fun m!986241 () Bool)

(assert (=> b!1067442 m!986241))

(declare-fun m!986243 () Bool)

(assert (=> b!1067442 m!986243))

(assert (=> b!1067442 m!986233))

(assert (=> b!1067442 m!986235))

(assert (=> b!1067442 m!986241))

(assert (=> b!1067444 m!986223))

(assert (=> b!1067444 m!986223))

(declare-fun m!986245 () Bool)

(assert (=> b!1067444 m!986245))

(assert (=> b!1067444 m!986233))

(assert (=> b!1067444 m!986235))

(assert (=> b!1067444 m!986237))

(assert (=> b!1067444 m!986233))

(assert (=> b!1067444 m!986235))

(declare-fun m!986247 () Bool)

(assert (=> d!129065 m!986247))

(assert (=> d!129065 m!986193))

(declare-fun m!986249 () Bool)

(assert (=> b!1067445 m!986249))

(assert (=> b!1067389 d!129065))

(declare-fun b!1067452 () Bool)

(declare-fun e!608886 () Bool)

(declare-fun e!608882 () Bool)

(assert (=> b!1067452 (= e!608886 e!608882)))

(declare-fun c!107442 () Bool)

(assert (=> b!1067452 (= c!107442 (bvslt #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(declare-fun b!1067454 () Bool)

(declare-fun e!608884 () Bool)

(assert (=> b!1067454 (= e!608886 e!608884)))

(assert (=> b!1067454 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(declare-fun res!712425 () Bool)

(declare-fun lt!471462 () ListLongMap!14339)

(assert (=> b!1067454 (= res!712425 (contains!6291 lt!471462 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1067454 (=> (not res!712425) (not e!608884))))

(declare-fun b!1067455 () Bool)

(declare-fun e!608880 () ListLongMap!14339)

(declare-fun e!608881 () ListLongMap!14339)

(assert (=> b!1067455 (= e!608880 e!608881)))

(declare-fun c!107443 () Bool)

(assert (=> b!1067455 (= c!107443 (validKeyInArray!0 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1067456 () Bool)

(declare-fun lt!471458 () Unit!35036)

(declare-fun lt!471461 () Unit!35036)

(assert (=> b!1067456 (= lt!471458 lt!471461)))

(declare-fun lt!471463 () V!39203)

(declare-fun lt!471464 () ListLongMap!14339)

(declare-fun lt!471459 () (_ BitVec 64))

(declare-fun lt!471460 () (_ BitVec 64))

(assert (=> b!1067456 (not (contains!6291 (+!3120 lt!471464 (tuple2!16359 lt!471460 lt!471463)) lt!471459))))

(assert (=> b!1067456 (= lt!471461 (addStillNotContains!255 lt!471464 lt!471460 lt!471463 lt!471459))))

(assert (=> b!1067456 (= lt!471459 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1067456 (= lt!471463 (get!17078 (select (arr!32725 _values!955) #b00000000000000000000000000000000) (dynLambda!2036 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1067456 (= lt!471460 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45093 () ListLongMap!14339)

(assert (=> b!1067456 (= lt!471464 call!45093)))

(assert (=> b!1067456 (= e!608881 (+!3120 call!45093 (tuple2!16359 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000) (get!17078 (select (arr!32725 _values!955) #b00000000000000000000000000000000) (dynLambda!2036 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!45090 () Bool)

(assert (=> bm!45090 (= call!45093 (getCurrentListMapNoExtraKeys!3730 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1067457 () Bool)

(assert (=> b!1067457 (= e!608880 (ListLongMap!14340 Nil!22947))))

(declare-fun b!1067458 () Bool)

(assert (=> b!1067458 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(assert (=> b!1067458 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33262 _values!955)))))

(assert (=> b!1067458 (= e!608884 (= (apply!960 lt!471462 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)) (get!17078 (select (arr!32725 _values!955) #b00000000000000000000000000000000) (dynLambda!2036 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1067459 () Bool)

(assert (=> b!1067459 (= e!608882 (isEmpty!946 lt!471462))))

(declare-fun b!1067460 () Bool)

(assert (=> b!1067460 (= e!608882 (= lt!471462 (getCurrentListMapNoExtraKeys!3730 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1067461 () Bool)

(assert (=> b!1067461 (= e!608881 call!45093)))

(declare-fun b!1067462 () Bool)

(declare-fun res!712427 () Bool)

(declare-fun e!608883 () Bool)

(assert (=> b!1067462 (=> (not res!712427) (not e!608883))))

(assert (=> b!1067462 (= res!712427 (not (contains!6291 lt!471462 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1067463 () Bool)

(declare-fun e!608885 () Bool)

(assert (=> b!1067463 (= e!608885 (validKeyInArray!0 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1067463 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!129067 () Bool)

(assert (=> d!129067 e!608883))

(declare-fun res!712424 () Bool)

(assert (=> d!129067 (=> (not res!712424) (not e!608883))))

(assert (=> d!129067 (= res!712424 (not (contains!6291 lt!471462 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129067 (= lt!471462 e!608880)))

(declare-fun c!107441 () Bool)

(assert (=> d!129067 (= c!107441 (bvsge #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(assert (=> d!129067 (validMask!0 mask!1515)))

(assert (=> d!129067 (= (getCurrentListMapNoExtraKeys!3730 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!471462)))

(declare-fun b!1067453 () Bool)

(assert (=> b!1067453 (= e!608883 e!608886)))

(declare-fun c!107440 () Bool)

(assert (=> b!1067453 (= c!107440 e!608885)))

(declare-fun res!712426 () Bool)

(assert (=> b!1067453 (=> (not res!712426) (not e!608885))))

(assert (=> b!1067453 (= res!712426 (bvslt #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(assert (= (and d!129067 c!107441) b!1067457))

(assert (= (and d!129067 (not c!107441)) b!1067455))

(assert (= (and b!1067455 c!107443) b!1067456))

(assert (= (and b!1067455 (not c!107443)) b!1067461))

(assert (= (or b!1067456 b!1067461) bm!45090))

(assert (= (and d!129067 res!712424) b!1067462))

(assert (= (and b!1067462 res!712427) b!1067453))

(assert (= (and b!1067453 res!712426) b!1067463))

(assert (= (and b!1067453 c!107440) b!1067454))

(assert (= (and b!1067453 (not c!107440)) b!1067452))

(assert (= (and b!1067454 res!712425) b!1067458))

(assert (= (and b!1067452 c!107442) b!1067460))

(assert (= (and b!1067452 (not c!107442)) b!1067459))

(declare-fun b_lambda!16619 () Bool)

(assert (=> (not b_lambda!16619) (not b!1067456)))

(assert (=> b!1067456 t!32282))

(declare-fun b_and!34551 () Bool)

(assert (= b_and!34549 (and (=> t!32282 result!14751) b_and!34551)))

(declare-fun b_lambda!16621 () Bool)

(assert (=> (not b_lambda!16621) (not b!1067458)))

(assert (=> b!1067458 t!32282))

(declare-fun b_and!34553 () Bool)

(assert (= b_and!34551 (and (=> t!32282 result!14751) b_and!34553)))

(declare-fun m!986251 () Bool)

(assert (=> bm!45090 m!986251))

(assert (=> b!1067455 m!986223))

(assert (=> b!1067455 m!986223))

(assert (=> b!1067455 m!986225))

(assert (=> b!1067460 m!986251))

(assert (=> b!1067454 m!986223))

(assert (=> b!1067454 m!986223))

(declare-fun m!986253 () Bool)

(assert (=> b!1067454 m!986253))

(assert (=> b!1067463 m!986223))

(assert (=> b!1067463 m!986223))

(assert (=> b!1067463 m!986225))

(declare-fun m!986255 () Bool)

(assert (=> b!1067462 m!986255))

(assert (=> b!1067456 m!986223))

(declare-fun m!986257 () Bool)

(assert (=> b!1067456 m!986257))

(assert (=> b!1067456 m!986233))

(assert (=> b!1067456 m!986235))

(assert (=> b!1067456 m!986237))

(declare-fun m!986259 () Bool)

(assert (=> b!1067456 m!986259))

(declare-fun m!986261 () Bool)

(assert (=> b!1067456 m!986261))

(declare-fun m!986263 () Bool)

(assert (=> b!1067456 m!986263))

(assert (=> b!1067456 m!986233))

(assert (=> b!1067456 m!986235))

(assert (=> b!1067456 m!986261))

(assert (=> b!1067458 m!986223))

(assert (=> b!1067458 m!986223))

(declare-fun m!986265 () Bool)

(assert (=> b!1067458 m!986265))

(assert (=> b!1067458 m!986233))

(assert (=> b!1067458 m!986235))

(assert (=> b!1067458 m!986237))

(assert (=> b!1067458 m!986233))

(assert (=> b!1067458 m!986235))

(declare-fun m!986267 () Bool)

(assert (=> d!129067 m!986267))

(assert (=> d!129067 m!986193))

(declare-fun m!986269 () Bool)

(assert (=> b!1067459 m!986269))

(assert (=> b!1067389 d!129067))

(declare-fun d!129069 () Bool)

(assert (=> d!129069 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94436 d!129069))

(declare-fun d!129071 () Bool)

(assert (=> d!129071 (= (array_inv!25170 _values!955) (bvsge (size!33262 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94436 d!129071))

(declare-fun d!129073 () Bool)

(assert (=> d!129073 (= (array_inv!25171 _keys!1163) (bvsge (size!33263 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94436 d!129073))

(declare-fun b!1067474 () Bool)

(declare-fun e!608897 () Bool)

(declare-fun contains!6292 (List!22949 (_ BitVec 64)) Bool)

(assert (=> b!1067474 (= e!608897 (contains!6292 Nil!22946 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1067475 () Bool)

(declare-fun e!608896 () Bool)

(declare-fun e!608895 () Bool)

(assert (=> b!1067475 (= e!608896 e!608895)))

(declare-fun res!712436 () Bool)

(assert (=> b!1067475 (=> (not res!712436) (not e!608895))))

(assert (=> b!1067475 (= res!712436 (not e!608897))))

(declare-fun res!712435 () Bool)

(assert (=> b!1067475 (=> (not res!712435) (not e!608897))))

(assert (=> b!1067475 (= res!712435 (validKeyInArray!0 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1067476 () Bool)

(declare-fun e!608898 () Bool)

(declare-fun call!45096 () Bool)

(assert (=> b!1067476 (= e!608898 call!45096)))

(declare-fun b!1067477 () Bool)

(assert (=> b!1067477 (= e!608898 call!45096)))

(declare-fun d!129075 () Bool)

(declare-fun res!712434 () Bool)

(assert (=> d!129075 (=> res!712434 e!608896)))

(assert (=> d!129075 (= res!712434 (bvsge #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(assert (=> d!129075 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22946) e!608896)))

(declare-fun b!1067478 () Bool)

(assert (=> b!1067478 (= e!608895 e!608898)))

(declare-fun c!107446 () Bool)

(assert (=> b!1067478 (= c!107446 (validKeyInArray!0 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45093 () Bool)

(assert (=> bm!45093 (= call!45096 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107446 (Cons!22945 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000) Nil!22946) Nil!22946)))))

(assert (= (and d!129075 (not res!712434)) b!1067475))

(assert (= (and b!1067475 res!712435) b!1067474))

(assert (= (and b!1067475 res!712436) b!1067478))

(assert (= (and b!1067478 c!107446) b!1067477))

(assert (= (and b!1067478 (not c!107446)) b!1067476))

(assert (= (or b!1067477 b!1067476) bm!45093))

(assert (=> b!1067474 m!986223))

(assert (=> b!1067474 m!986223))

(declare-fun m!986271 () Bool)

(assert (=> b!1067474 m!986271))

(assert (=> b!1067475 m!986223))

(assert (=> b!1067475 m!986223))

(assert (=> b!1067475 m!986225))

(assert (=> b!1067478 m!986223))

(assert (=> b!1067478 m!986223))

(assert (=> b!1067478 m!986225))

(assert (=> bm!45093 m!986223))

(declare-fun m!986273 () Bool)

(assert (=> bm!45093 m!986273))

(assert (=> b!1067387 d!129075))

(declare-fun b!1067487 () Bool)

(declare-fun e!608906 () Bool)

(declare-fun call!45099 () Bool)

(assert (=> b!1067487 (= e!608906 call!45099)))

(declare-fun d!129077 () Bool)

(declare-fun res!712442 () Bool)

(declare-fun e!608907 () Bool)

(assert (=> d!129077 (=> res!712442 e!608907)))

(assert (=> d!129077 (= res!712442 (bvsge #b00000000000000000000000000000000 (size!33263 _keys!1163)))))

(assert (=> d!129077 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!608907)))

(declare-fun b!1067488 () Bool)

(declare-fun e!608905 () Bool)

(assert (=> b!1067488 (= e!608905 call!45099)))

(declare-fun b!1067489 () Bool)

(assert (=> b!1067489 (= e!608905 e!608906)))

(declare-fun lt!471473 () (_ BitVec 64))

(assert (=> b!1067489 (= lt!471473 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471471 () Unit!35036)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68058 (_ BitVec 64) (_ BitVec 32)) Unit!35036)

(assert (=> b!1067489 (= lt!471471 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!471473 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1067489 (arrayContainsKey!0 _keys!1163 lt!471473 #b00000000000000000000000000000000)))

(declare-fun lt!471472 () Unit!35036)

(assert (=> b!1067489 (= lt!471472 lt!471471)))

(declare-fun res!712441 () Bool)

(declare-datatypes ((SeekEntryResult!9875 0))(
  ( (MissingZero!9875 (index!41870 (_ BitVec 32))) (Found!9875 (index!41871 (_ BitVec 32))) (Intermediate!9875 (undefined!10687 Bool) (index!41872 (_ BitVec 32)) (x!95582 (_ BitVec 32))) (Undefined!9875) (MissingVacant!9875 (index!41873 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68058 (_ BitVec 32)) SeekEntryResult!9875)

(assert (=> b!1067489 (= res!712441 (= (seekEntryOrOpen!0 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9875 #b00000000000000000000000000000000)))))

(assert (=> b!1067489 (=> (not res!712441) (not e!608906))))

(declare-fun bm!45096 () Bool)

(assert (=> bm!45096 (= call!45099 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1067490 () Bool)

(assert (=> b!1067490 (= e!608907 e!608905)))

(declare-fun c!107449 () Bool)

(assert (=> b!1067490 (= c!107449 (validKeyInArray!0 (select (arr!32726 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129077 (not res!712442)) b!1067490))

(assert (= (and b!1067490 c!107449) b!1067489))

(assert (= (and b!1067490 (not c!107449)) b!1067488))

(assert (= (and b!1067489 res!712441) b!1067487))

(assert (= (or b!1067487 b!1067488) bm!45096))

(assert (=> b!1067489 m!986223))

(declare-fun m!986275 () Bool)

(assert (=> b!1067489 m!986275))

(declare-fun m!986277 () Bool)

(assert (=> b!1067489 m!986277))

(assert (=> b!1067489 m!986223))

(declare-fun m!986279 () Bool)

(assert (=> b!1067489 m!986279))

(declare-fun m!986281 () Bool)

(assert (=> bm!45096 m!986281))

(assert (=> b!1067490 m!986223))

(assert (=> b!1067490 m!986223))

(assert (=> b!1067490 m!986225))

(assert (=> b!1067391 d!129077))

(declare-fun b!1067498 () Bool)

(declare-fun e!608912 () Bool)

(assert (=> b!1067498 (= e!608912 tp_is_empty!25551)))

(declare-fun b!1067497 () Bool)

(declare-fun e!608913 () Bool)

(assert (=> b!1067497 (= e!608913 tp_is_empty!25551)))

(declare-fun condMapEmpty!40024 () Bool)

(declare-fun mapDefault!40024 () ValueCell!12072)

(assert (=> mapNonEmpty!40018 (= condMapEmpty!40024 (= mapRest!40018 ((as const (Array (_ BitVec 32) ValueCell!12072)) mapDefault!40024)))))

(declare-fun mapRes!40024 () Bool)

(assert (=> mapNonEmpty!40018 (= tp!76668 (and e!608912 mapRes!40024))))

(declare-fun mapNonEmpty!40024 () Bool)

(declare-fun tp!76677 () Bool)

(assert (=> mapNonEmpty!40024 (= mapRes!40024 (and tp!76677 e!608913))))

(declare-fun mapValue!40024 () ValueCell!12072)

(declare-fun mapKey!40024 () (_ BitVec 32))

(declare-fun mapRest!40024 () (Array (_ BitVec 32) ValueCell!12072))

(assert (=> mapNonEmpty!40024 (= mapRest!40018 (store mapRest!40024 mapKey!40024 mapValue!40024))))

(declare-fun mapIsEmpty!40024 () Bool)

(assert (=> mapIsEmpty!40024 mapRes!40024))

(assert (= (and mapNonEmpty!40018 condMapEmpty!40024) mapIsEmpty!40024))

(assert (= (and mapNonEmpty!40018 (not condMapEmpty!40024)) mapNonEmpty!40024))

(assert (= (and mapNonEmpty!40024 ((_ is ValueCellFull!12072) mapValue!40024)) b!1067497))

(assert (= (and mapNonEmpty!40018 ((_ is ValueCellFull!12072) mapDefault!40024)) b!1067498))

(declare-fun m!986283 () Bool)

(assert (=> mapNonEmpty!40024 m!986283))

(declare-fun b_lambda!16623 () Bool)

(assert (= b_lambda!16615 (or (and start!94436 b_free!21741) b_lambda!16623)))

(declare-fun b_lambda!16625 () Bool)

(assert (= b_lambda!16621 (or (and start!94436 b_free!21741) b_lambda!16625)))

(declare-fun b_lambda!16627 () Bool)

(assert (= b_lambda!16619 (or (and start!94436 b_free!21741) b_lambda!16627)))

(declare-fun b_lambda!16629 () Bool)

(assert (= b_lambda!16617 (or (and start!94436 b_free!21741) b_lambda!16629)))

(check-sat (not b!1067448) (not mapNonEmpty!40024) (not b!1067462) (not b_next!21741) tp_is_empty!25551 (not b!1067463) (not bm!45093) (not b!1067478) (not d!129065) (not b!1067459) (not b!1067449) (not b!1067455) (not b_lambda!16629) (not b!1067456) (not b!1067490) (not b!1067441) (not b_lambda!16625) b_and!34553 (not b_lambda!16623) (not b!1067442) (not b_lambda!16627) (not b!1067474) (not bm!45096) (not bm!45090) (not b!1067445) (not b!1067446) (not b!1067458) (not bm!45089) (not b!1067460) (not b!1067440) (not b!1067475) (not b!1067444) (not d!129067) (not d!129063) (not b!1067489) (not b!1067454))
(check-sat b_and!34553 (not b_next!21741))
