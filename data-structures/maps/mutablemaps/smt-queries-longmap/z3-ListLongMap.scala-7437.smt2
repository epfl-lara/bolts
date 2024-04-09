; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94510 () Bool)

(assert start!94510)

(declare-fun b_free!21801 () Bool)

(declare-fun b_next!21801 () Bool)

(assert (=> start!94510 (= b_free!21801 (not b_next!21801))))

(declare-fun tp!76850 () Bool)

(declare-fun b_and!34611 () Bool)

(assert (=> start!94510 (= tp!76850 b_and!34611)))

(declare-fun res!712951 () Bool)

(declare-fun e!609512 () Bool)

(assert (=> start!94510 (=> (not res!712951) (not e!609512))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94510 (= res!712951 (validMask!0 mask!1515))))

(assert (=> start!94510 e!609512))

(assert (=> start!94510 true))

(declare-fun tp_is_empty!25611 () Bool)

(assert (=> start!94510 tp_is_empty!25611))

(declare-datatypes ((V!39283 0))(
  ( (V!39284 (val!12856 Int)) )
))
(declare-datatypes ((ValueCell!12102 0))(
  ( (ValueCellFull!12102 (v!15471 V!39283)) (EmptyCell!12102) )
))
(declare-datatypes ((array!68174 0))(
  ( (array!68175 (arr!32783 (Array (_ BitVec 32) ValueCell!12102)) (size!33320 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68174)

(declare-fun e!609510 () Bool)

(declare-fun array_inv!25216 (array!68174) Bool)

(assert (=> start!94510 (and (array_inv!25216 _values!955) e!609510)))

(assert (=> start!94510 tp!76850))

(declare-datatypes ((array!68176 0))(
  ( (array!68177 (arr!32784 (Array (_ BitVec 32) (_ BitVec 64))) (size!33321 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68176)

(declare-fun array_inv!25217 (array!68176) Bool)

(assert (=> start!94510 (array_inv!25217 _keys!1163)))

(declare-fun mapIsEmpty!40111 () Bool)

(declare-fun mapRes!40111 () Bool)

(assert (=> mapIsEmpty!40111 mapRes!40111))

(declare-fun b!1068264 () Bool)

(declare-fun e!609507 () Bool)

(assert (=> b!1068264 (= e!609507 tp_is_empty!25611)))

(declare-fun b!1068265 () Bool)

(declare-fun e!609508 () Bool)

(declare-fun e!609511 () Bool)

(assert (=> b!1068265 (= e!609508 e!609511)))

(declare-fun res!712952 () Bool)

(assert (=> b!1068265 (=> res!712952 e!609511)))

(declare-datatypes ((tuple2!16404 0))(
  ( (tuple2!16405 (_1!8212 (_ BitVec 64)) (_2!8212 V!39283)) )
))
(declare-datatypes ((List!22994 0))(
  ( (Nil!22991) (Cons!22990 (h!24199 tuple2!16404) (t!32326 List!22994)) )
))
(declare-datatypes ((ListLongMap!14385 0))(
  ( (ListLongMap!14386 (toList!7208 List!22994)) )
))
(declare-fun lt!471897 () ListLongMap!14385)

(declare-fun contains!6310 (ListLongMap!14385 (_ BitVec 64)) Bool)

(assert (=> b!1068265 (= res!712952 (contains!6310 lt!471897 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39283)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39283)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4100 (array!68176 array!68174 (_ BitVec 32) (_ BitVec 32) V!39283 V!39283 (_ BitVec 32) Int) ListLongMap!14385)

(assert (=> b!1068265 (= lt!471897 (getCurrentListMap!4100 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068266 () Bool)

(declare-fun e!609509 () Bool)

(assert (=> b!1068266 (= e!609509 tp_is_empty!25611)))

(declare-fun mapNonEmpty!40111 () Bool)

(declare-fun tp!76851 () Bool)

(assert (=> mapNonEmpty!40111 (= mapRes!40111 (and tp!76851 e!609507))))

(declare-fun mapRest!40111 () (Array (_ BitVec 32) ValueCell!12102))

(declare-fun mapValue!40111 () ValueCell!12102)

(declare-fun mapKey!40111 () (_ BitVec 32))

(assert (=> mapNonEmpty!40111 (= (arr!32783 _values!955) (store mapRest!40111 mapKey!40111 mapValue!40111))))

(declare-fun b!1068267 () Bool)

(assert (=> b!1068267 (= e!609511 (bvsle #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(declare-fun -!645 (ListLongMap!14385 (_ BitVec 64)) ListLongMap!14385)

(assert (=> b!1068267 (= (-!645 lt!471897 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471897)))

(declare-datatypes ((Unit!35080 0))(
  ( (Unit!35081) )
))
(declare-fun lt!471896 () Unit!35080)

(declare-fun removeNotPresentStillSame!54 (ListLongMap!14385 (_ BitVec 64)) Unit!35080)

(assert (=> b!1068267 (= lt!471896 (removeNotPresentStillSame!54 lt!471897 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068268 () Bool)

(declare-fun res!712953 () Bool)

(assert (=> b!1068268 (=> (not res!712953) (not e!609512))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1068268 (= res!712953 (and (= (size!33320 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33321 _keys!1163) (size!33320 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1068269 () Bool)

(assert (=> b!1068269 (= e!609510 (and e!609509 mapRes!40111))))

(declare-fun condMapEmpty!40111 () Bool)

(declare-fun mapDefault!40111 () ValueCell!12102)

(assert (=> b!1068269 (= condMapEmpty!40111 (= (arr!32783 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12102)) mapDefault!40111)))))

(declare-fun b!1068270 () Bool)

(assert (=> b!1068270 (= e!609512 (not e!609508))))

(declare-fun res!712954 () Bool)

(assert (=> b!1068270 (=> res!712954 e!609508)))

(assert (=> b!1068270 (= res!712954 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!471899 () ListLongMap!14385)

(declare-fun lt!471895 () ListLongMap!14385)

(assert (=> b!1068270 (= lt!471899 lt!471895)))

(declare-fun lt!471898 () Unit!35080)

(declare-fun zeroValueAfter!47 () V!39283)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!790 (array!68176 array!68174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39283 V!39283 V!39283 V!39283 (_ BitVec 32) Int) Unit!35080)

(assert (=> b!1068270 (= lt!471898 (lemmaNoChangeToArrayThenSameMapNoExtras!790 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3751 (array!68176 array!68174 (_ BitVec 32) (_ BitVec 32) V!39283 V!39283 (_ BitVec 32) Int) ListLongMap!14385)

(assert (=> b!1068270 (= lt!471895 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068270 (= lt!471899 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068271 () Bool)

(declare-fun res!712955 () Bool)

(assert (=> b!1068271 (=> (not res!712955) (not e!609512))))

(declare-datatypes ((List!22995 0))(
  ( (Nil!22992) (Cons!22991 (h!24200 (_ BitVec 64)) (t!32327 List!22995)) )
))
(declare-fun arrayNoDuplicates!0 (array!68176 (_ BitVec 32) List!22995) Bool)

(assert (=> b!1068271 (= res!712955 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22992))))

(declare-fun b!1068272 () Bool)

(declare-fun res!712950 () Bool)

(assert (=> b!1068272 (=> (not res!712950) (not e!609512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68176 (_ BitVec 32)) Bool)

(assert (=> b!1068272 (= res!712950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94510 res!712951) b!1068268))

(assert (= (and b!1068268 res!712953) b!1068272))

(assert (= (and b!1068272 res!712950) b!1068271))

(assert (= (and b!1068271 res!712955) b!1068270))

(assert (= (and b!1068270 (not res!712954)) b!1068265))

(assert (= (and b!1068265 (not res!712952)) b!1068267))

(assert (= (and b!1068269 condMapEmpty!40111) mapIsEmpty!40111))

(assert (= (and b!1068269 (not condMapEmpty!40111)) mapNonEmpty!40111))

(get-info :version)

(assert (= (and mapNonEmpty!40111 ((_ is ValueCellFull!12102) mapValue!40111)) b!1068264))

(assert (= (and b!1068269 ((_ is ValueCellFull!12102) mapDefault!40111)) b!1068266))

(assert (= start!94510 b!1068269))

(declare-fun m!987001 () Bool)

(assert (=> b!1068270 m!987001))

(declare-fun m!987003 () Bool)

(assert (=> b!1068270 m!987003))

(declare-fun m!987005 () Bool)

(assert (=> b!1068270 m!987005))

(declare-fun m!987007 () Bool)

(assert (=> b!1068267 m!987007))

(declare-fun m!987009 () Bool)

(assert (=> b!1068267 m!987009))

(declare-fun m!987011 () Bool)

(assert (=> b!1068271 m!987011))

(declare-fun m!987013 () Bool)

(assert (=> b!1068265 m!987013))

(declare-fun m!987015 () Bool)

(assert (=> b!1068265 m!987015))

(declare-fun m!987017 () Bool)

(assert (=> start!94510 m!987017))

(declare-fun m!987019 () Bool)

(assert (=> start!94510 m!987019))

(declare-fun m!987021 () Bool)

(assert (=> start!94510 m!987021))

(declare-fun m!987023 () Bool)

(assert (=> b!1068272 m!987023))

(declare-fun m!987025 () Bool)

(assert (=> mapNonEmpty!40111 m!987025))

(check-sat (not b!1068272) (not b!1068270) (not b_next!21801) (not mapNonEmpty!40111) b_and!34611 (not b!1068267) (not b!1068265) (not start!94510) tp_is_empty!25611 (not b!1068271))
(check-sat b_and!34611 (not b_next!21801))
(get-model)

(declare-fun d!129099 () Bool)

(declare-fun e!609540 () Bool)

(assert (=> d!129099 e!609540))

(declare-fun res!712976 () Bool)

(assert (=> d!129099 (=> res!712976 e!609540)))

(declare-fun lt!471926 () Bool)

(assert (=> d!129099 (= res!712976 (not lt!471926))))

(declare-fun lt!471925 () Bool)

(assert (=> d!129099 (= lt!471926 lt!471925)))

(declare-fun lt!471924 () Unit!35080)

(declare-fun e!609539 () Unit!35080)

(assert (=> d!129099 (= lt!471924 e!609539)))

(declare-fun c!107452 () Bool)

(assert (=> d!129099 (= c!107452 lt!471925)))

(declare-fun containsKey!575 (List!22994 (_ BitVec 64)) Bool)

(assert (=> d!129099 (= lt!471925 (containsKey!575 (toList!7208 lt!471897) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129099 (= (contains!6310 lt!471897 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471926)))

(declare-fun b!1068306 () Bool)

(declare-fun lt!471923 () Unit!35080)

(assert (=> b!1068306 (= e!609539 lt!471923)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!407 (List!22994 (_ BitVec 64)) Unit!35080)

(assert (=> b!1068306 (= lt!471923 (lemmaContainsKeyImpliesGetValueByKeyDefined!407 (toList!7208 lt!471897) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!655 0))(
  ( (Some!654 (v!15473 V!39283)) (None!653) )
))
(declare-fun isDefined!447 (Option!655) Bool)

(declare-fun getValueByKey!604 (List!22994 (_ BitVec 64)) Option!655)

(assert (=> b!1068306 (isDefined!447 (getValueByKey!604 (toList!7208 lt!471897) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068307 () Bool)

(declare-fun Unit!35082 () Unit!35080)

(assert (=> b!1068307 (= e!609539 Unit!35082)))

(declare-fun b!1068308 () Bool)

(assert (=> b!1068308 (= e!609540 (isDefined!447 (getValueByKey!604 (toList!7208 lt!471897) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129099 c!107452) b!1068306))

(assert (= (and d!129099 (not c!107452)) b!1068307))

(assert (= (and d!129099 (not res!712976)) b!1068308))

(declare-fun m!987053 () Bool)

(assert (=> d!129099 m!987053))

(declare-fun m!987055 () Bool)

(assert (=> b!1068306 m!987055))

(declare-fun m!987057 () Bool)

(assert (=> b!1068306 m!987057))

(assert (=> b!1068306 m!987057))

(declare-fun m!987059 () Bool)

(assert (=> b!1068306 m!987059))

(assert (=> b!1068308 m!987057))

(assert (=> b!1068308 m!987057))

(assert (=> b!1068308 m!987059))

(assert (=> b!1068265 d!129099))

(declare-fun call!45119 () ListLongMap!14385)

(declare-fun c!107467 () Bool)

(declare-fun call!45118 () ListLongMap!14385)

(declare-fun bm!45111 () Bool)

(declare-fun call!45116 () ListLongMap!14385)

(declare-fun c!107468 () Bool)

(declare-fun call!45117 () ListLongMap!14385)

(declare-fun +!3121 (ListLongMap!14385 tuple2!16404) ListLongMap!14385)

(assert (=> bm!45111 (= call!45119 (+!3121 (ite c!107468 call!45117 (ite c!107467 call!45116 call!45118)) (ite (or c!107468 c!107467) (tuple2!16405 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1068351 () Bool)

(declare-fun e!609577 () Bool)

(declare-fun call!45115 () Bool)

(assert (=> b!1068351 (= e!609577 (not call!45115))))

(declare-fun b!1068352 () Bool)

(declare-fun e!609569 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1068352 (= e!609569 (validKeyInArray!0 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45112 () Bool)

(assert (=> bm!45112 (= call!45117 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun bm!45113 () Bool)

(declare-fun lt!471972 () ListLongMap!14385)

(assert (=> bm!45113 (= call!45115 (contains!6310 lt!471972 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068354 () Bool)

(declare-fun e!609575 () Bool)

(declare-fun e!609568 () Bool)

(assert (=> b!1068354 (= e!609575 e!609568)))

(declare-fun res!713000 () Bool)

(assert (=> b!1068354 (=> (not res!713000) (not e!609568))))

(assert (=> b!1068354 (= res!713000 (contains!6310 lt!471972 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1068354 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(declare-fun b!1068355 () Bool)

(declare-fun res!712996 () Bool)

(declare-fun e!609571 () Bool)

(assert (=> b!1068355 (=> (not res!712996) (not e!609571))))

(assert (=> b!1068355 (= res!712996 e!609575)))

(declare-fun res!713001 () Bool)

(assert (=> b!1068355 (=> res!713001 e!609575)))

(assert (=> b!1068355 (= res!713001 (not e!609569))))

(declare-fun res!712999 () Bool)

(assert (=> b!1068355 (=> (not res!712999) (not e!609569))))

(assert (=> b!1068355 (= res!712999 (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(declare-fun bm!45114 () Bool)

(assert (=> bm!45114 (= call!45116 call!45117)))

(declare-fun b!1068356 () Bool)

(declare-fun e!609576 () Unit!35080)

(declare-fun Unit!35083 () Unit!35080)

(assert (=> b!1068356 (= e!609576 Unit!35083)))

(declare-fun b!1068357 () Bool)

(declare-fun apply!961 (ListLongMap!14385 (_ BitVec 64)) V!39283)

(declare-fun get!17099 (ValueCell!12102 V!39283) V!39283)

(declare-fun dynLambda!2037 (Int (_ BitVec 64)) V!39283)

(assert (=> b!1068357 (= e!609568 (= (apply!961 lt!471972 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)) (get!17099 (select (arr!32783 _values!955) #b00000000000000000000000000000000) (dynLambda!2037 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1068357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33320 _values!955)))))

(assert (=> b!1068357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(declare-fun b!1068358 () Bool)

(declare-fun e!609573 () ListLongMap!14385)

(declare-fun call!45120 () ListLongMap!14385)

(assert (=> b!1068358 (= e!609573 call!45120)))

(declare-fun b!1068359 () Bool)

(declare-fun c!107466 () Bool)

(assert (=> b!1068359 (= c!107466 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!609572 () ListLongMap!14385)

(assert (=> b!1068359 (= e!609572 e!609573)))

(declare-fun b!1068360 () Bool)

(assert (=> b!1068360 (= e!609572 call!45120)))

(declare-fun b!1068361 () Bool)

(declare-fun res!713003 () Bool)

(assert (=> b!1068361 (=> (not res!713003) (not e!609571))))

(declare-fun e!609574 () Bool)

(assert (=> b!1068361 (= res!713003 e!609574)))

(declare-fun c!107469 () Bool)

(assert (=> b!1068361 (= c!107469 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!45115 () Bool)

(declare-fun call!45114 () Bool)

(assert (=> bm!45115 (= call!45114 (contains!6310 lt!471972 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!45116 () Bool)

(assert (=> bm!45116 (= call!45120 call!45119)))

(declare-fun bm!45117 () Bool)

(assert (=> bm!45117 (= call!45118 call!45116)))

(declare-fun b!1068362 () Bool)

(assert (=> b!1068362 (= e!609571 e!609577)))

(declare-fun c!107465 () Bool)

(assert (=> b!1068362 (= c!107465 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1068363 () Bool)

(declare-fun e!609570 () Bool)

(assert (=> b!1068363 (= e!609577 e!609570)))

(declare-fun res!712997 () Bool)

(assert (=> b!1068363 (= res!712997 call!45115)))

(assert (=> b!1068363 (=> (not res!712997) (not e!609570))))

(declare-fun b!1068364 () Bool)

(assert (=> b!1068364 (= e!609574 (not call!45114))))

(declare-fun b!1068365 () Bool)

(declare-fun e!609579 () Bool)

(assert (=> b!1068365 (= e!609574 e!609579)))

(declare-fun res!713002 () Bool)

(assert (=> b!1068365 (= res!713002 call!45114)))

(assert (=> b!1068365 (=> (not res!713002) (not e!609579))))

(declare-fun d!129101 () Bool)

(assert (=> d!129101 e!609571))

(declare-fun res!712998 () Bool)

(assert (=> d!129101 (=> (not res!712998) (not e!609571))))

(assert (=> d!129101 (= res!712998 (or (bvsge #b00000000000000000000000000000000 (size!33321 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))))

(declare-fun lt!471980 () ListLongMap!14385)

(assert (=> d!129101 (= lt!471972 lt!471980)))

(declare-fun lt!471976 () Unit!35080)

(assert (=> d!129101 (= lt!471976 e!609576)))

(declare-fun c!107470 () Bool)

(declare-fun e!609567 () Bool)

(assert (=> d!129101 (= c!107470 e!609567)))

(declare-fun res!712995 () Bool)

(assert (=> d!129101 (=> (not res!712995) (not e!609567))))

(assert (=> d!129101 (= res!712995 (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(declare-fun e!609578 () ListLongMap!14385)

(assert (=> d!129101 (= lt!471980 e!609578)))

(assert (=> d!129101 (= c!107468 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129101 (validMask!0 mask!1515)))

(assert (=> d!129101 (= (getCurrentListMap!4100 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!471972)))

(declare-fun b!1068353 () Bool)

(assert (=> b!1068353 (= e!609579 (= (apply!961 lt!471972 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1068366 () Bool)

(declare-fun lt!471977 () Unit!35080)

(assert (=> b!1068366 (= e!609576 lt!471977)))

(declare-fun lt!471982 () ListLongMap!14385)

(assert (=> b!1068366 (= lt!471982 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471978 () (_ BitVec 64))

(assert (=> b!1068366 (= lt!471978 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471981 () (_ BitVec 64))

(assert (=> b!1068366 (= lt!471981 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471987 () Unit!35080)

(declare-fun addStillContains!645 (ListLongMap!14385 (_ BitVec 64) V!39283 (_ BitVec 64)) Unit!35080)

(assert (=> b!1068366 (= lt!471987 (addStillContains!645 lt!471982 lt!471978 zeroValueBefore!47 lt!471981))))

(assert (=> b!1068366 (contains!6310 (+!3121 lt!471982 (tuple2!16405 lt!471978 zeroValueBefore!47)) lt!471981)))

(declare-fun lt!471990 () Unit!35080)

(assert (=> b!1068366 (= lt!471990 lt!471987)))

(declare-fun lt!471989 () ListLongMap!14385)

(assert (=> b!1068366 (= lt!471989 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471984 () (_ BitVec 64))

(assert (=> b!1068366 (= lt!471984 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471979 () (_ BitVec 64))

(assert (=> b!1068366 (= lt!471979 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471973 () Unit!35080)

(declare-fun addApplyDifferent!497 (ListLongMap!14385 (_ BitVec 64) V!39283 (_ BitVec 64)) Unit!35080)

(assert (=> b!1068366 (= lt!471973 (addApplyDifferent!497 lt!471989 lt!471984 minValue!907 lt!471979))))

(assert (=> b!1068366 (= (apply!961 (+!3121 lt!471989 (tuple2!16405 lt!471984 minValue!907)) lt!471979) (apply!961 lt!471989 lt!471979))))

(declare-fun lt!471986 () Unit!35080)

(assert (=> b!1068366 (= lt!471986 lt!471973)))

(declare-fun lt!471971 () ListLongMap!14385)

(assert (=> b!1068366 (= lt!471971 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471974 () (_ BitVec 64))

(assert (=> b!1068366 (= lt!471974 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471988 () (_ BitVec 64))

(assert (=> b!1068366 (= lt!471988 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!471975 () Unit!35080)

(assert (=> b!1068366 (= lt!471975 (addApplyDifferent!497 lt!471971 lt!471974 zeroValueBefore!47 lt!471988))))

(assert (=> b!1068366 (= (apply!961 (+!3121 lt!471971 (tuple2!16405 lt!471974 zeroValueBefore!47)) lt!471988) (apply!961 lt!471971 lt!471988))))

(declare-fun lt!471991 () Unit!35080)

(assert (=> b!1068366 (= lt!471991 lt!471975)))

(declare-fun lt!471985 () ListLongMap!14385)

(assert (=> b!1068366 (= lt!471985 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471992 () (_ BitVec 64))

(assert (=> b!1068366 (= lt!471992 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!471983 () (_ BitVec 64))

(assert (=> b!1068366 (= lt!471983 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1068366 (= lt!471977 (addApplyDifferent!497 lt!471985 lt!471992 minValue!907 lt!471983))))

(assert (=> b!1068366 (= (apply!961 (+!3121 lt!471985 (tuple2!16405 lt!471992 minValue!907)) lt!471983) (apply!961 lt!471985 lt!471983))))

(declare-fun b!1068367 () Bool)

(assert (=> b!1068367 (= e!609578 e!609572)))

(assert (=> b!1068367 (= c!107467 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1068368 () Bool)

(assert (=> b!1068368 (= e!609570 (= (apply!961 lt!471972 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1068369 () Bool)

(assert (=> b!1068369 (= e!609567 (validKeyInArray!0 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1068370 () Bool)

(assert (=> b!1068370 (= e!609578 (+!3121 call!45119 (tuple2!16405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1068371 () Bool)

(assert (=> b!1068371 (= e!609573 call!45118)))

(assert (= (and d!129101 c!107468) b!1068370))

(assert (= (and d!129101 (not c!107468)) b!1068367))

(assert (= (and b!1068367 c!107467) b!1068360))

(assert (= (and b!1068367 (not c!107467)) b!1068359))

(assert (= (and b!1068359 c!107466) b!1068358))

(assert (= (and b!1068359 (not c!107466)) b!1068371))

(assert (= (or b!1068358 b!1068371) bm!45117))

(assert (= (or b!1068360 bm!45117) bm!45114))

(assert (= (or b!1068360 b!1068358) bm!45116))

(assert (= (or b!1068370 bm!45114) bm!45112))

(assert (= (or b!1068370 bm!45116) bm!45111))

(assert (= (and d!129101 res!712995) b!1068369))

(assert (= (and d!129101 c!107470) b!1068366))

(assert (= (and d!129101 (not c!107470)) b!1068356))

(assert (= (and d!129101 res!712998) b!1068355))

(assert (= (and b!1068355 res!712999) b!1068352))

(assert (= (and b!1068355 (not res!713001)) b!1068354))

(assert (= (and b!1068354 res!713000) b!1068357))

(assert (= (and b!1068355 res!712996) b!1068361))

(assert (= (and b!1068361 c!107469) b!1068365))

(assert (= (and b!1068361 (not c!107469)) b!1068364))

(assert (= (and b!1068365 res!713002) b!1068353))

(assert (= (or b!1068365 b!1068364) bm!45115))

(assert (= (and b!1068361 res!713003) b!1068362))

(assert (= (and b!1068362 c!107465) b!1068363))

(assert (= (and b!1068362 (not c!107465)) b!1068351))

(assert (= (and b!1068363 res!712997) b!1068368))

(assert (= (or b!1068363 b!1068351) bm!45113))

(declare-fun b_lambda!16631 () Bool)

(assert (=> (not b_lambda!16631) (not b!1068357)))

(declare-fun t!32330 () Bool)

(declare-fun tb!7155 () Bool)

(assert (=> (and start!94510 (= defaultEntry!963 defaultEntry!963) t!32330) tb!7155))

(declare-fun result!14757 () Bool)

(assert (=> tb!7155 (= result!14757 tp_is_empty!25611)))

(assert (=> b!1068357 t!32330))

(declare-fun b_and!34615 () Bool)

(assert (= b_and!34611 (and (=> t!32330 result!14757) b_and!34615)))

(assert (=> d!129101 m!987017))

(declare-fun m!987061 () Bool)

(assert (=> b!1068352 m!987061))

(assert (=> b!1068352 m!987061))

(declare-fun m!987063 () Bool)

(assert (=> b!1068352 m!987063))

(assert (=> b!1068354 m!987061))

(assert (=> b!1068354 m!987061))

(declare-fun m!987065 () Bool)

(assert (=> b!1068354 m!987065))

(declare-fun m!987067 () Bool)

(assert (=> b!1068353 m!987067))

(assert (=> b!1068369 m!987061))

(assert (=> b!1068369 m!987061))

(assert (=> b!1068369 m!987063))

(assert (=> b!1068357 m!987061))

(declare-fun m!987069 () Bool)

(assert (=> b!1068357 m!987069))

(declare-fun m!987071 () Bool)

(assert (=> b!1068357 m!987071))

(assert (=> b!1068357 m!987061))

(declare-fun m!987073 () Bool)

(assert (=> b!1068357 m!987073))

(assert (=> b!1068357 m!987071))

(declare-fun m!987075 () Bool)

(assert (=> b!1068357 m!987075))

(assert (=> b!1068357 m!987073))

(declare-fun m!987077 () Bool)

(assert (=> b!1068366 m!987077))

(declare-fun m!987079 () Bool)

(assert (=> b!1068366 m!987079))

(declare-fun m!987081 () Bool)

(assert (=> b!1068366 m!987081))

(declare-fun m!987083 () Bool)

(assert (=> b!1068366 m!987083))

(declare-fun m!987085 () Bool)

(assert (=> b!1068366 m!987085))

(declare-fun m!987087 () Bool)

(assert (=> b!1068366 m!987087))

(declare-fun m!987089 () Bool)

(assert (=> b!1068366 m!987089))

(declare-fun m!987091 () Bool)

(assert (=> b!1068366 m!987091))

(assert (=> b!1068366 m!987079))

(assert (=> b!1068366 m!987005))

(declare-fun m!987093 () Bool)

(assert (=> b!1068366 m!987093))

(declare-fun m!987095 () Bool)

(assert (=> b!1068366 m!987095))

(assert (=> b!1068366 m!987061))

(declare-fun m!987097 () Bool)

(assert (=> b!1068366 m!987097))

(declare-fun m!987099 () Bool)

(assert (=> b!1068366 m!987099))

(assert (=> b!1068366 m!987083))

(declare-fun m!987101 () Bool)

(assert (=> b!1068366 m!987101))

(assert (=> b!1068366 m!987085))

(declare-fun m!987103 () Bool)

(assert (=> b!1068366 m!987103))

(declare-fun m!987105 () Bool)

(assert (=> b!1068366 m!987105))

(assert (=> b!1068366 m!987093))

(declare-fun m!987107 () Bool)

(assert (=> bm!45115 m!987107))

(declare-fun m!987109 () Bool)

(assert (=> bm!45111 m!987109))

(declare-fun m!987111 () Bool)

(assert (=> b!1068370 m!987111))

(declare-fun m!987113 () Bool)

(assert (=> bm!45113 m!987113))

(assert (=> bm!45112 m!987005))

(declare-fun m!987115 () Bool)

(assert (=> b!1068368 m!987115))

(assert (=> b!1068265 d!129101))

(declare-fun d!129103 () Bool)

(assert (=> d!129103 (= (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!471995 () Unit!35080)

(declare-fun choose!1741 (array!68176 array!68174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39283 V!39283 V!39283 V!39283 (_ BitVec 32) Int) Unit!35080)

(assert (=> d!129103 (= lt!471995 (choose!1741 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129103 (validMask!0 mask!1515)))

(assert (=> d!129103 (= (lemmaNoChangeToArrayThenSameMapNoExtras!790 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!471995)))

(declare-fun bs!31449 () Bool)

(assert (= bs!31449 d!129103))

(assert (=> bs!31449 m!987005))

(assert (=> bs!31449 m!987003))

(declare-fun m!987117 () Bool)

(assert (=> bs!31449 m!987117))

(assert (=> bs!31449 m!987017))

(assert (=> b!1068270 d!129103))

(declare-fun b!1068398 () Bool)

(declare-fun e!609597 () ListLongMap!14385)

(declare-fun call!45123 () ListLongMap!14385)

(assert (=> b!1068398 (= e!609597 call!45123)))

(declare-fun b!1068399 () Bool)

(declare-fun res!713015 () Bool)

(declare-fun e!609594 () Bool)

(assert (=> b!1068399 (=> (not res!713015) (not e!609594))))

(declare-fun lt!472015 () ListLongMap!14385)

(assert (=> b!1068399 (= res!713015 (not (contains!6310 lt!472015 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1068400 () Bool)

(declare-fun e!609600 () ListLongMap!14385)

(assert (=> b!1068400 (= e!609600 (ListLongMap!14386 Nil!22991))))

(declare-fun d!129105 () Bool)

(assert (=> d!129105 e!609594))

(declare-fun res!713013 () Bool)

(assert (=> d!129105 (=> (not res!713013) (not e!609594))))

(assert (=> d!129105 (= res!713013 (not (contains!6310 lt!472015 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129105 (= lt!472015 e!609600)))

(declare-fun c!107480 () Bool)

(assert (=> d!129105 (= c!107480 (bvsge #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(assert (=> d!129105 (validMask!0 mask!1515)))

(assert (=> d!129105 (= (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!472015)))

(declare-fun bm!45120 () Bool)

(assert (=> bm!45120 (= call!45123 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1068401 () Bool)

(declare-fun e!609595 () Bool)

(assert (=> b!1068401 (= e!609595 (validKeyInArray!0 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1068401 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1068402 () Bool)

(declare-fun e!609599 () Bool)

(declare-fun isEmpty!947 (ListLongMap!14385) Bool)

(assert (=> b!1068402 (= e!609599 (isEmpty!947 lt!472015))))

(declare-fun b!1068403 () Bool)

(declare-fun e!609598 () Bool)

(declare-fun e!609596 () Bool)

(assert (=> b!1068403 (= e!609598 e!609596)))

(assert (=> b!1068403 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(declare-fun res!713014 () Bool)

(assert (=> b!1068403 (= res!713014 (contains!6310 lt!472015 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1068403 (=> (not res!713014) (not e!609596))))

(declare-fun b!1068404 () Bool)

(assert (=> b!1068404 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(assert (=> b!1068404 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33320 _values!955)))))

(assert (=> b!1068404 (= e!609596 (= (apply!961 lt!472015 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)) (get!17099 (select (arr!32783 _values!955) #b00000000000000000000000000000000) (dynLambda!2037 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1068405 () Bool)

(assert (=> b!1068405 (= e!609594 e!609598)))

(declare-fun c!107479 () Bool)

(assert (=> b!1068405 (= c!107479 e!609595)))

(declare-fun res!713012 () Bool)

(assert (=> b!1068405 (=> (not res!713012) (not e!609595))))

(assert (=> b!1068405 (= res!713012 (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(declare-fun b!1068406 () Bool)

(assert (=> b!1068406 (= e!609599 (= lt!472015 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1068407 () Bool)

(declare-fun lt!472016 () Unit!35080)

(declare-fun lt!472013 () Unit!35080)

(assert (=> b!1068407 (= lt!472016 lt!472013)))

(declare-fun lt!472014 () ListLongMap!14385)

(declare-fun lt!472012 () (_ BitVec 64))

(declare-fun lt!472011 () (_ BitVec 64))

(declare-fun lt!472010 () V!39283)

(assert (=> b!1068407 (not (contains!6310 (+!3121 lt!472014 (tuple2!16405 lt!472011 lt!472010)) lt!472012))))

(declare-fun addStillNotContains!256 (ListLongMap!14385 (_ BitVec 64) V!39283 (_ BitVec 64)) Unit!35080)

(assert (=> b!1068407 (= lt!472013 (addStillNotContains!256 lt!472014 lt!472011 lt!472010 lt!472012))))

(assert (=> b!1068407 (= lt!472012 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1068407 (= lt!472010 (get!17099 (select (arr!32783 _values!955) #b00000000000000000000000000000000) (dynLambda!2037 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1068407 (= lt!472011 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1068407 (= lt!472014 call!45123)))

(assert (=> b!1068407 (= e!609597 (+!3121 call!45123 (tuple2!16405 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000) (get!17099 (select (arr!32783 _values!955) #b00000000000000000000000000000000) (dynLambda!2037 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1068408 () Bool)

(assert (=> b!1068408 (= e!609600 e!609597)))

(declare-fun c!107481 () Bool)

(assert (=> b!1068408 (= c!107481 (validKeyInArray!0 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1068409 () Bool)

(assert (=> b!1068409 (= e!609598 e!609599)))

(declare-fun c!107482 () Bool)

(assert (=> b!1068409 (= c!107482 (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(assert (= (and d!129105 c!107480) b!1068400))

(assert (= (and d!129105 (not c!107480)) b!1068408))

(assert (= (and b!1068408 c!107481) b!1068407))

(assert (= (and b!1068408 (not c!107481)) b!1068398))

(assert (= (or b!1068407 b!1068398) bm!45120))

(assert (= (and d!129105 res!713013) b!1068399))

(assert (= (and b!1068399 res!713015) b!1068405))

(assert (= (and b!1068405 res!713012) b!1068401))

(assert (= (and b!1068405 c!107479) b!1068403))

(assert (= (and b!1068405 (not c!107479)) b!1068409))

(assert (= (and b!1068403 res!713014) b!1068404))

(assert (= (and b!1068409 c!107482) b!1068406))

(assert (= (and b!1068409 (not c!107482)) b!1068402))

(declare-fun b_lambda!16633 () Bool)

(assert (=> (not b_lambda!16633) (not b!1068404)))

(assert (=> b!1068404 t!32330))

(declare-fun b_and!34617 () Bool)

(assert (= b_and!34615 (and (=> t!32330 result!14757) b_and!34617)))

(declare-fun b_lambda!16635 () Bool)

(assert (=> (not b_lambda!16635) (not b!1068407)))

(assert (=> b!1068407 t!32330))

(declare-fun b_and!34619 () Bool)

(assert (= b_and!34617 (and (=> t!32330 result!14757) b_and!34619)))

(declare-fun m!987119 () Bool)

(assert (=> b!1068402 m!987119))

(assert (=> b!1068407 m!987061))

(declare-fun m!987121 () Bool)

(assert (=> b!1068407 m!987121))

(assert (=> b!1068407 m!987071))

(assert (=> b!1068407 m!987073))

(assert (=> b!1068407 m!987071))

(assert (=> b!1068407 m!987075))

(assert (=> b!1068407 m!987073))

(declare-fun m!987123 () Bool)

(assert (=> b!1068407 m!987123))

(declare-fun m!987125 () Bool)

(assert (=> b!1068407 m!987125))

(declare-fun m!987127 () Bool)

(assert (=> b!1068407 m!987127))

(assert (=> b!1068407 m!987125))

(declare-fun m!987129 () Bool)

(assert (=> b!1068399 m!987129))

(declare-fun m!987131 () Bool)

(assert (=> d!129105 m!987131))

(assert (=> d!129105 m!987017))

(declare-fun m!987133 () Bool)

(assert (=> b!1068406 m!987133))

(assert (=> b!1068401 m!987061))

(assert (=> b!1068401 m!987061))

(assert (=> b!1068401 m!987063))

(assert (=> bm!45120 m!987133))

(assert (=> b!1068403 m!987061))

(assert (=> b!1068403 m!987061))

(declare-fun m!987135 () Bool)

(assert (=> b!1068403 m!987135))

(assert (=> b!1068408 m!987061))

(assert (=> b!1068408 m!987061))

(assert (=> b!1068408 m!987063))

(assert (=> b!1068404 m!987061))

(assert (=> b!1068404 m!987071))

(assert (=> b!1068404 m!987073))

(assert (=> b!1068404 m!987071))

(assert (=> b!1068404 m!987075))

(assert (=> b!1068404 m!987073))

(assert (=> b!1068404 m!987061))

(declare-fun m!987137 () Bool)

(assert (=> b!1068404 m!987137))

(assert (=> b!1068270 d!129105))

(declare-fun b!1068410 () Bool)

(declare-fun e!609604 () ListLongMap!14385)

(declare-fun call!45124 () ListLongMap!14385)

(assert (=> b!1068410 (= e!609604 call!45124)))

(declare-fun b!1068411 () Bool)

(declare-fun res!713019 () Bool)

(declare-fun e!609601 () Bool)

(assert (=> b!1068411 (=> (not res!713019) (not e!609601))))

(declare-fun lt!472022 () ListLongMap!14385)

(assert (=> b!1068411 (= res!713019 (not (contains!6310 lt!472022 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1068412 () Bool)

(declare-fun e!609607 () ListLongMap!14385)

(assert (=> b!1068412 (= e!609607 (ListLongMap!14386 Nil!22991))))

(declare-fun d!129107 () Bool)

(assert (=> d!129107 e!609601))

(declare-fun res!713017 () Bool)

(assert (=> d!129107 (=> (not res!713017) (not e!609601))))

(assert (=> d!129107 (= res!713017 (not (contains!6310 lt!472022 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129107 (= lt!472022 e!609607)))

(declare-fun c!107484 () Bool)

(assert (=> d!129107 (= c!107484 (bvsge #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(assert (=> d!129107 (validMask!0 mask!1515)))

(assert (=> d!129107 (= (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!472022)))

(declare-fun bm!45121 () Bool)

(assert (=> bm!45121 (= call!45124 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1068413 () Bool)

(declare-fun e!609602 () Bool)

(assert (=> b!1068413 (= e!609602 (validKeyInArray!0 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1068413 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1068414 () Bool)

(declare-fun e!609606 () Bool)

(assert (=> b!1068414 (= e!609606 (isEmpty!947 lt!472022))))

(declare-fun b!1068415 () Bool)

(declare-fun e!609605 () Bool)

(declare-fun e!609603 () Bool)

(assert (=> b!1068415 (= e!609605 e!609603)))

(assert (=> b!1068415 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(declare-fun res!713018 () Bool)

(assert (=> b!1068415 (= res!713018 (contains!6310 lt!472022 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1068415 (=> (not res!713018) (not e!609603))))

(declare-fun b!1068416 () Bool)

(assert (=> b!1068416 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(assert (=> b!1068416 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33320 _values!955)))))

(assert (=> b!1068416 (= e!609603 (= (apply!961 lt!472022 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)) (get!17099 (select (arr!32783 _values!955) #b00000000000000000000000000000000) (dynLambda!2037 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1068417 () Bool)

(assert (=> b!1068417 (= e!609601 e!609605)))

(declare-fun c!107483 () Bool)

(assert (=> b!1068417 (= c!107483 e!609602)))

(declare-fun res!713016 () Bool)

(assert (=> b!1068417 (=> (not res!713016) (not e!609602))))

(assert (=> b!1068417 (= res!713016 (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(declare-fun b!1068418 () Bool)

(assert (=> b!1068418 (= e!609606 (= lt!472022 (getCurrentListMapNoExtraKeys!3751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1068419 () Bool)

(declare-fun lt!472023 () Unit!35080)

(declare-fun lt!472020 () Unit!35080)

(assert (=> b!1068419 (= lt!472023 lt!472020)))

(declare-fun lt!472017 () V!39283)

(declare-fun lt!472019 () (_ BitVec 64))

(declare-fun lt!472018 () (_ BitVec 64))

(declare-fun lt!472021 () ListLongMap!14385)

(assert (=> b!1068419 (not (contains!6310 (+!3121 lt!472021 (tuple2!16405 lt!472018 lt!472017)) lt!472019))))

(assert (=> b!1068419 (= lt!472020 (addStillNotContains!256 lt!472021 lt!472018 lt!472017 lt!472019))))

(assert (=> b!1068419 (= lt!472019 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1068419 (= lt!472017 (get!17099 (select (arr!32783 _values!955) #b00000000000000000000000000000000) (dynLambda!2037 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1068419 (= lt!472018 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1068419 (= lt!472021 call!45124)))

(assert (=> b!1068419 (= e!609604 (+!3121 call!45124 (tuple2!16405 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000) (get!17099 (select (arr!32783 _values!955) #b00000000000000000000000000000000) (dynLambda!2037 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1068420 () Bool)

(assert (=> b!1068420 (= e!609607 e!609604)))

(declare-fun c!107485 () Bool)

(assert (=> b!1068420 (= c!107485 (validKeyInArray!0 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1068421 () Bool)

(assert (=> b!1068421 (= e!609605 e!609606)))

(declare-fun c!107486 () Bool)

(assert (=> b!1068421 (= c!107486 (bvslt #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(assert (= (and d!129107 c!107484) b!1068412))

(assert (= (and d!129107 (not c!107484)) b!1068420))

(assert (= (and b!1068420 c!107485) b!1068419))

(assert (= (and b!1068420 (not c!107485)) b!1068410))

(assert (= (or b!1068419 b!1068410) bm!45121))

(assert (= (and d!129107 res!713017) b!1068411))

(assert (= (and b!1068411 res!713019) b!1068417))

(assert (= (and b!1068417 res!713016) b!1068413))

(assert (= (and b!1068417 c!107483) b!1068415))

(assert (= (and b!1068417 (not c!107483)) b!1068421))

(assert (= (and b!1068415 res!713018) b!1068416))

(assert (= (and b!1068421 c!107486) b!1068418))

(assert (= (and b!1068421 (not c!107486)) b!1068414))

(declare-fun b_lambda!16637 () Bool)

(assert (=> (not b_lambda!16637) (not b!1068416)))

(assert (=> b!1068416 t!32330))

(declare-fun b_and!34621 () Bool)

(assert (= b_and!34619 (and (=> t!32330 result!14757) b_and!34621)))

(declare-fun b_lambda!16639 () Bool)

(assert (=> (not b_lambda!16639) (not b!1068419)))

(assert (=> b!1068419 t!32330))

(declare-fun b_and!34623 () Bool)

(assert (= b_and!34621 (and (=> t!32330 result!14757) b_and!34623)))

(declare-fun m!987139 () Bool)

(assert (=> b!1068414 m!987139))

(assert (=> b!1068419 m!987061))

(declare-fun m!987141 () Bool)

(assert (=> b!1068419 m!987141))

(assert (=> b!1068419 m!987071))

(assert (=> b!1068419 m!987073))

(assert (=> b!1068419 m!987071))

(assert (=> b!1068419 m!987075))

(assert (=> b!1068419 m!987073))

(declare-fun m!987143 () Bool)

(assert (=> b!1068419 m!987143))

(declare-fun m!987145 () Bool)

(assert (=> b!1068419 m!987145))

(declare-fun m!987147 () Bool)

(assert (=> b!1068419 m!987147))

(assert (=> b!1068419 m!987145))

(declare-fun m!987149 () Bool)

(assert (=> b!1068411 m!987149))

(declare-fun m!987151 () Bool)

(assert (=> d!129107 m!987151))

(assert (=> d!129107 m!987017))

(declare-fun m!987153 () Bool)

(assert (=> b!1068418 m!987153))

(assert (=> b!1068413 m!987061))

(assert (=> b!1068413 m!987061))

(assert (=> b!1068413 m!987063))

(assert (=> bm!45121 m!987153))

(assert (=> b!1068415 m!987061))

(assert (=> b!1068415 m!987061))

(declare-fun m!987155 () Bool)

(assert (=> b!1068415 m!987155))

(assert (=> b!1068420 m!987061))

(assert (=> b!1068420 m!987061))

(assert (=> b!1068420 m!987063))

(assert (=> b!1068416 m!987061))

(assert (=> b!1068416 m!987071))

(assert (=> b!1068416 m!987073))

(assert (=> b!1068416 m!987071))

(assert (=> b!1068416 m!987075))

(assert (=> b!1068416 m!987073))

(assert (=> b!1068416 m!987061))

(declare-fun m!987157 () Bool)

(assert (=> b!1068416 m!987157))

(assert (=> b!1068270 d!129107))

(declare-fun d!129109 () Bool)

(assert (=> d!129109 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94510 d!129109))

(declare-fun d!129111 () Bool)

(assert (=> d!129111 (= (array_inv!25216 _values!955) (bvsge (size!33320 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94510 d!129111))

(declare-fun d!129113 () Bool)

(assert (=> d!129113 (= (array_inv!25217 _keys!1163) (bvsge (size!33321 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94510 d!129113))

(declare-fun b!1068432 () Bool)

(declare-fun e!609619 () Bool)

(declare-fun e!609617 () Bool)

(assert (=> b!1068432 (= e!609619 e!609617)))

(declare-fun c!107489 () Bool)

(assert (=> b!1068432 (= c!107489 (validKeyInArray!0 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45124 () Bool)

(declare-fun call!45127 () Bool)

(assert (=> bm!45124 (= call!45127 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107489 (Cons!22991 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000) Nil!22992) Nil!22992)))))

(declare-fun b!1068433 () Bool)

(assert (=> b!1068433 (= e!609617 call!45127)))

(declare-fun d!129115 () Bool)

(declare-fun res!713027 () Bool)

(declare-fun e!609616 () Bool)

(assert (=> d!129115 (=> res!713027 e!609616)))

(assert (=> d!129115 (= res!713027 (bvsge #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(assert (=> d!129115 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22992) e!609616)))

(declare-fun b!1068434 () Bool)

(assert (=> b!1068434 (= e!609616 e!609619)))

(declare-fun res!713028 () Bool)

(assert (=> b!1068434 (=> (not res!713028) (not e!609619))))

(declare-fun e!609618 () Bool)

(assert (=> b!1068434 (= res!713028 (not e!609618))))

(declare-fun res!713026 () Bool)

(assert (=> b!1068434 (=> (not res!713026) (not e!609618))))

(assert (=> b!1068434 (= res!713026 (validKeyInArray!0 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1068435 () Bool)

(declare-fun contains!6311 (List!22995 (_ BitVec 64)) Bool)

(assert (=> b!1068435 (= e!609618 (contains!6311 Nil!22992 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1068436 () Bool)

(assert (=> b!1068436 (= e!609617 call!45127)))

(assert (= (and d!129115 (not res!713027)) b!1068434))

(assert (= (and b!1068434 res!713026) b!1068435))

(assert (= (and b!1068434 res!713028) b!1068432))

(assert (= (and b!1068432 c!107489) b!1068436))

(assert (= (and b!1068432 (not c!107489)) b!1068433))

(assert (= (or b!1068436 b!1068433) bm!45124))

(assert (=> b!1068432 m!987061))

(assert (=> b!1068432 m!987061))

(assert (=> b!1068432 m!987063))

(assert (=> bm!45124 m!987061))

(declare-fun m!987159 () Bool)

(assert (=> bm!45124 m!987159))

(assert (=> b!1068434 m!987061))

(assert (=> b!1068434 m!987061))

(assert (=> b!1068434 m!987063))

(assert (=> b!1068435 m!987061))

(assert (=> b!1068435 m!987061))

(declare-fun m!987161 () Bool)

(assert (=> b!1068435 m!987161))

(assert (=> b!1068271 d!129115))

(declare-fun b!1068445 () Bool)

(declare-fun e!609628 () Bool)

(declare-fun e!609626 () Bool)

(assert (=> b!1068445 (= e!609628 e!609626)))

(declare-fun lt!472030 () (_ BitVec 64))

(assert (=> b!1068445 (= lt!472030 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!472031 () Unit!35080)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68176 (_ BitVec 64) (_ BitVec 32)) Unit!35080)

(assert (=> b!1068445 (= lt!472031 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!472030 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1068445 (arrayContainsKey!0 _keys!1163 lt!472030 #b00000000000000000000000000000000)))

(declare-fun lt!472032 () Unit!35080)

(assert (=> b!1068445 (= lt!472032 lt!472031)))

(declare-fun res!713033 () Bool)

(declare-datatypes ((SeekEntryResult!9876 0))(
  ( (MissingZero!9876 (index!41874 (_ BitVec 32))) (Found!9876 (index!41875 (_ BitVec 32))) (Intermediate!9876 (undefined!10688 Bool) (index!41876 (_ BitVec 32)) (x!95674 (_ BitVec 32))) (Undefined!9876) (MissingVacant!9876 (index!41877 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68176 (_ BitVec 32)) SeekEntryResult!9876)

(assert (=> b!1068445 (= res!713033 (= (seekEntryOrOpen!0 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9876 #b00000000000000000000000000000000)))))

(assert (=> b!1068445 (=> (not res!713033) (not e!609626))))

(declare-fun b!1068446 () Bool)

(declare-fun call!45130 () Bool)

(assert (=> b!1068446 (= e!609628 call!45130)))

(declare-fun b!1068447 () Bool)

(declare-fun e!609627 () Bool)

(assert (=> b!1068447 (= e!609627 e!609628)))

(declare-fun c!107492 () Bool)

(assert (=> b!1068447 (= c!107492 (validKeyInArray!0 (select (arr!32784 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129117 () Bool)

(declare-fun res!713034 () Bool)

(assert (=> d!129117 (=> res!713034 e!609627)))

(assert (=> d!129117 (= res!713034 (bvsge #b00000000000000000000000000000000 (size!33321 _keys!1163)))))

(assert (=> d!129117 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!609627)))

(declare-fun bm!45127 () Bool)

(assert (=> bm!45127 (= call!45130 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1068448 () Bool)

(assert (=> b!1068448 (= e!609626 call!45130)))

(assert (= (and d!129117 (not res!713034)) b!1068447))

(assert (= (and b!1068447 c!107492) b!1068445))

(assert (= (and b!1068447 (not c!107492)) b!1068446))

(assert (= (and b!1068445 res!713033) b!1068448))

(assert (= (or b!1068448 b!1068446) bm!45127))

(assert (=> b!1068445 m!987061))

(declare-fun m!987163 () Bool)

(assert (=> b!1068445 m!987163))

(declare-fun m!987165 () Bool)

(assert (=> b!1068445 m!987165))

(assert (=> b!1068445 m!987061))

(declare-fun m!987167 () Bool)

(assert (=> b!1068445 m!987167))

(assert (=> b!1068447 m!987061))

(assert (=> b!1068447 m!987061))

(assert (=> b!1068447 m!987063))

(declare-fun m!987169 () Bool)

(assert (=> bm!45127 m!987169))

(assert (=> b!1068272 d!129117))

(declare-fun d!129119 () Bool)

(declare-fun lt!472035 () ListLongMap!14385)

(assert (=> d!129119 (not (contains!6310 lt!472035 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!72 (List!22994 (_ BitVec 64)) List!22994)

(assert (=> d!129119 (= lt!472035 (ListLongMap!14386 (removeStrictlySorted!72 (toList!7208 lt!471897) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129119 (= (-!645 lt!471897 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472035)))

(declare-fun bs!31450 () Bool)

(assert (= bs!31450 d!129119))

(declare-fun m!987171 () Bool)

(assert (=> bs!31450 m!987171))

(declare-fun m!987173 () Bool)

(assert (=> bs!31450 m!987173))

(assert (=> b!1068267 d!129119))

(declare-fun d!129121 () Bool)

(assert (=> d!129121 (= (-!645 lt!471897 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471897)))

(declare-fun lt!472038 () Unit!35080)

(declare-fun choose!1742 (ListLongMap!14385 (_ BitVec 64)) Unit!35080)

(assert (=> d!129121 (= lt!472038 (choose!1742 lt!471897 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129121 (not (contains!6310 lt!471897 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129121 (= (removeNotPresentStillSame!54 lt!471897 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472038)))

(declare-fun bs!31451 () Bool)

(assert (= bs!31451 d!129121))

(assert (=> bs!31451 m!987007))

(declare-fun m!987175 () Bool)

(assert (=> bs!31451 m!987175))

(assert (=> bs!31451 m!987013))

(assert (=> b!1068267 d!129121))

(declare-fun mapIsEmpty!40117 () Bool)

(declare-fun mapRes!40117 () Bool)

(assert (=> mapIsEmpty!40117 mapRes!40117))

(declare-fun b!1068455 () Bool)

(declare-fun e!609633 () Bool)

(assert (=> b!1068455 (= e!609633 tp_is_empty!25611)))

(declare-fun b!1068456 () Bool)

(declare-fun e!609634 () Bool)

(assert (=> b!1068456 (= e!609634 tp_is_empty!25611)))

(declare-fun condMapEmpty!40117 () Bool)

(declare-fun mapDefault!40117 () ValueCell!12102)

(assert (=> mapNonEmpty!40111 (= condMapEmpty!40117 (= mapRest!40111 ((as const (Array (_ BitVec 32) ValueCell!12102)) mapDefault!40117)))))

(assert (=> mapNonEmpty!40111 (= tp!76851 (and e!609634 mapRes!40117))))

(declare-fun mapNonEmpty!40117 () Bool)

(declare-fun tp!76860 () Bool)

(assert (=> mapNonEmpty!40117 (= mapRes!40117 (and tp!76860 e!609633))))

(declare-fun mapRest!40117 () (Array (_ BitVec 32) ValueCell!12102))

(declare-fun mapValue!40117 () ValueCell!12102)

(declare-fun mapKey!40117 () (_ BitVec 32))

(assert (=> mapNonEmpty!40117 (= mapRest!40111 (store mapRest!40117 mapKey!40117 mapValue!40117))))

(assert (= (and mapNonEmpty!40111 condMapEmpty!40117) mapIsEmpty!40117))

(assert (= (and mapNonEmpty!40111 (not condMapEmpty!40117)) mapNonEmpty!40117))

(assert (= (and mapNonEmpty!40117 ((_ is ValueCellFull!12102) mapValue!40117)) b!1068455))

(assert (= (and mapNonEmpty!40111 ((_ is ValueCellFull!12102) mapDefault!40117)) b!1068456))

(declare-fun m!987177 () Bool)

(assert (=> mapNonEmpty!40117 m!987177))

(declare-fun b_lambda!16641 () Bool)

(assert (= b_lambda!16631 (or (and start!94510 b_free!21801) b_lambda!16641)))

(declare-fun b_lambda!16643 () Bool)

(assert (= b_lambda!16633 (or (and start!94510 b_free!21801) b_lambda!16643)))

(declare-fun b_lambda!16645 () Bool)

(assert (= b_lambda!16635 (or (and start!94510 b_free!21801) b_lambda!16645)))

(declare-fun b_lambda!16647 () Bool)

(assert (= b_lambda!16639 (or (and start!94510 b_free!21801) b_lambda!16647)))

(declare-fun b_lambda!16649 () Bool)

(assert (= b_lambda!16637 (or (and start!94510 b_free!21801) b_lambda!16649)))

(check-sat (not bm!45120) (not b!1068407) (not b!1068415) (not b!1068434) (not mapNonEmpty!40117) (not bm!45124) (not b_lambda!16641) b_and!34623 (not b!1068401) (not b_lambda!16649) (not b!1068404) (not b!1068402) (not b!1068418) (not b!1068419) (not bm!45115) (not b!1068370) (not b!1068354) (not b!1068408) (not b!1068357) (not b_lambda!16643) (not b!1068416) (not b!1068369) (not bm!45113) (not b!1068413) (not b!1068414) (not bm!45112) (not b!1068420) (not b!1068368) (not d!129119) (not b_lambda!16645) (not bm!45111) (not bm!45127) (not b!1068352) (not d!129099) (not b!1068445) (not b!1068353) (not d!129103) (not b_lambda!16647) (not b_next!21801) (not b!1068411) (not bm!45121) (not b!1068399) (not d!129107) (not b!1068432) (not d!129101) (not b!1068435) (not b!1068447) (not b!1068403) (not d!129121) (not b!1068306) (not b!1068308) (not b!1068406) (not d!129105) (not b!1068366) tp_is_empty!25611)
(check-sat b_and!34623 (not b_next!21801))
