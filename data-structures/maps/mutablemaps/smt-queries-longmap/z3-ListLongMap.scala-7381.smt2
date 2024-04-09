; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94064 () Bool)

(assert start!94064)

(declare-fun b_free!21465 () Bool)

(declare-fun b_next!21465 () Bool)

(assert (=> start!94064 (= b_free!21465 (not b_next!21465))))

(declare-fun tp!75825 () Bool)

(declare-fun b_and!34215 () Bool)

(assert (=> start!94064 (= tp!75825 b_and!34215)))

(declare-fun res!710161 () Bool)

(declare-fun e!606017 () Bool)

(assert (=> start!94064 (=> (not res!710161) (not e!606017))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94064 (= res!710161 (validMask!0 mask!1515))))

(assert (=> start!94064 e!606017))

(assert (=> start!94064 true))

(declare-fun tp_is_empty!25275 () Bool)

(assert (=> start!94064 tp_is_empty!25275))

(declare-datatypes ((V!38835 0))(
  ( (V!38836 (val!12688 Int)) )
))
(declare-datatypes ((ValueCell!11934 0))(
  ( (ValueCellFull!11934 (v!15300 V!38835)) (EmptyCell!11934) )
))
(declare-datatypes ((array!67522 0))(
  ( (array!67523 (arr!32463 (Array (_ BitVec 32) ValueCell!11934)) (size!33000 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67522)

(declare-fun e!606018 () Bool)

(declare-fun array_inv!24982 (array!67522) Bool)

(assert (=> start!94064 (and (array_inv!24982 _values!955) e!606018)))

(assert (=> start!94064 tp!75825))

(declare-datatypes ((array!67524 0))(
  ( (array!67525 (arr!32464 (Array (_ BitVec 32) (_ BitVec 64))) (size!33001 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67524)

(declare-fun array_inv!24983 (array!67524) Bool)

(assert (=> start!94064 (array_inv!24983 _keys!1163)))

(declare-fun b!1063461 () Bool)

(declare-fun e!606015 () Bool)

(assert (=> b!1063461 (= e!606017 (not e!606015))))

(declare-fun res!710159 () Bool)

(assert (=> b!1063461 (=> res!710159 e!606015)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063461 (= res!710159 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16154 0))(
  ( (tuple2!16155 (_1!8087 (_ BitVec 64)) (_2!8087 V!38835)) )
))
(declare-datatypes ((List!22759 0))(
  ( (Nil!22756) (Cons!22755 (h!23964 tuple2!16154) (t!32079 List!22759)) )
))
(declare-datatypes ((ListLongMap!14135 0))(
  ( (ListLongMap!14136 (toList!7083 List!22759)) )
))
(declare-fun lt!468709 () ListLongMap!14135)

(declare-fun lt!468711 () ListLongMap!14135)

(assert (=> b!1063461 (= lt!468709 lt!468711)))

(declare-fun zeroValueBefore!47 () V!38835)

(declare-datatypes ((Unit!34831 0))(
  ( (Unit!34832) )
))
(declare-fun lt!468708 () Unit!34831)

(declare-fun minValue!907 () V!38835)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38835)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!677 (array!67524 array!67522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38835 V!38835 V!38835 V!38835 (_ BitVec 32) Int) Unit!34831)

(assert (=> b!1063461 (= lt!468708 (lemmaNoChangeToArrayThenSameMapNoExtras!677 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3638 (array!67524 array!67522 (_ BitVec 32) (_ BitVec 32) V!38835 V!38835 (_ BitVec 32) Int) ListLongMap!14135)

(assert (=> b!1063461 (= lt!468711 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063461 (= lt!468709 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063462 () Bool)

(declare-fun e!606016 () Bool)

(assert (=> b!1063462 (= e!606015 e!606016)))

(declare-fun res!710157 () Bool)

(assert (=> b!1063462 (=> res!710157 e!606016)))

(declare-fun lt!468710 () ListLongMap!14135)

(declare-fun contains!6277 (ListLongMap!14135 (_ BitVec 64)) Bool)

(assert (=> b!1063462 (= res!710157 (contains!6277 lt!468710 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4026 (array!67524 array!67522 (_ BitVec 32) (_ BitVec 32) V!38835 V!38835 (_ BitVec 32) Int) ListLongMap!14135)

(assert (=> b!1063462 (= lt!468710 (getCurrentListMap!4026 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063463 () Bool)

(declare-fun e!606019 () Bool)

(assert (=> b!1063463 (= e!606019 tp_is_empty!25275)))

(declare-fun b!1063464 () Bool)

(declare-fun res!710158 () Bool)

(assert (=> b!1063464 (=> (not res!710158) (not e!606017))))

(assert (=> b!1063464 (= res!710158 (and (= (size!33000 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33001 _keys!1163) (size!33000 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39589 () Bool)

(declare-fun mapRes!39589 () Bool)

(declare-fun tp!75824 () Bool)

(assert (=> mapNonEmpty!39589 (= mapRes!39589 (and tp!75824 e!606019))))

(declare-fun mapRest!39589 () (Array (_ BitVec 32) ValueCell!11934))

(declare-fun mapValue!39589 () ValueCell!11934)

(declare-fun mapKey!39589 () (_ BitVec 32))

(assert (=> mapNonEmpty!39589 (= (arr!32463 _values!955) (store mapRest!39589 mapKey!39589 mapValue!39589))))

(declare-fun mapIsEmpty!39589 () Bool)

(assert (=> mapIsEmpty!39589 mapRes!39589))

(declare-fun b!1063465 () Bool)

(declare-fun res!710162 () Bool)

(assert (=> b!1063465 (=> (not res!710162) (not e!606017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67524 (_ BitVec 32)) Bool)

(assert (=> b!1063465 (= res!710162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063466 () Bool)

(declare-fun res!710160 () Bool)

(assert (=> b!1063466 (=> (not res!710160) (not e!606017))))

(declare-datatypes ((List!22760 0))(
  ( (Nil!22757) (Cons!22756 (h!23965 (_ BitVec 64)) (t!32080 List!22760)) )
))
(declare-fun arrayNoDuplicates!0 (array!67524 (_ BitVec 32) List!22760) Bool)

(assert (=> b!1063466 (= res!710160 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22757))))

(declare-fun b!1063467 () Bool)

(declare-fun e!606014 () Bool)

(assert (=> b!1063467 (= e!606018 (and e!606014 mapRes!39589))))

(declare-fun condMapEmpty!39589 () Bool)

(declare-fun mapDefault!39589 () ValueCell!11934)

(assert (=> b!1063467 (= condMapEmpty!39589 (= (arr!32463 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11934)) mapDefault!39589)))))

(declare-fun b!1063468 () Bool)

(assert (=> b!1063468 (= e!606016 (bvsle #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(declare-fun -!590 (ListLongMap!14135 (_ BitVec 64)) ListLongMap!14135)

(assert (=> b!1063468 (= (-!590 lt!468710 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468710)))

(declare-fun lt!468712 () Unit!34831)

(declare-fun removeNotPresentStillSame!36 (ListLongMap!14135 (_ BitVec 64)) Unit!34831)

(assert (=> b!1063468 (= lt!468712 (removeNotPresentStillSame!36 lt!468710 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063469 () Bool)

(assert (=> b!1063469 (= e!606014 tp_is_empty!25275)))

(assert (= (and start!94064 res!710161) b!1063464))

(assert (= (and b!1063464 res!710158) b!1063465))

(assert (= (and b!1063465 res!710162) b!1063466))

(assert (= (and b!1063466 res!710160) b!1063461))

(assert (= (and b!1063461 (not res!710159)) b!1063462))

(assert (= (and b!1063462 (not res!710157)) b!1063468))

(assert (= (and b!1063467 condMapEmpty!39589) mapIsEmpty!39589))

(assert (= (and b!1063467 (not condMapEmpty!39589)) mapNonEmpty!39589))

(get-info :version)

(assert (= (and mapNonEmpty!39589 ((_ is ValueCellFull!11934) mapValue!39589)) b!1063463))

(assert (= (and b!1063467 ((_ is ValueCellFull!11934) mapDefault!39589)) b!1063469))

(assert (= start!94064 b!1063467))

(declare-fun m!982285 () Bool)

(assert (=> start!94064 m!982285))

(declare-fun m!982287 () Bool)

(assert (=> start!94064 m!982287))

(declare-fun m!982289 () Bool)

(assert (=> start!94064 m!982289))

(declare-fun m!982291 () Bool)

(assert (=> mapNonEmpty!39589 m!982291))

(declare-fun m!982293 () Bool)

(assert (=> b!1063468 m!982293))

(declare-fun m!982295 () Bool)

(assert (=> b!1063468 m!982295))

(declare-fun m!982297 () Bool)

(assert (=> b!1063466 m!982297))

(declare-fun m!982299 () Bool)

(assert (=> b!1063462 m!982299))

(declare-fun m!982301 () Bool)

(assert (=> b!1063462 m!982301))

(declare-fun m!982303 () Bool)

(assert (=> b!1063461 m!982303))

(declare-fun m!982305 () Bool)

(assert (=> b!1063461 m!982305))

(declare-fun m!982307 () Bool)

(assert (=> b!1063461 m!982307))

(declare-fun m!982309 () Bool)

(assert (=> b!1063465 m!982309))

(check-sat (not b!1063462) tp_is_empty!25275 (not start!94064) b_and!34215 (not b!1063468) (not b!1063461) (not b!1063466) (not mapNonEmpty!39589) (not b!1063465) (not b_next!21465))
(check-sat b_and!34215 (not b_next!21465))
(get-model)

(declare-fun d!128857 () Bool)

(declare-fun e!606045 () Bool)

(assert (=> d!128857 e!606045))

(declare-fun res!710183 () Bool)

(assert (=> d!128857 (=> res!710183 e!606045)))

(declare-fun lt!468738 () Bool)

(assert (=> d!128857 (= res!710183 (not lt!468738))))

(declare-fun lt!468736 () Bool)

(assert (=> d!128857 (= lt!468738 lt!468736)))

(declare-fun lt!468739 () Unit!34831)

(declare-fun e!606046 () Unit!34831)

(assert (=> d!128857 (= lt!468739 e!606046)))

(declare-fun c!107233 () Bool)

(assert (=> d!128857 (= c!107233 lt!468736)))

(declare-fun containsKey!574 (List!22759 (_ BitVec 64)) Bool)

(assert (=> d!128857 (= lt!468736 (containsKey!574 (toList!7083 lt!468710) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!128857 (= (contains!6277 lt!468710 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468738)))

(declare-fun b!1063503 () Bool)

(declare-fun lt!468737 () Unit!34831)

(assert (=> b!1063503 (= e!606046 lt!468737)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!406 (List!22759 (_ BitVec 64)) Unit!34831)

(assert (=> b!1063503 (= lt!468737 (lemmaContainsKeyImpliesGetValueByKeyDefined!406 (toList!7083 lt!468710) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!652 0))(
  ( (Some!651 (v!15302 V!38835)) (None!650) )
))
(declare-fun isDefined!446 (Option!652) Bool)

(declare-fun getValueByKey!601 (List!22759 (_ BitVec 64)) Option!652)

(assert (=> b!1063503 (isDefined!446 (getValueByKey!601 (toList!7083 lt!468710) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063504 () Bool)

(declare-fun Unit!34835 () Unit!34831)

(assert (=> b!1063504 (= e!606046 Unit!34835)))

(declare-fun b!1063505 () Bool)

(assert (=> b!1063505 (= e!606045 (isDefined!446 (getValueByKey!601 (toList!7083 lt!468710) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!128857 c!107233) b!1063503))

(assert (= (and d!128857 (not c!107233)) b!1063504))

(assert (= (and d!128857 (not res!710183)) b!1063505))

(declare-fun m!982337 () Bool)

(assert (=> d!128857 m!982337))

(declare-fun m!982339 () Bool)

(assert (=> b!1063503 m!982339))

(declare-fun m!982341 () Bool)

(assert (=> b!1063503 m!982341))

(assert (=> b!1063503 m!982341))

(declare-fun m!982343 () Bool)

(assert (=> b!1063503 m!982343))

(assert (=> b!1063505 m!982341))

(assert (=> b!1063505 m!982341))

(assert (=> b!1063505 m!982343))

(assert (=> b!1063462 d!128857))

(declare-fun b!1063548 () Bool)

(declare-fun e!606085 () Bool)

(declare-fun lt!468801 () ListLongMap!14135)

(declare-fun apply!955 (ListLongMap!14135 (_ BitVec 64)) V!38835)

(assert (=> b!1063548 (= e!606085 (= (apply!955 lt!468801 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1063549 () Bool)

(declare-fun c!107246 () Bool)

(assert (=> b!1063549 (= c!107246 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!606082 () ListLongMap!14135)

(declare-fun e!606083 () ListLongMap!14135)

(assert (=> b!1063549 (= e!606082 e!606083)))

(declare-fun b!1063550 () Bool)

(declare-fun e!606073 () ListLongMap!14135)

(declare-fun call!44961 () ListLongMap!14135)

(declare-fun +!3078 (ListLongMap!14135 tuple2!16154) ListLongMap!14135)

(assert (=> b!1063550 (= e!606073 (+!3078 call!44961 (tuple2!16155 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1063551 () Bool)

(declare-fun e!606079 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1063551 (= e!606079 (validKeyInArray!0 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!44953 () Bool)

(declare-fun call!44959 () Bool)

(assert (=> bm!44953 (= call!44959 (contains!6277 lt!468801 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063552 () Bool)

(assert (=> b!1063552 (= e!606073 e!606082)))

(declare-fun c!107249 () Bool)

(assert (=> b!1063552 (= c!107249 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1063553 () Bool)

(declare-fun call!44962 () ListLongMap!14135)

(assert (=> b!1063553 (= e!606083 call!44962)))

(declare-fun b!1063554 () Bool)

(declare-fun e!606081 () Bool)

(assert (=> b!1063554 (= e!606081 (= (apply!955 lt!468801 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun call!44956 () ListLongMap!14135)

(declare-fun call!44960 () ListLongMap!14135)

(declare-fun bm!44954 () Bool)

(declare-fun c!107251 () Bool)

(declare-fun call!44957 () ListLongMap!14135)

(assert (=> bm!44954 (= call!44961 (+!3078 (ite c!107251 call!44960 (ite c!107249 call!44956 call!44957)) (ite (or c!107251 c!107249) (tuple2!16155 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16155 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1063555 () Bool)

(declare-fun e!606075 () Bool)

(assert (=> b!1063555 (= e!606075 (validKeyInArray!0 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1063556 () Bool)

(declare-fun e!606077 () Bool)

(assert (=> b!1063556 (= e!606077 (not call!44959))))

(declare-fun b!1063557 () Bool)

(declare-fun res!710203 () Bool)

(declare-fun e!606080 () Bool)

(assert (=> b!1063557 (=> (not res!710203) (not e!606080))))

(declare-fun e!606076 () Bool)

(assert (=> b!1063557 (= res!710203 e!606076)))

(declare-fun c!107248 () Bool)

(assert (=> b!1063557 (= c!107248 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!128859 () Bool)

(assert (=> d!128859 e!606080))

(declare-fun res!710210 () Bool)

(assert (=> d!128859 (=> (not res!710210) (not e!606080))))

(assert (=> d!128859 (= res!710210 (or (bvsge #b00000000000000000000000000000000 (size!33001 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))))

(declare-fun lt!468803 () ListLongMap!14135)

(assert (=> d!128859 (= lt!468801 lt!468803)))

(declare-fun lt!468798 () Unit!34831)

(declare-fun e!606074 () Unit!34831)

(assert (=> d!128859 (= lt!468798 e!606074)))

(declare-fun c!107250 () Bool)

(assert (=> d!128859 (= c!107250 e!606075)))

(declare-fun res!710207 () Bool)

(assert (=> d!128859 (=> (not res!710207) (not e!606075))))

(assert (=> d!128859 (= res!710207 (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(assert (=> d!128859 (= lt!468803 e!606073)))

(assert (=> d!128859 (= c!107251 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!128859 (validMask!0 mask!1515)))

(assert (=> d!128859 (= (getCurrentListMap!4026 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!468801)))

(declare-fun bm!44955 () Bool)

(declare-fun call!44958 () Bool)

(assert (=> bm!44955 (= call!44958 (contains!6277 lt!468801 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!44956 () Bool)

(assert (=> bm!44956 (= call!44957 call!44956)))

(declare-fun b!1063558 () Bool)

(assert (=> b!1063558 (= e!606080 e!606077)))

(declare-fun c!107247 () Bool)

(assert (=> b!1063558 (= c!107247 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1063559 () Bool)

(assert (=> b!1063559 (= e!606077 e!606085)))

(declare-fun res!710206 () Bool)

(assert (=> b!1063559 (= res!710206 call!44959)))

(assert (=> b!1063559 (=> (not res!710206) (not e!606085))))

(declare-fun bm!44957 () Bool)

(assert (=> bm!44957 (= call!44956 call!44960)))

(declare-fun b!1063560 () Bool)

(declare-fun lt!468789 () Unit!34831)

(assert (=> b!1063560 (= e!606074 lt!468789)))

(declare-fun lt!468784 () ListLongMap!14135)

(assert (=> b!1063560 (= lt!468784 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!468795 () (_ BitVec 64))

(assert (=> b!1063560 (= lt!468795 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!468790 () (_ BitVec 64))

(assert (=> b!1063560 (= lt!468790 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!468804 () Unit!34831)

(declare-fun addStillContains!641 (ListLongMap!14135 (_ BitVec 64) V!38835 (_ BitVec 64)) Unit!34831)

(assert (=> b!1063560 (= lt!468804 (addStillContains!641 lt!468784 lt!468795 zeroValueBefore!47 lt!468790))))

(assert (=> b!1063560 (contains!6277 (+!3078 lt!468784 (tuple2!16155 lt!468795 zeroValueBefore!47)) lt!468790)))

(declare-fun lt!468805 () Unit!34831)

(assert (=> b!1063560 (= lt!468805 lt!468804)))

(declare-fun lt!468802 () ListLongMap!14135)

(assert (=> b!1063560 (= lt!468802 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!468794 () (_ BitVec 64))

(assert (=> b!1063560 (= lt!468794 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!468793 () (_ BitVec 64))

(assert (=> b!1063560 (= lt!468793 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!468797 () Unit!34831)

(declare-fun addApplyDifferent!493 (ListLongMap!14135 (_ BitVec 64) V!38835 (_ BitVec 64)) Unit!34831)

(assert (=> b!1063560 (= lt!468797 (addApplyDifferent!493 lt!468802 lt!468794 minValue!907 lt!468793))))

(assert (=> b!1063560 (= (apply!955 (+!3078 lt!468802 (tuple2!16155 lt!468794 minValue!907)) lt!468793) (apply!955 lt!468802 lt!468793))))

(declare-fun lt!468788 () Unit!34831)

(assert (=> b!1063560 (= lt!468788 lt!468797)))

(declare-fun lt!468786 () ListLongMap!14135)

(assert (=> b!1063560 (= lt!468786 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!468792 () (_ BitVec 64))

(assert (=> b!1063560 (= lt!468792 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!468787 () (_ BitVec 64))

(assert (=> b!1063560 (= lt!468787 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!468799 () Unit!34831)

(assert (=> b!1063560 (= lt!468799 (addApplyDifferent!493 lt!468786 lt!468792 zeroValueBefore!47 lt!468787))))

(assert (=> b!1063560 (= (apply!955 (+!3078 lt!468786 (tuple2!16155 lt!468792 zeroValueBefore!47)) lt!468787) (apply!955 lt!468786 lt!468787))))

(declare-fun lt!468791 () Unit!34831)

(assert (=> b!1063560 (= lt!468791 lt!468799)))

(declare-fun lt!468785 () ListLongMap!14135)

(assert (=> b!1063560 (= lt!468785 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!468796 () (_ BitVec 64))

(assert (=> b!1063560 (= lt!468796 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!468800 () (_ BitVec 64))

(assert (=> b!1063560 (= lt!468800 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1063560 (= lt!468789 (addApplyDifferent!493 lt!468785 lt!468796 minValue!907 lt!468800))))

(assert (=> b!1063560 (= (apply!955 (+!3078 lt!468785 (tuple2!16155 lt!468796 minValue!907)) lt!468800) (apply!955 lt!468785 lt!468800))))

(declare-fun b!1063561 () Bool)

(assert (=> b!1063561 (= e!606076 (not call!44958))))

(declare-fun b!1063562 () Bool)

(declare-fun res!710209 () Bool)

(assert (=> b!1063562 (=> (not res!710209) (not e!606080))))

(declare-fun e!606078 () Bool)

(assert (=> b!1063562 (= res!710209 e!606078)))

(declare-fun res!710205 () Bool)

(assert (=> b!1063562 (=> res!710205 e!606078)))

(assert (=> b!1063562 (= res!710205 (not e!606079))))

(declare-fun res!710208 () Bool)

(assert (=> b!1063562 (=> (not res!710208) (not e!606079))))

(assert (=> b!1063562 (= res!710208 (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(declare-fun b!1063563 () Bool)

(declare-fun e!606084 () Bool)

(declare-fun get!16981 (ValueCell!11934 V!38835) V!38835)

(declare-fun dynLambda!2031 (Int (_ BitVec 64)) V!38835)

(assert (=> b!1063563 (= e!606084 (= (apply!955 lt!468801 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)) (get!16981 (select (arr!32463 _values!955) #b00000000000000000000000000000000) (dynLambda!2031 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1063563 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33000 _values!955)))))

(assert (=> b!1063563 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(declare-fun b!1063564 () Bool)

(assert (=> b!1063564 (= e!606082 call!44962)))

(declare-fun b!1063565 () Bool)

(assert (=> b!1063565 (= e!606076 e!606081)))

(declare-fun res!710204 () Bool)

(assert (=> b!1063565 (= res!710204 call!44958)))

(assert (=> b!1063565 (=> (not res!710204) (not e!606081))))

(declare-fun bm!44958 () Bool)

(assert (=> bm!44958 (= call!44962 call!44961)))

(declare-fun b!1063566 () Bool)

(assert (=> b!1063566 (= e!606078 e!606084)))

(declare-fun res!710202 () Bool)

(assert (=> b!1063566 (=> (not res!710202) (not e!606084))))

(assert (=> b!1063566 (= res!710202 (contains!6277 lt!468801 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1063566 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(declare-fun bm!44959 () Bool)

(assert (=> bm!44959 (= call!44960 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063567 () Bool)

(assert (=> b!1063567 (= e!606083 call!44957)))

(declare-fun b!1063568 () Bool)

(declare-fun Unit!34836 () Unit!34831)

(assert (=> b!1063568 (= e!606074 Unit!34836)))

(assert (= (and d!128859 c!107251) b!1063550))

(assert (= (and d!128859 (not c!107251)) b!1063552))

(assert (= (and b!1063552 c!107249) b!1063564))

(assert (= (and b!1063552 (not c!107249)) b!1063549))

(assert (= (and b!1063549 c!107246) b!1063553))

(assert (= (and b!1063549 (not c!107246)) b!1063567))

(assert (= (or b!1063553 b!1063567) bm!44956))

(assert (= (or b!1063564 bm!44956) bm!44957))

(assert (= (or b!1063564 b!1063553) bm!44958))

(assert (= (or b!1063550 bm!44957) bm!44959))

(assert (= (or b!1063550 bm!44958) bm!44954))

(assert (= (and d!128859 res!710207) b!1063555))

(assert (= (and d!128859 c!107250) b!1063560))

(assert (= (and d!128859 (not c!107250)) b!1063568))

(assert (= (and d!128859 res!710210) b!1063562))

(assert (= (and b!1063562 res!710208) b!1063551))

(assert (= (and b!1063562 (not res!710205)) b!1063566))

(assert (= (and b!1063566 res!710202) b!1063563))

(assert (= (and b!1063562 res!710209) b!1063557))

(assert (= (and b!1063557 c!107248) b!1063565))

(assert (= (and b!1063557 (not c!107248)) b!1063561))

(assert (= (and b!1063565 res!710204) b!1063554))

(assert (= (or b!1063565 b!1063561) bm!44955))

(assert (= (and b!1063557 res!710203) b!1063558))

(assert (= (and b!1063558 c!107247) b!1063559))

(assert (= (and b!1063558 (not c!107247)) b!1063556))

(assert (= (and b!1063559 res!710206) b!1063548))

(assert (= (or b!1063559 b!1063556) bm!44953))

(declare-fun b_lambda!16511 () Bool)

(assert (=> (not b_lambda!16511) (not b!1063563)))

(declare-fun t!32083 () Bool)

(declare-fun tb!7143 () Bool)

(assert (=> (and start!94064 (= defaultEntry!963 defaultEntry!963) t!32083) tb!7143))

(declare-fun result!14721 () Bool)

(assert (=> tb!7143 (= result!14721 tp_is_empty!25275)))

(assert (=> b!1063563 t!32083))

(declare-fun b_and!34219 () Bool)

(assert (= b_and!34215 (and (=> t!32083 result!14721) b_and!34219)))

(declare-fun m!982345 () Bool)

(assert (=> bm!44953 m!982345))

(declare-fun m!982347 () Bool)

(assert (=> b!1063548 m!982347))

(declare-fun m!982349 () Bool)

(assert (=> b!1063551 m!982349))

(assert (=> b!1063551 m!982349))

(declare-fun m!982351 () Bool)

(assert (=> b!1063551 m!982351))

(assert (=> b!1063566 m!982349))

(assert (=> b!1063566 m!982349))

(declare-fun m!982353 () Bool)

(assert (=> b!1063566 m!982353))

(declare-fun m!982355 () Bool)

(assert (=> b!1063563 m!982355))

(declare-fun m!982357 () Bool)

(assert (=> b!1063563 m!982357))

(assert (=> b!1063563 m!982357))

(assert (=> b!1063563 m!982355))

(declare-fun m!982359 () Bool)

(assert (=> b!1063563 m!982359))

(assert (=> b!1063563 m!982349))

(declare-fun m!982361 () Bool)

(assert (=> b!1063563 m!982361))

(assert (=> b!1063563 m!982349))

(assert (=> d!128859 m!982285))

(assert (=> bm!44959 m!982307))

(declare-fun m!982363 () Bool)

(assert (=> b!1063554 m!982363))

(declare-fun m!982365 () Bool)

(assert (=> b!1063560 m!982365))

(declare-fun m!982367 () Bool)

(assert (=> b!1063560 m!982367))

(assert (=> b!1063560 m!982365))

(declare-fun m!982369 () Bool)

(assert (=> b!1063560 m!982369))

(declare-fun m!982371 () Bool)

(assert (=> b!1063560 m!982371))

(declare-fun m!982373 () Bool)

(assert (=> b!1063560 m!982373))

(declare-fun m!982375 () Bool)

(assert (=> b!1063560 m!982375))

(declare-fun m!982377 () Bool)

(assert (=> b!1063560 m!982377))

(declare-fun m!982379 () Bool)

(assert (=> b!1063560 m!982379))

(declare-fun m!982381 () Bool)

(assert (=> b!1063560 m!982381))

(declare-fun m!982383 () Bool)

(assert (=> b!1063560 m!982383))

(assert (=> b!1063560 m!982349))

(declare-fun m!982385 () Bool)

(assert (=> b!1063560 m!982385))

(assert (=> b!1063560 m!982307))

(declare-fun m!982387 () Bool)

(assert (=> b!1063560 m!982387))

(assert (=> b!1063560 m!982373))

(declare-fun m!982389 () Bool)

(assert (=> b!1063560 m!982389))

(assert (=> b!1063560 m!982383))

(declare-fun m!982391 () Bool)

(assert (=> b!1063560 m!982391))

(assert (=> b!1063560 m!982375))

(declare-fun m!982393 () Bool)

(assert (=> b!1063560 m!982393))

(declare-fun m!982395 () Bool)

(assert (=> bm!44954 m!982395))

(assert (=> b!1063555 m!982349))

(assert (=> b!1063555 m!982349))

(assert (=> b!1063555 m!982351))

(declare-fun m!982397 () Bool)

(assert (=> bm!44955 m!982397))

(declare-fun m!982399 () Bool)

(assert (=> b!1063550 m!982399))

(assert (=> b!1063462 d!128859))

(declare-fun bm!44962 () Bool)

(declare-fun call!44965 () Bool)

(assert (=> bm!44962 (= call!44965 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1063580 () Bool)

(declare-fun e!606093 () Bool)

(declare-fun e!606092 () Bool)

(assert (=> b!1063580 (= e!606093 e!606092)))

(declare-fun c!107254 () Bool)

(assert (=> b!1063580 (= c!107254 (validKeyInArray!0 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1063581 () Bool)

(declare-fun e!606094 () Bool)

(assert (=> b!1063581 (= e!606092 e!606094)))

(declare-fun lt!468812 () (_ BitVec 64))

(assert (=> b!1063581 (= lt!468812 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!468814 () Unit!34831)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!67524 (_ BitVec 64) (_ BitVec 32)) Unit!34831)

(assert (=> b!1063581 (= lt!468814 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!468812 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!67524 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1063581 (arrayContainsKey!0 _keys!1163 lt!468812 #b00000000000000000000000000000000)))

(declare-fun lt!468813 () Unit!34831)

(assert (=> b!1063581 (= lt!468813 lt!468814)))

(declare-fun res!710215 () Bool)

(declare-datatypes ((SeekEntryResult!9870 0))(
  ( (MissingZero!9870 (index!41850 (_ BitVec 32))) (Found!9870 (index!41851 (_ BitVec 32))) (Intermediate!9870 (undefined!10682 Bool) (index!41852 (_ BitVec 32)) (x!95154 (_ BitVec 32))) (Undefined!9870) (MissingVacant!9870 (index!41853 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!67524 (_ BitVec 32)) SeekEntryResult!9870)

(assert (=> b!1063581 (= res!710215 (= (seekEntryOrOpen!0 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9870 #b00000000000000000000000000000000)))))

(assert (=> b!1063581 (=> (not res!710215) (not e!606094))))

(declare-fun b!1063582 () Bool)

(assert (=> b!1063582 (= e!606092 call!44965)))

(declare-fun b!1063579 () Bool)

(assert (=> b!1063579 (= e!606094 call!44965)))

(declare-fun d!128861 () Bool)

(declare-fun res!710216 () Bool)

(assert (=> d!128861 (=> res!710216 e!606093)))

(assert (=> d!128861 (= res!710216 (bvsge #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(assert (=> d!128861 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!606093)))

(assert (= (and d!128861 (not res!710216)) b!1063580))

(assert (= (and b!1063580 c!107254) b!1063581))

(assert (= (and b!1063580 (not c!107254)) b!1063582))

(assert (= (and b!1063581 res!710215) b!1063579))

(assert (= (or b!1063579 b!1063582) bm!44962))

(declare-fun m!982401 () Bool)

(assert (=> bm!44962 m!982401))

(assert (=> b!1063580 m!982349))

(assert (=> b!1063580 m!982349))

(assert (=> b!1063580 m!982351))

(assert (=> b!1063581 m!982349))

(declare-fun m!982403 () Bool)

(assert (=> b!1063581 m!982403))

(declare-fun m!982405 () Bool)

(assert (=> b!1063581 m!982405))

(assert (=> b!1063581 m!982349))

(declare-fun m!982407 () Bool)

(assert (=> b!1063581 m!982407))

(assert (=> b!1063465 d!128861))

(declare-fun d!128863 () Bool)

(assert (=> d!128863 (= (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!468817 () Unit!34831)

(declare-fun choose!1732 (array!67524 array!67522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38835 V!38835 V!38835 V!38835 (_ BitVec 32) Int) Unit!34831)

(assert (=> d!128863 (= lt!468817 (choose!1732 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!128863 (validMask!0 mask!1515)))

(assert (=> d!128863 (= (lemmaNoChangeToArrayThenSameMapNoExtras!677 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!468817)))

(declare-fun bs!31267 () Bool)

(assert (= bs!31267 d!128863))

(assert (=> bs!31267 m!982307))

(assert (=> bs!31267 m!982305))

(declare-fun m!982409 () Bool)

(assert (=> bs!31267 m!982409))

(assert (=> bs!31267 m!982285))

(assert (=> b!1063461 d!128863))

(declare-fun b!1063607 () Bool)

(declare-fun e!606113 () Bool)

(declare-fun e!606112 () Bool)

(assert (=> b!1063607 (= e!606113 e!606112)))

(assert (=> b!1063607 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(declare-fun res!710225 () Bool)

(declare-fun lt!468837 () ListLongMap!14135)

(assert (=> b!1063607 (= res!710225 (contains!6277 lt!468837 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1063607 (=> (not res!710225) (not e!606112))))

(declare-fun d!128865 () Bool)

(declare-fun e!606109 () Bool)

(assert (=> d!128865 e!606109))

(declare-fun res!710226 () Bool)

(assert (=> d!128865 (=> (not res!710226) (not e!606109))))

(assert (=> d!128865 (= res!710226 (not (contains!6277 lt!468837 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!606115 () ListLongMap!14135)

(assert (=> d!128865 (= lt!468837 e!606115)))

(declare-fun c!107266 () Bool)

(assert (=> d!128865 (= c!107266 (bvsge #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(assert (=> d!128865 (validMask!0 mask!1515)))

(assert (=> d!128865 (= (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!468837)))

(declare-fun b!1063608 () Bool)

(declare-fun e!606110 () Bool)

(assert (=> b!1063608 (= e!606110 (validKeyInArray!0 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1063608 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1063609 () Bool)

(declare-fun e!606114 () Bool)

(declare-fun isEmpty!941 (ListLongMap!14135) Bool)

(assert (=> b!1063609 (= e!606114 (isEmpty!941 lt!468837))))

(declare-fun b!1063610 () Bool)

(assert (=> b!1063610 (= e!606109 e!606113)))

(declare-fun c!107263 () Bool)

(assert (=> b!1063610 (= c!107263 e!606110)))

(declare-fun res!710228 () Bool)

(assert (=> b!1063610 (=> (not res!710228) (not e!606110))))

(assert (=> b!1063610 (= res!710228 (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(declare-fun b!1063611 () Bool)

(declare-fun e!606111 () ListLongMap!14135)

(declare-fun call!44968 () ListLongMap!14135)

(assert (=> b!1063611 (= e!606111 call!44968)))

(declare-fun b!1063612 () Bool)

(assert (=> b!1063612 (= e!606115 (ListLongMap!14136 Nil!22756))))

(declare-fun b!1063613 () Bool)

(assert (=> b!1063613 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(assert (=> b!1063613 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33000 _values!955)))))

(assert (=> b!1063613 (= e!606112 (= (apply!955 lt!468837 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)) (get!16981 (select (arr!32463 _values!955) #b00000000000000000000000000000000) (dynLambda!2031 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!44965 () Bool)

(assert (=> bm!44965 (= call!44968 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1063614 () Bool)

(declare-fun res!710227 () Bool)

(assert (=> b!1063614 (=> (not res!710227) (not e!606109))))

(assert (=> b!1063614 (= res!710227 (not (contains!6277 lt!468837 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1063615 () Bool)

(assert (=> b!1063615 (= e!606114 (= lt!468837 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1063616 () Bool)

(assert (=> b!1063616 (= e!606113 e!606114)))

(declare-fun c!107264 () Bool)

(assert (=> b!1063616 (= c!107264 (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(declare-fun b!1063617 () Bool)

(declare-fun lt!468832 () Unit!34831)

(declare-fun lt!468834 () Unit!34831)

(assert (=> b!1063617 (= lt!468832 lt!468834)))

(declare-fun lt!468835 () (_ BitVec 64))

(declare-fun lt!468838 () ListLongMap!14135)

(declare-fun lt!468836 () V!38835)

(declare-fun lt!468833 () (_ BitVec 64))

(assert (=> b!1063617 (not (contains!6277 (+!3078 lt!468838 (tuple2!16155 lt!468835 lt!468836)) lt!468833))))

(declare-fun addStillNotContains!250 (ListLongMap!14135 (_ BitVec 64) V!38835 (_ BitVec 64)) Unit!34831)

(assert (=> b!1063617 (= lt!468834 (addStillNotContains!250 lt!468838 lt!468835 lt!468836 lt!468833))))

(assert (=> b!1063617 (= lt!468833 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1063617 (= lt!468836 (get!16981 (select (arr!32463 _values!955) #b00000000000000000000000000000000) (dynLambda!2031 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1063617 (= lt!468835 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1063617 (= lt!468838 call!44968)))

(assert (=> b!1063617 (= e!606111 (+!3078 call!44968 (tuple2!16155 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000) (get!16981 (select (arr!32463 _values!955) #b00000000000000000000000000000000) (dynLambda!2031 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1063618 () Bool)

(assert (=> b!1063618 (= e!606115 e!606111)))

(declare-fun c!107265 () Bool)

(assert (=> b!1063618 (= c!107265 (validKeyInArray!0 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!128865 c!107266) b!1063612))

(assert (= (and d!128865 (not c!107266)) b!1063618))

(assert (= (and b!1063618 c!107265) b!1063617))

(assert (= (and b!1063618 (not c!107265)) b!1063611))

(assert (= (or b!1063617 b!1063611) bm!44965))

(assert (= (and d!128865 res!710226) b!1063614))

(assert (= (and b!1063614 res!710227) b!1063610))

(assert (= (and b!1063610 res!710228) b!1063608))

(assert (= (and b!1063610 c!107263) b!1063607))

(assert (= (and b!1063610 (not c!107263)) b!1063616))

(assert (= (and b!1063607 res!710225) b!1063613))

(assert (= (and b!1063616 c!107264) b!1063615))

(assert (= (and b!1063616 (not c!107264)) b!1063609))

(declare-fun b_lambda!16513 () Bool)

(assert (=> (not b_lambda!16513) (not b!1063613)))

(assert (=> b!1063613 t!32083))

(declare-fun b_and!34221 () Bool)

(assert (= b_and!34219 (and (=> t!32083 result!14721) b_and!34221)))

(declare-fun b_lambda!16515 () Bool)

(assert (=> (not b_lambda!16515) (not b!1063617)))

(assert (=> b!1063617 t!32083))

(declare-fun b_and!34223 () Bool)

(assert (= b_and!34221 (and (=> t!32083 result!14721) b_and!34223)))

(assert (=> b!1063613 m!982357))

(assert (=> b!1063613 m!982355))

(assert (=> b!1063613 m!982357))

(assert (=> b!1063613 m!982355))

(assert (=> b!1063613 m!982359))

(assert (=> b!1063613 m!982349))

(declare-fun m!982411 () Bool)

(assert (=> b!1063613 m!982411))

(assert (=> b!1063613 m!982349))

(assert (=> b!1063617 m!982355))

(declare-fun m!982413 () Bool)

(assert (=> b!1063617 m!982413))

(declare-fun m!982415 () Bool)

(assert (=> b!1063617 m!982415))

(declare-fun m!982417 () Bool)

(assert (=> b!1063617 m!982417))

(assert (=> b!1063617 m!982349))

(assert (=> b!1063617 m!982357))

(declare-fun m!982419 () Bool)

(assert (=> b!1063617 m!982419))

(assert (=> b!1063617 m!982357))

(assert (=> b!1063617 m!982355))

(assert (=> b!1063617 m!982359))

(assert (=> b!1063617 m!982415))

(declare-fun m!982421 () Bool)

(assert (=> d!128865 m!982421))

(assert (=> d!128865 m!982285))

(assert (=> b!1063607 m!982349))

(assert (=> b!1063607 m!982349))

(declare-fun m!982423 () Bool)

(assert (=> b!1063607 m!982423))

(declare-fun m!982425 () Bool)

(assert (=> b!1063614 m!982425))

(declare-fun m!982427 () Bool)

(assert (=> b!1063609 m!982427))

(assert (=> b!1063608 m!982349))

(assert (=> b!1063608 m!982349))

(assert (=> b!1063608 m!982351))

(assert (=> b!1063618 m!982349))

(assert (=> b!1063618 m!982349))

(assert (=> b!1063618 m!982351))

(declare-fun m!982429 () Bool)

(assert (=> bm!44965 m!982429))

(assert (=> b!1063615 m!982429))

(assert (=> b!1063461 d!128865))

(declare-fun b!1063619 () Bool)

(declare-fun e!606120 () Bool)

(declare-fun e!606119 () Bool)

(assert (=> b!1063619 (= e!606120 e!606119)))

(assert (=> b!1063619 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(declare-fun res!710229 () Bool)

(declare-fun lt!468844 () ListLongMap!14135)

(assert (=> b!1063619 (= res!710229 (contains!6277 lt!468844 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1063619 (=> (not res!710229) (not e!606119))))

(declare-fun d!128867 () Bool)

(declare-fun e!606116 () Bool)

(assert (=> d!128867 e!606116))

(declare-fun res!710230 () Bool)

(assert (=> d!128867 (=> (not res!710230) (not e!606116))))

(assert (=> d!128867 (= res!710230 (not (contains!6277 lt!468844 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!606122 () ListLongMap!14135)

(assert (=> d!128867 (= lt!468844 e!606122)))

(declare-fun c!107270 () Bool)

(assert (=> d!128867 (= c!107270 (bvsge #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(assert (=> d!128867 (validMask!0 mask!1515)))

(assert (=> d!128867 (= (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!468844)))

(declare-fun b!1063620 () Bool)

(declare-fun e!606117 () Bool)

(assert (=> b!1063620 (= e!606117 (validKeyInArray!0 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1063620 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1063621 () Bool)

(declare-fun e!606121 () Bool)

(assert (=> b!1063621 (= e!606121 (isEmpty!941 lt!468844))))

(declare-fun b!1063622 () Bool)

(assert (=> b!1063622 (= e!606116 e!606120)))

(declare-fun c!107267 () Bool)

(assert (=> b!1063622 (= c!107267 e!606117)))

(declare-fun res!710232 () Bool)

(assert (=> b!1063622 (=> (not res!710232) (not e!606117))))

(assert (=> b!1063622 (= res!710232 (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(declare-fun b!1063623 () Bool)

(declare-fun e!606118 () ListLongMap!14135)

(declare-fun call!44969 () ListLongMap!14135)

(assert (=> b!1063623 (= e!606118 call!44969)))

(declare-fun b!1063624 () Bool)

(assert (=> b!1063624 (= e!606122 (ListLongMap!14136 Nil!22756))))

(declare-fun b!1063625 () Bool)

(assert (=> b!1063625 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(assert (=> b!1063625 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33000 _values!955)))))

(assert (=> b!1063625 (= e!606119 (= (apply!955 lt!468844 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)) (get!16981 (select (arr!32463 _values!955) #b00000000000000000000000000000000) (dynLambda!2031 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!44966 () Bool)

(assert (=> bm!44966 (= call!44969 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1063626 () Bool)

(declare-fun res!710231 () Bool)

(assert (=> b!1063626 (=> (not res!710231) (not e!606116))))

(assert (=> b!1063626 (= res!710231 (not (contains!6277 lt!468844 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1063627 () Bool)

(assert (=> b!1063627 (= e!606121 (= lt!468844 (getCurrentListMapNoExtraKeys!3638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1063628 () Bool)

(assert (=> b!1063628 (= e!606120 e!606121)))

(declare-fun c!107268 () Bool)

(assert (=> b!1063628 (= c!107268 (bvslt #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(declare-fun b!1063629 () Bool)

(declare-fun lt!468839 () Unit!34831)

(declare-fun lt!468841 () Unit!34831)

(assert (=> b!1063629 (= lt!468839 lt!468841)))

(declare-fun lt!468845 () ListLongMap!14135)

(declare-fun lt!468840 () (_ BitVec 64))

(declare-fun lt!468842 () (_ BitVec 64))

(declare-fun lt!468843 () V!38835)

(assert (=> b!1063629 (not (contains!6277 (+!3078 lt!468845 (tuple2!16155 lt!468842 lt!468843)) lt!468840))))

(assert (=> b!1063629 (= lt!468841 (addStillNotContains!250 lt!468845 lt!468842 lt!468843 lt!468840))))

(assert (=> b!1063629 (= lt!468840 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1063629 (= lt!468843 (get!16981 (select (arr!32463 _values!955) #b00000000000000000000000000000000) (dynLambda!2031 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1063629 (= lt!468842 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1063629 (= lt!468845 call!44969)))

(assert (=> b!1063629 (= e!606118 (+!3078 call!44969 (tuple2!16155 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000) (get!16981 (select (arr!32463 _values!955) #b00000000000000000000000000000000) (dynLambda!2031 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1063630 () Bool)

(assert (=> b!1063630 (= e!606122 e!606118)))

(declare-fun c!107269 () Bool)

(assert (=> b!1063630 (= c!107269 (validKeyInArray!0 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!128867 c!107270) b!1063624))

(assert (= (and d!128867 (not c!107270)) b!1063630))

(assert (= (and b!1063630 c!107269) b!1063629))

(assert (= (and b!1063630 (not c!107269)) b!1063623))

(assert (= (or b!1063629 b!1063623) bm!44966))

(assert (= (and d!128867 res!710230) b!1063626))

(assert (= (and b!1063626 res!710231) b!1063622))

(assert (= (and b!1063622 res!710232) b!1063620))

(assert (= (and b!1063622 c!107267) b!1063619))

(assert (= (and b!1063622 (not c!107267)) b!1063628))

(assert (= (and b!1063619 res!710229) b!1063625))

(assert (= (and b!1063628 c!107268) b!1063627))

(assert (= (and b!1063628 (not c!107268)) b!1063621))

(declare-fun b_lambda!16517 () Bool)

(assert (=> (not b_lambda!16517) (not b!1063625)))

(assert (=> b!1063625 t!32083))

(declare-fun b_and!34225 () Bool)

(assert (= b_and!34223 (and (=> t!32083 result!14721) b_and!34225)))

(declare-fun b_lambda!16519 () Bool)

(assert (=> (not b_lambda!16519) (not b!1063629)))

(assert (=> b!1063629 t!32083))

(declare-fun b_and!34227 () Bool)

(assert (= b_and!34225 (and (=> t!32083 result!14721) b_and!34227)))

(assert (=> b!1063625 m!982357))

(assert (=> b!1063625 m!982355))

(assert (=> b!1063625 m!982357))

(assert (=> b!1063625 m!982355))

(assert (=> b!1063625 m!982359))

(assert (=> b!1063625 m!982349))

(declare-fun m!982431 () Bool)

(assert (=> b!1063625 m!982431))

(assert (=> b!1063625 m!982349))

(assert (=> b!1063629 m!982355))

(declare-fun m!982433 () Bool)

(assert (=> b!1063629 m!982433))

(declare-fun m!982435 () Bool)

(assert (=> b!1063629 m!982435))

(declare-fun m!982437 () Bool)

(assert (=> b!1063629 m!982437))

(assert (=> b!1063629 m!982349))

(assert (=> b!1063629 m!982357))

(declare-fun m!982439 () Bool)

(assert (=> b!1063629 m!982439))

(assert (=> b!1063629 m!982357))

(assert (=> b!1063629 m!982355))

(assert (=> b!1063629 m!982359))

(assert (=> b!1063629 m!982435))

(declare-fun m!982441 () Bool)

(assert (=> d!128867 m!982441))

(assert (=> d!128867 m!982285))

(assert (=> b!1063619 m!982349))

(assert (=> b!1063619 m!982349))

(declare-fun m!982443 () Bool)

(assert (=> b!1063619 m!982443))

(declare-fun m!982445 () Bool)

(assert (=> b!1063626 m!982445))

(declare-fun m!982447 () Bool)

(assert (=> b!1063621 m!982447))

(assert (=> b!1063620 m!982349))

(assert (=> b!1063620 m!982349))

(assert (=> b!1063620 m!982351))

(assert (=> b!1063630 m!982349))

(assert (=> b!1063630 m!982349))

(assert (=> b!1063630 m!982351))

(declare-fun m!982449 () Bool)

(assert (=> bm!44966 m!982449))

(assert (=> b!1063627 m!982449))

(assert (=> b!1063461 d!128867))

(declare-fun d!128869 () Bool)

(assert (=> d!128869 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94064 d!128869))

(declare-fun d!128871 () Bool)

(assert (=> d!128871 (= (array_inv!24982 _values!955) (bvsge (size!33000 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94064 d!128871))

(declare-fun d!128873 () Bool)

(assert (=> d!128873 (= (array_inv!24983 _keys!1163) (bvsge (size!33001 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94064 d!128873))

(declare-fun d!128875 () Bool)

(declare-fun lt!468848 () ListLongMap!14135)

(assert (=> d!128875 (not (contains!6277 lt!468848 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!69 (List!22759 (_ BitVec 64)) List!22759)

(assert (=> d!128875 (= lt!468848 (ListLongMap!14136 (removeStrictlySorted!69 (toList!7083 lt!468710) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128875 (= (-!590 lt!468710 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468848)))

(declare-fun bs!31268 () Bool)

(assert (= bs!31268 d!128875))

(declare-fun m!982451 () Bool)

(assert (=> bs!31268 m!982451))

(declare-fun m!982453 () Bool)

(assert (=> bs!31268 m!982453))

(assert (=> b!1063468 d!128875))

(declare-fun d!128877 () Bool)

(assert (=> d!128877 (= (-!590 lt!468710 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468710)))

(declare-fun lt!468851 () Unit!34831)

(declare-fun choose!1733 (ListLongMap!14135 (_ BitVec 64)) Unit!34831)

(assert (=> d!128877 (= lt!468851 (choose!1733 lt!468710 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!128877 (not (contains!6277 lt!468710 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!128877 (= (removeNotPresentStillSame!36 lt!468710 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468851)))

(declare-fun bs!31269 () Bool)

(assert (= bs!31269 d!128877))

(assert (=> bs!31269 m!982293))

(declare-fun m!982455 () Bool)

(assert (=> bs!31269 m!982455))

(assert (=> bs!31269 m!982299))

(assert (=> b!1063468 d!128877))

(declare-fun b!1063641 () Bool)

(declare-fun e!606133 () Bool)

(declare-fun call!44972 () Bool)

(assert (=> b!1063641 (= e!606133 call!44972)))

(declare-fun b!1063642 () Bool)

(declare-fun e!606134 () Bool)

(declare-fun contains!6278 (List!22760 (_ BitVec 64)) Bool)

(assert (=> b!1063642 (= e!606134 (contains!6278 Nil!22757 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!128879 () Bool)

(declare-fun res!710241 () Bool)

(declare-fun e!606132 () Bool)

(assert (=> d!128879 (=> res!710241 e!606132)))

(assert (=> d!128879 (= res!710241 (bvsge #b00000000000000000000000000000000 (size!33001 _keys!1163)))))

(assert (=> d!128879 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22757) e!606132)))

(declare-fun bm!44969 () Bool)

(declare-fun c!107273 () Bool)

(assert (=> bm!44969 (= call!44972 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107273 (Cons!22756 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000) Nil!22757) Nil!22757)))))

(declare-fun b!1063643 () Bool)

(assert (=> b!1063643 (= e!606133 call!44972)))

(declare-fun b!1063644 () Bool)

(declare-fun e!606131 () Bool)

(assert (=> b!1063644 (= e!606131 e!606133)))

(assert (=> b!1063644 (= c!107273 (validKeyInArray!0 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1063645 () Bool)

(assert (=> b!1063645 (= e!606132 e!606131)))

(declare-fun res!710239 () Bool)

(assert (=> b!1063645 (=> (not res!710239) (not e!606131))))

(assert (=> b!1063645 (= res!710239 (not e!606134))))

(declare-fun res!710240 () Bool)

(assert (=> b!1063645 (=> (not res!710240) (not e!606134))))

(assert (=> b!1063645 (= res!710240 (validKeyInArray!0 (select (arr!32464 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!128879 (not res!710241)) b!1063645))

(assert (= (and b!1063645 res!710240) b!1063642))

(assert (= (and b!1063645 res!710239) b!1063644))

(assert (= (and b!1063644 c!107273) b!1063641))

(assert (= (and b!1063644 (not c!107273)) b!1063643))

(assert (= (or b!1063641 b!1063643) bm!44969))

(assert (=> b!1063642 m!982349))

(assert (=> b!1063642 m!982349))

(declare-fun m!982457 () Bool)

(assert (=> b!1063642 m!982457))

(assert (=> bm!44969 m!982349))

(declare-fun m!982459 () Bool)

(assert (=> bm!44969 m!982459))

(assert (=> b!1063644 m!982349))

(assert (=> b!1063644 m!982349))

(assert (=> b!1063644 m!982351))

(assert (=> b!1063645 m!982349))

(assert (=> b!1063645 m!982349))

(assert (=> b!1063645 m!982351))

(assert (=> b!1063466 d!128879))

(declare-fun mapIsEmpty!39595 () Bool)

(declare-fun mapRes!39595 () Bool)

(assert (=> mapIsEmpty!39595 mapRes!39595))

(declare-fun b!1063653 () Bool)

(declare-fun e!606139 () Bool)

(assert (=> b!1063653 (= e!606139 tp_is_empty!25275)))

(declare-fun mapNonEmpty!39595 () Bool)

(declare-fun tp!75834 () Bool)

(declare-fun e!606140 () Bool)

(assert (=> mapNonEmpty!39595 (= mapRes!39595 (and tp!75834 e!606140))))

(declare-fun mapKey!39595 () (_ BitVec 32))

(declare-fun mapRest!39595 () (Array (_ BitVec 32) ValueCell!11934))

(declare-fun mapValue!39595 () ValueCell!11934)

(assert (=> mapNonEmpty!39595 (= mapRest!39589 (store mapRest!39595 mapKey!39595 mapValue!39595))))

(declare-fun b!1063652 () Bool)

(assert (=> b!1063652 (= e!606140 tp_is_empty!25275)))

(declare-fun condMapEmpty!39595 () Bool)

(declare-fun mapDefault!39595 () ValueCell!11934)

(assert (=> mapNonEmpty!39589 (= condMapEmpty!39595 (= mapRest!39589 ((as const (Array (_ BitVec 32) ValueCell!11934)) mapDefault!39595)))))

(assert (=> mapNonEmpty!39589 (= tp!75824 (and e!606139 mapRes!39595))))

(assert (= (and mapNonEmpty!39589 condMapEmpty!39595) mapIsEmpty!39595))

(assert (= (and mapNonEmpty!39589 (not condMapEmpty!39595)) mapNonEmpty!39595))

(assert (= (and mapNonEmpty!39595 ((_ is ValueCellFull!11934) mapValue!39595)) b!1063652))

(assert (= (and mapNonEmpty!39589 ((_ is ValueCellFull!11934) mapDefault!39595)) b!1063653))

(declare-fun m!982461 () Bool)

(assert (=> mapNonEmpty!39595 m!982461))

(declare-fun b_lambda!16521 () Bool)

(assert (= b_lambda!16515 (or (and start!94064 b_free!21465) b_lambda!16521)))

(declare-fun b_lambda!16523 () Bool)

(assert (= b_lambda!16517 (or (and start!94064 b_free!21465) b_lambda!16523)))

(declare-fun b_lambda!16525 () Bool)

(assert (= b_lambda!16511 (or (and start!94064 b_free!21465) b_lambda!16525)))

(declare-fun b_lambda!16527 () Bool)

(assert (= b_lambda!16513 (or (and start!94064 b_free!21465) b_lambda!16527)))

(declare-fun b_lambda!16529 () Bool)

(assert (= b_lambda!16519 (or (and start!94064 b_free!21465) b_lambda!16529)))

(check-sat (not b!1063621) tp_is_empty!25275 (not b!1063619) (not bm!44953) (not bm!44969) (not bm!44959) (not b!1063629) (not b!1063630) (not d!128857) (not b!1063614) (not b!1063613) (not b_lambda!16521) (not b!1063551) (not b!1063608) (not d!128863) (not b!1063555) (not bm!44966) (not bm!44965) (not b!1063550) (not b!1063620) (not b!1063566) (not b!1063609) (not b!1063617) b_and!34227 (not b!1063618) (not mapNonEmpty!39595) (not b!1063503) (not b!1063560) (not d!128875) (not b!1063615) (not bm!44955) (not b!1063580) (not b_lambda!16525) (not d!128865) (not b!1063563) (not b_lambda!16529) (not b!1063626) (not b!1063642) (not b!1063548) (not d!128859) (not d!128877) (not b!1063627) (not d!128867) (not bm!44962) (not b!1063625) (not b!1063644) (not b!1063645) (not b!1063554) (not b_lambda!16527) (not b_next!21465) (not b!1063607) (not b!1063505) (not bm!44954) (not b!1063581) (not b_lambda!16523))
(check-sat b_and!34227 (not b_next!21465))
