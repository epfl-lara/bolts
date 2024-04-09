; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95028 () Bool)

(assert start!95028)

(declare-fun b_free!22167 () Bool)

(declare-fun b_next!22167 () Bool)

(assert (=> start!95028 (= b_free!22167 (not b_next!22167))))

(declare-fun tp!77973 () Bool)

(declare-fun b_and!35057 () Bool)

(assert (=> start!95028 (= tp!77973 b_and!35057)))

(declare-fun b!1073910 () Bool)

(declare-fun e!613638 () Bool)

(declare-fun e!613634 () Bool)

(declare-fun mapRes!40684 () Bool)

(assert (=> b!1073910 (= e!613638 (and e!613634 mapRes!40684))))

(declare-fun condMapEmpty!40684 () Bool)

(declare-datatypes ((V!39771 0))(
  ( (V!39772 (val!13039 Int)) )
))
(declare-datatypes ((ValueCell!12285 0))(
  ( (ValueCellFull!12285 (v!15659 V!39771)) (EmptyCell!12285) )
))
(declare-datatypes ((array!68880 0))(
  ( (array!68881 (arr!33128 (Array (_ BitVec 32) ValueCell!12285)) (size!33665 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68880)

(declare-fun mapDefault!40684 () ValueCell!12285)

(assert (=> b!1073910 (= condMapEmpty!40684 (= (arr!33128 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12285)) mapDefault!40684)))))

(declare-fun b!1073911 () Bool)

(declare-fun e!613633 () Bool)

(declare-fun tp_is_empty!25977 () Bool)

(assert (=> b!1073911 (= e!613633 tp_is_empty!25977)))

(declare-fun b!1073912 () Bool)

(declare-fun e!613635 () Bool)

(declare-fun e!613636 () Bool)

(assert (=> b!1073912 (= e!613635 e!613636)))

(declare-fun res!716260 () Bool)

(assert (=> b!1073912 (=> res!716260 e!613636)))

(declare-datatypes ((tuple2!16672 0))(
  ( (tuple2!16673 (_1!8346 (_ BitVec 64)) (_2!8346 V!39771)) )
))
(declare-datatypes ((List!23248 0))(
  ( (Nil!23245) (Cons!23244 (h!24453 tuple2!16672) (t!32596 List!23248)) )
))
(declare-datatypes ((ListLongMap!14653 0))(
  ( (ListLongMap!14654 (toList!7342 List!23248)) )
))
(declare-fun lt!476287 () ListLongMap!14653)

(declare-fun contains!6346 (ListLongMap!14653 (_ BitVec 64)) Bool)

(assert (=> b!1073912 (= res!716260 (contains!6346 lt!476287 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39771)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39771)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68882 0))(
  ( (array!68883 (arr!33129 (Array (_ BitVec 32) (_ BitVec 64))) (size!33666 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68882)

(declare-fun getCurrentListMap!4180 (array!68882 array!68880 (_ BitVec 32) (_ BitVec 32) V!39771 V!39771 (_ BitVec 32) Int) ListLongMap!14653)

(assert (=> b!1073912 (= lt!476287 (getCurrentListMap!4180 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073913 () Bool)

(declare-fun e!613637 () Bool)

(assert (=> b!1073913 (= e!613637 (not e!613635))))

(declare-fun res!716259 () Bool)

(assert (=> b!1073913 (=> res!716259 e!613635)))

(assert (=> b!1073913 (= res!716259 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!476284 () ListLongMap!14653)

(declare-fun lt!476282 () ListLongMap!14653)

(assert (=> b!1073913 (= lt!476284 lt!476282)))

(declare-fun zeroValueAfter!47 () V!39771)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((Unit!35307 0))(
  ( (Unit!35308) )
))
(declare-fun lt!476285 () Unit!35307)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!889 (array!68882 array!68880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39771 V!39771 V!39771 V!39771 (_ BitVec 32) Int) Unit!35307)

(assert (=> b!1073913 (= lt!476285 (lemmaNoChangeToArrayThenSameMapNoExtras!889 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3870 (array!68882 array!68880 (_ BitVec 32) (_ BitVec 32) V!39771 V!39771 (_ BitVec 32) Int) ListLongMap!14653)

(assert (=> b!1073913 (= lt!476282 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1073913 (= lt!476284 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073914 () Bool)

(assert (=> b!1073914 (= e!613634 tp_is_empty!25977)))

(declare-fun mapNonEmpty!40684 () Bool)

(declare-fun tp!77972 () Bool)

(assert (=> mapNonEmpty!40684 (= mapRes!40684 (and tp!77972 e!613633))))

(declare-fun mapValue!40684 () ValueCell!12285)

(declare-fun mapRest!40684 () (Array (_ BitVec 32) ValueCell!12285))

(declare-fun mapKey!40684 () (_ BitVec 32))

(assert (=> mapNonEmpty!40684 (= (arr!33128 _values!955) (store mapRest!40684 mapKey!40684 mapValue!40684))))

(declare-fun b!1073915 () Bool)

(declare-fun res!716262 () Bool)

(assert (=> b!1073915 (=> (not res!716262) (not e!613637))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68882 (_ BitVec 32)) Bool)

(assert (=> b!1073915 (= res!716262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40684 () Bool)

(assert (=> mapIsEmpty!40684 mapRes!40684))

(declare-fun b!1073916 () Bool)

(declare-fun res!716264 () Bool)

(assert (=> b!1073916 (=> (not res!716264) (not e!613637))))

(declare-datatypes ((List!23249 0))(
  ( (Nil!23246) (Cons!23245 (h!24454 (_ BitVec 64)) (t!32597 List!23249)) )
))
(declare-fun arrayNoDuplicates!0 (array!68882 (_ BitVec 32) List!23249) Bool)

(assert (=> b!1073916 (= res!716264 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23246))))

(declare-fun b!1073917 () Bool)

(declare-fun lt!476283 () ListLongMap!14653)

(assert (=> b!1073917 (= e!613636 (= lt!476283 (getCurrentListMap!4180 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)))))

(assert (=> b!1073917 (= lt!476283 lt!476287)))

(declare-fun -!705 (ListLongMap!14653 (_ BitVec 64)) ListLongMap!14653)

(assert (=> b!1073917 (= lt!476283 (-!705 lt!476287 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!476286 () Unit!35307)

(declare-fun removeNotPresentStillSame!73 (ListLongMap!14653 (_ BitVec 64)) Unit!35307)

(assert (=> b!1073917 (= lt!476286 (removeNotPresentStillSame!73 lt!476287 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1073918 () Bool)

(declare-fun res!716261 () Bool)

(assert (=> b!1073918 (=> (not res!716261) (not e!613637))))

(assert (=> b!1073918 (= res!716261 (and (= (size!33665 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33666 _keys!1163) (size!33665 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!716263 () Bool)

(assert (=> start!95028 (=> (not res!716263) (not e!613637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95028 (= res!716263 (validMask!0 mask!1515))))

(assert (=> start!95028 e!613637))

(assert (=> start!95028 true))

(assert (=> start!95028 tp_is_empty!25977))

(declare-fun array_inv!25456 (array!68880) Bool)

(assert (=> start!95028 (and (array_inv!25456 _values!955) e!613638)))

(assert (=> start!95028 tp!77973))

(declare-fun array_inv!25457 (array!68882) Bool)

(assert (=> start!95028 (array_inv!25457 _keys!1163)))

(assert (= (and start!95028 res!716263) b!1073918))

(assert (= (and b!1073918 res!716261) b!1073915))

(assert (= (and b!1073915 res!716262) b!1073916))

(assert (= (and b!1073916 res!716264) b!1073913))

(assert (= (and b!1073913 (not res!716259)) b!1073912))

(assert (= (and b!1073912 (not res!716260)) b!1073917))

(assert (= (and b!1073910 condMapEmpty!40684) mapIsEmpty!40684))

(assert (= (and b!1073910 (not condMapEmpty!40684)) mapNonEmpty!40684))

(get-info :version)

(assert (= (and mapNonEmpty!40684 ((_ is ValueCellFull!12285) mapValue!40684)) b!1073911))

(assert (= (and b!1073910 ((_ is ValueCellFull!12285) mapDefault!40684)) b!1073914))

(assert (= start!95028 b!1073910))

(declare-fun m!992923 () Bool)

(assert (=> b!1073912 m!992923))

(declare-fun m!992925 () Bool)

(assert (=> b!1073912 m!992925))

(declare-fun m!992927 () Bool)

(assert (=> b!1073913 m!992927))

(declare-fun m!992929 () Bool)

(assert (=> b!1073913 m!992929))

(declare-fun m!992931 () Bool)

(assert (=> b!1073913 m!992931))

(declare-fun m!992933 () Bool)

(assert (=> b!1073916 m!992933))

(declare-fun m!992935 () Bool)

(assert (=> b!1073915 m!992935))

(declare-fun m!992937 () Bool)

(assert (=> start!95028 m!992937))

(declare-fun m!992939 () Bool)

(assert (=> start!95028 m!992939))

(declare-fun m!992941 () Bool)

(assert (=> start!95028 m!992941))

(declare-fun m!992943 () Bool)

(assert (=> mapNonEmpty!40684 m!992943))

(declare-fun m!992945 () Bool)

(assert (=> b!1073917 m!992945))

(declare-fun m!992947 () Bool)

(assert (=> b!1073917 m!992947))

(declare-fun m!992949 () Bool)

(assert (=> b!1073917 m!992949))

(check-sat (not b!1073916) (not b!1073915) b_and!35057 (not b!1073912) (not start!95028) (not b!1073913) (not b!1073917) tp_is_empty!25977 (not b_next!22167) (not mapNonEmpty!40684))
(check-sat b_and!35057 (not b_next!22167))
(get-model)

(declare-fun d!129413 () Bool)

(declare-fun e!613664 () Bool)

(assert (=> d!129413 e!613664))

(declare-fun res!716285 () Bool)

(assert (=> d!129413 (=> res!716285 e!613664)))

(declare-fun lt!476315 () Bool)

(assert (=> d!129413 (= res!716285 (not lt!476315))))

(declare-fun lt!476317 () Bool)

(assert (=> d!129413 (= lt!476315 lt!476317)))

(declare-fun lt!476316 () Unit!35307)

(declare-fun e!613665 () Unit!35307)

(assert (=> d!129413 (= lt!476316 e!613665)))

(declare-fun c!107757 () Bool)

(assert (=> d!129413 (= c!107757 lt!476317)))

(declare-fun containsKey!578 (List!23248 (_ BitVec 64)) Bool)

(assert (=> d!129413 (= lt!476317 (containsKey!578 (toList!7342 lt!476287) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129413 (= (contains!6346 lt!476287 #b0000000000000000000000000000000000000000000000000000000000000000) lt!476315)))

(declare-fun b!1073952 () Bool)

(declare-fun lt!476314 () Unit!35307)

(assert (=> b!1073952 (= e!613665 lt!476314)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!410 (List!23248 (_ BitVec 64)) Unit!35307)

(assert (=> b!1073952 (= lt!476314 (lemmaContainsKeyImpliesGetValueByKeyDefined!410 (toList!7342 lt!476287) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!660 0))(
  ( (Some!659 (v!15661 V!39771)) (None!658) )
))
(declare-fun isDefined!450 (Option!660) Bool)

(declare-fun getValueByKey!609 (List!23248 (_ BitVec 64)) Option!660)

(assert (=> b!1073952 (isDefined!450 (getValueByKey!609 (toList!7342 lt!476287) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1073953 () Bool)

(declare-fun Unit!35311 () Unit!35307)

(assert (=> b!1073953 (= e!613665 Unit!35311)))

(declare-fun b!1073954 () Bool)

(assert (=> b!1073954 (= e!613664 (isDefined!450 (getValueByKey!609 (toList!7342 lt!476287) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129413 c!107757) b!1073952))

(assert (= (and d!129413 (not c!107757)) b!1073953))

(assert (= (and d!129413 (not res!716285)) b!1073954))

(declare-fun m!992979 () Bool)

(assert (=> d!129413 m!992979))

(declare-fun m!992981 () Bool)

(assert (=> b!1073952 m!992981))

(declare-fun m!992983 () Bool)

(assert (=> b!1073952 m!992983))

(assert (=> b!1073952 m!992983))

(declare-fun m!992985 () Bool)

(assert (=> b!1073952 m!992985))

(assert (=> b!1073954 m!992983))

(assert (=> b!1073954 m!992983))

(assert (=> b!1073954 m!992985))

(assert (=> b!1073912 d!129413))

(declare-fun b!1073997 () Bool)

(declare-fun e!613696 () Bool)

(declare-fun e!613697 () Bool)

(assert (=> b!1073997 (= e!613696 e!613697)))

(declare-fun res!716312 () Bool)

(declare-fun call!45337 () Bool)

(assert (=> b!1073997 (= res!716312 call!45337)))

(assert (=> b!1073997 (=> (not res!716312) (not e!613697))))

(declare-fun b!1073998 () Bool)

(declare-fun res!716305 () Bool)

(declare-fun e!613704 () Bool)

(assert (=> b!1073998 (=> (not res!716305) (not e!613704))))

(declare-fun e!613699 () Bool)

(assert (=> b!1073998 (= res!716305 e!613699)))

(declare-fun c!107772 () Bool)

(assert (=> b!1073998 (= c!107772 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!45340 () ListLongMap!14653)

(declare-fun call!45335 () ListLongMap!14653)

(declare-fun bm!45331 () Bool)

(declare-fun c!107775 () Bool)

(declare-fun call!45336 () ListLongMap!14653)

(declare-fun c!107771 () Bool)

(declare-fun call!45338 () ListLongMap!14653)

(declare-fun +!3172 (ListLongMap!14653 tuple2!16672) ListLongMap!14653)

(assert (=> bm!45331 (= call!45335 (+!3172 (ite c!107771 call!45336 (ite c!107775 call!45340 call!45338)) (ite (or c!107771 c!107775) (tuple2!16673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1073999 () Bool)

(declare-fun e!613694 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1073999 (= e!613694 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45332 () Bool)

(declare-fun call!45339 () ListLongMap!14653)

(assert (=> bm!45332 (= call!45339 call!45335)))

(declare-fun b!1074000 () Bool)

(declare-fun c!107774 () Bool)

(assert (=> b!1074000 (= c!107774 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!613698 () ListLongMap!14653)

(declare-fun e!613700 () ListLongMap!14653)

(assert (=> b!1074000 (= e!613698 e!613700)))

(declare-fun bm!45333 () Bool)

(assert (=> bm!45333 (= call!45340 call!45336)))

(declare-fun b!1074001 () Bool)

(declare-fun e!613695 () ListLongMap!14653)

(assert (=> b!1074001 (= e!613695 (+!3172 call!45335 (tuple2!16673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1074002 () Bool)

(declare-fun e!613692 () Unit!35307)

(declare-fun lt!476377 () Unit!35307)

(assert (=> b!1074002 (= e!613692 lt!476377)))

(declare-fun lt!476378 () ListLongMap!14653)

(assert (=> b!1074002 (= lt!476378 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476373 () (_ BitVec 64))

(assert (=> b!1074002 (= lt!476373 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476370 () (_ BitVec 64))

(assert (=> b!1074002 (= lt!476370 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476382 () Unit!35307)

(declare-fun addStillContains!651 (ListLongMap!14653 (_ BitVec 64) V!39771 (_ BitVec 64)) Unit!35307)

(assert (=> b!1074002 (= lt!476382 (addStillContains!651 lt!476378 lt!476373 zeroValueBefore!47 lt!476370))))

(assert (=> b!1074002 (contains!6346 (+!3172 lt!476378 (tuple2!16673 lt!476373 zeroValueBefore!47)) lt!476370)))

(declare-fun lt!476368 () Unit!35307)

(assert (=> b!1074002 (= lt!476368 lt!476382)))

(declare-fun lt!476362 () ListLongMap!14653)

(assert (=> b!1074002 (= lt!476362 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476369 () (_ BitVec 64))

(assert (=> b!1074002 (= lt!476369 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476376 () (_ BitVec 64))

(assert (=> b!1074002 (= lt!476376 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476375 () Unit!35307)

(declare-fun addApplyDifferent!503 (ListLongMap!14653 (_ BitVec 64) V!39771 (_ BitVec 64)) Unit!35307)

(assert (=> b!1074002 (= lt!476375 (addApplyDifferent!503 lt!476362 lt!476369 minValue!907 lt!476376))))

(declare-fun apply!969 (ListLongMap!14653 (_ BitVec 64)) V!39771)

(assert (=> b!1074002 (= (apply!969 (+!3172 lt!476362 (tuple2!16673 lt!476369 minValue!907)) lt!476376) (apply!969 lt!476362 lt!476376))))

(declare-fun lt!476374 () Unit!35307)

(assert (=> b!1074002 (= lt!476374 lt!476375)))

(declare-fun lt!476379 () ListLongMap!14653)

(assert (=> b!1074002 (= lt!476379 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476383 () (_ BitVec 64))

(assert (=> b!1074002 (= lt!476383 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476381 () (_ BitVec 64))

(assert (=> b!1074002 (= lt!476381 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476366 () Unit!35307)

(assert (=> b!1074002 (= lt!476366 (addApplyDifferent!503 lt!476379 lt!476383 zeroValueBefore!47 lt!476381))))

(assert (=> b!1074002 (= (apply!969 (+!3172 lt!476379 (tuple2!16673 lt!476383 zeroValueBefore!47)) lt!476381) (apply!969 lt!476379 lt!476381))))

(declare-fun lt!476365 () Unit!35307)

(assert (=> b!1074002 (= lt!476365 lt!476366)))

(declare-fun lt!476363 () ListLongMap!14653)

(assert (=> b!1074002 (= lt!476363 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476364 () (_ BitVec 64))

(assert (=> b!1074002 (= lt!476364 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476380 () (_ BitVec 64))

(assert (=> b!1074002 (= lt!476380 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074002 (= lt!476377 (addApplyDifferent!503 lt!476363 lt!476364 minValue!907 lt!476380))))

(assert (=> b!1074002 (= (apply!969 (+!3172 lt!476363 (tuple2!16673 lt!476364 minValue!907)) lt!476380) (apply!969 lt!476363 lt!476380))))

(declare-fun b!1074003 () Bool)

(assert (=> b!1074003 (= e!613704 e!613696)))

(declare-fun c!107773 () Bool)

(assert (=> b!1074003 (= c!107773 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074004 () Bool)

(declare-fun lt!476367 () ListLongMap!14653)

(assert (=> b!1074004 (= e!613697 (= (apply!969 lt!476367 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1074005 () Bool)

(assert (=> b!1074005 (= e!613700 call!45339)))

(declare-fun b!1074006 () Bool)

(declare-fun e!613703 () Bool)

(declare-fun get!17229 (ValueCell!12285 V!39771) V!39771)

(declare-fun dynLambda!2045 (Int (_ BitVec 64)) V!39771)

(assert (=> b!1074006 (= e!613703 (= (apply!969 lt!476367 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)) (get!17229 (select (arr!33128 _values!955) #b00000000000000000000000000000000) (dynLambda!2045 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1074006 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33665 _values!955)))))

(assert (=> b!1074006 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun b!1074007 () Bool)

(declare-fun call!45334 () Bool)

(assert (=> b!1074007 (= e!613699 (not call!45334))))

(declare-fun bm!45334 () Bool)

(assert (=> bm!45334 (= call!45336 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074008 () Bool)

(assert (=> b!1074008 (= e!613696 (not call!45337))))

(declare-fun b!1074009 () Bool)

(declare-fun e!613702 () Bool)

(assert (=> b!1074009 (= e!613702 (= (apply!969 lt!476367 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1074010 () Bool)

(assert (=> b!1074010 (= e!613699 e!613702)))

(declare-fun res!716306 () Bool)

(assert (=> b!1074010 (= res!716306 call!45334)))

(assert (=> b!1074010 (=> (not res!716306) (not e!613702))))

(declare-fun b!1074011 () Bool)

(assert (=> b!1074011 (= e!613695 e!613698)))

(assert (=> b!1074011 (= c!107775 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074012 () Bool)

(declare-fun e!613701 () Bool)

(assert (=> b!1074012 (= e!613701 e!613703)))

(declare-fun res!716307 () Bool)

(assert (=> b!1074012 (=> (not res!716307) (not e!613703))))

(assert (=> b!1074012 (= res!716307 (contains!6346 lt!476367 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074012 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun b!1074013 () Bool)

(assert (=> b!1074013 (= e!613700 call!45338)))

(declare-fun d!129415 () Bool)

(assert (=> d!129415 e!613704))

(declare-fun res!716310 () Bool)

(assert (=> d!129415 (=> (not res!716310) (not e!613704))))

(assert (=> d!129415 (= res!716310 (or (bvsge #b00000000000000000000000000000000 (size!33666 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))))

(declare-fun lt!476371 () ListLongMap!14653)

(assert (=> d!129415 (= lt!476367 lt!476371)))

(declare-fun lt!476372 () Unit!35307)

(assert (=> d!129415 (= lt!476372 e!613692)))

(declare-fun c!107770 () Bool)

(declare-fun e!613693 () Bool)

(assert (=> d!129415 (= c!107770 e!613693)))

(declare-fun res!716308 () Bool)

(assert (=> d!129415 (=> (not res!716308) (not e!613693))))

(assert (=> d!129415 (= res!716308 (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(assert (=> d!129415 (= lt!476371 e!613695)))

(assert (=> d!129415 (= c!107771 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129415 (validMask!0 mask!1515)))

(assert (=> d!129415 (= (getCurrentListMap!4180 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476367)))

(declare-fun b!1074014 () Bool)

(declare-fun res!716309 () Bool)

(assert (=> b!1074014 (=> (not res!716309) (not e!613704))))

(assert (=> b!1074014 (= res!716309 e!613701)))

(declare-fun res!716311 () Bool)

(assert (=> b!1074014 (=> res!716311 e!613701)))

(assert (=> b!1074014 (= res!716311 (not e!613694))))

(declare-fun res!716304 () Bool)

(assert (=> b!1074014 (=> (not res!716304) (not e!613694))))

(assert (=> b!1074014 (= res!716304 (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun b!1074015 () Bool)

(assert (=> b!1074015 (= e!613693 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45335 () Bool)

(assert (=> bm!45335 (= call!45338 call!45340)))

(declare-fun b!1074016 () Bool)

(assert (=> b!1074016 (= e!613698 call!45339)))

(declare-fun b!1074017 () Bool)

(declare-fun Unit!35312 () Unit!35307)

(assert (=> b!1074017 (= e!613692 Unit!35312)))

(declare-fun bm!45336 () Bool)

(assert (=> bm!45336 (= call!45334 (contains!6346 lt!476367 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!45337 () Bool)

(assert (=> bm!45337 (= call!45337 (contains!6346 lt!476367 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!129415 c!107771) b!1074001))

(assert (= (and d!129415 (not c!107771)) b!1074011))

(assert (= (and b!1074011 c!107775) b!1074016))

(assert (= (and b!1074011 (not c!107775)) b!1074000))

(assert (= (and b!1074000 c!107774) b!1074005))

(assert (= (and b!1074000 (not c!107774)) b!1074013))

(assert (= (or b!1074005 b!1074013) bm!45335))

(assert (= (or b!1074016 bm!45335) bm!45333))

(assert (= (or b!1074016 b!1074005) bm!45332))

(assert (= (or b!1074001 bm!45333) bm!45334))

(assert (= (or b!1074001 bm!45332) bm!45331))

(assert (= (and d!129415 res!716308) b!1074015))

(assert (= (and d!129415 c!107770) b!1074002))

(assert (= (and d!129415 (not c!107770)) b!1074017))

(assert (= (and d!129415 res!716310) b!1074014))

(assert (= (and b!1074014 res!716304) b!1073999))

(assert (= (and b!1074014 (not res!716311)) b!1074012))

(assert (= (and b!1074012 res!716307) b!1074006))

(assert (= (and b!1074014 res!716309) b!1073998))

(assert (= (and b!1073998 c!107772) b!1074010))

(assert (= (and b!1073998 (not c!107772)) b!1074007))

(assert (= (and b!1074010 res!716306) b!1074009))

(assert (= (or b!1074010 b!1074007) bm!45336))

(assert (= (and b!1073998 res!716305) b!1074003))

(assert (= (and b!1074003 c!107773) b!1073997))

(assert (= (and b!1074003 (not c!107773)) b!1074008))

(assert (= (and b!1073997 res!716312) b!1074004))

(assert (= (or b!1073997 b!1074008) bm!45337))

(declare-fun b_lambda!16791 () Bool)

(assert (=> (not b_lambda!16791) (not b!1074006)))

(declare-fun t!32600 () Bool)

(declare-fun tb!7171 () Bool)

(assert (=> (and start!95028 (= defaultEntry!963 defaultEntry!963) t!32600) tb!7171))

(declare-fun result!14805 () Bool)

(assert (=> tb!7171 (= result!14805 tp_is_empty!25977)))

(assert (=> b!1074006 t!32600))

(declare-fun b_and!35061 () Bool)

(assert (= b_and!35057 (and (=> t!32600 result!14805) b_and!35061)))

(declare-fun m!992987 () Bool)

(assert (=> b!1074012 m!992987))

(assert (=> b!1074012 m!992987))

(declare-fun m!992989 () Bool)

(assert (=> b!1074012 m!992989))

(assert (=> b!1074015 m!992987))

(assert (=> b!1074015 m!992987))

(declare-fun m!992991 () Bool)

(assert (=> b!1074015 m!992991))

(declare-fun m!992993 () Bool)

(assert (=> b!1074001 m!992993))

(assert (=> bm!45334 m!992931))

(declare-fun m!992995 () Bool)

(assert (=> bm!45337 m!992995))

(declare-fun m!992997 () Bool)

(assert (=> b!1074004 m!992997))

(assert (=> b!1073999 m!992987))

(assert (=> b!1073999 m!992987))

(assert (=> b!1073999 m!992991))

(declare-fun m!992999 () Bool)

(assert (=> b!1074006 m!992999))

(declare-fun m!993001 () Bool)

(assert (=> b!1074006 m!993001))

(declare-fun m!993003 () Bool)

(assert (=> b!1074006 m!993003))

(assert (=> b!1074006 m!992987))

(assert (=> b!1074006 m!993001))

(assert (=> b!1074006 m!992987))

(declare-fun m!993005 () Bool)

(assert (=> b!1074006 m!993005))

(assert (=> b!1074006 m!992999))

(declare-fun m!993007 () Bool)

(assert (=> bm!45331 m!993007))

(declare-fun m!993009 () Bool)

(assert (=> b!1074002 m!993009))

(assert (=> b!1074002 m!992987))

(declare-fun m!993011 () Bool)

(assert (=> b!1074002 m!993011))

(declare-fun m!993013 () Bool)

(assert (=> b!1074002 m!993013))

(declare-fun m!993015 () Bool)

(assert (=> b!1074002 m!993015))

(declare-fun m!993017 () Bool)

(assert (=> b!1074002 m!993017))

(declare-fun m!993019 () Bool)

(assert (=> b!1074002 m!993019))

(assert (=> b!1074002 m!992931))

(declare-fun m!993021 () Bool)

(assert (=> b!1074002 m!993021))

(declare-fun m!993023 () Bool)

(assert (=> b!1074002 m!993023))

(declare-fun m!993025 () Bool)

(assert (=> b!1074002 m!993025))

(assert (=> b!1074002 m!993013))

(declare-fun m!993027 () Bool)

(assert (=> b!1074002 m!993027))

(assert (=> b!1074002 m!993023))

(declare-fun m!993029 () Bool)

(assert (=> b!1074002 m!993029))

(declare-fun m!993031 () Bool)

(assert (=> b!1074002 m!993031))

(assert (=> b!1074002 m!993011))

(declare-fun m!993033 () Bool)

(assert (=> b!1074002 m!993033))

(declare-fun m!993035 () Bool)

(assert (=> b!1074002 m!993035))

(assert (=> b!1074002 m!993015))

(declare-fun m!993037 () Bool)

(assert (=> b!1074002 m!993037))

(declare-fun m!993039 () Bool)

(assert (=> bm!45336 m!993039))

(assert (=> d!129415 m!992937))

(declare-fun m!993041 () Bool)

(assert (=> b!1074009 m!993041))

(assert (=> b!1073912 d!129415))

(declare-fun bm!45340 () Bool)

(declare-fun call!45343 () Bool)

(declare-fun c!107778 () Bool)

(assert (=> bm!45340 (= call!45343 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107778 (Cons!23245 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000) Nil!23246) Nil!23246)))))

(declare-fun b!1074030 () Bool)

(declare-fun e!613716 () Bool)

(declare-fun contains!6348 (List!23249 (_ BitVec 64)) Bool)

(assert (=> b!1074030 (= e!613716 (contains!6348 Nil!23246 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074031 () Bool)

(declare-fun e!613715 () Bool)

(assert (=> b!1074031 (= e!613715 call!45343)))

(declare-fun b!1074032 () Bool)

(declare-fun e!613714 () Bool)

(declare-fun e!613713 () Bool)

(assert (=> b!1074032 (= e!613714 e!613713)))

(declare-fun res!716320 () Bool)

(assert (=> b!1074032 (=> (not res!716320) (not e!613713))))

(assert (=> b!1074032 (= res!716320 (not e!613716))))

(declare-fun res!716319 () Bool)

(assert (=> b!1074032 (=> (not res!716319) (not e!613716))))

(assert (=> b!1074032 (= res!716319 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074034 () Bool)

(assert (=> b!1074034 (= e!613715 call!45343)))

(declare-fun b!1074033 () Bool)

(assert (=> b!1074033 (= e!613713 e!613715)))

(assert (=> b!1074033 (= c!107778 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129417 () Bool)

(declare-fun res!716321 () Bool)

(assert (=> d!129417 (=> res!716321 e!613714)))

(assert (=> d!129417 (= res!716321 (bvsge #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(assert (=> d!129417 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23246) e!613714)))

(assert (= (and d!129417 (not res!716321)) b!1074032))

(assert (= (and b!1074032 res!716319) b!1074030))

(assert (= (and b!1074032 res!716320) b!1074033))

(assert (= (and b!1074033 c!107778) b!1074031))

(assert (= (and b!1074033 (not c!107778)) b!1074034))

(assert (= (or b!1074031 b!1074034) bm!45340))

(assert (=> bm!45340 m!992987))

(declare-fun m!993043 () Bool)

(assert (=> bm!45340 m!993043))

(assert (=> b!1074030 m!992987))

(assert (=> b!1074030 m!992987))

(declare-fun m!993045 () Bool)

(assert (=> b!1074030 m!993045))

(assert (=> b!1074032 m!992987))

(assert (=> b!1074032 m!992987))

(assert (=> b!1074032 m!992991))

(assert (=> b!1074033 m!992987))

(assert (=> b!1074033 m!992987))

(assert (=> b!1074033 m!992991))

(assert (=> b!1073916 d!129417))

(declare-fun d!129419 () Bool)

(assert (=> d!129419 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!95028 d!129419))

(declare-fun d!129421 () Bool)

(assert (=> d!129421 (= (array_inv!25456 _values!955) (bvsge (size!33665 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!95028 d!129421))

(declare-fun d!129423 () Bool)

(assert (=> d!129423 (= (array_inv!25457 _keys!1163) (bvsge (size!33666 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!95028 d!129423))

(declare-fun b!1074043 () Bool)

(declare-fun e!613723 () Bool)

(declare-fun e!613724 () Bool)

(assert (=> b!1074043 (= e!613723 e!613724)))

(declare-fun lt!476392 () (_ BitVec 64))

(assert (=> b!1074043 (= lt!476392 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476391 () Unit!35307)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68882 (_ BitVec 64) (_ BitVec 32)) Unit!35307)

(assert (=> b!1074043 (= lt!476391 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!476392 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1074043 (arrayContainsKey!0 _keys!1163 lt!476392 #b00000000000000000000000000000000)))

(declare-fun lt!476390 () Unit!35307)

(assert (=> b!1074043 (= lt!476390 lt!476391)))

(declare-fun res!716326 () Bool)

(declare-datatypes ((SeekEntryResult!9884 0))(
  ( (MissingZero!9884 (index!41906 (_ BitVec 32))) (Found!9884 (index!41907 (_ BitVec 32))) (Intermediate!9884 (undefined!10696 Bool) (index!41908 (_ BitVec 32)) (x!96258 (_ BitVec 32))) (Undefined!9884) (MissingVacant!9884 (index!41909 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68882 (_ BitVec 32)) SeekEntryResult!9884)

(assert (=> b!1074043 (= res!716326 (= (seekEntryOrOpen!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9884 #b00000000000000000000000000000000)))))

(assert (=> b!1074043 (=> (not res!716326) (not e!613724))))

(declare-fun bm!45343 () Bool)

(declare-fun call!45346 () Bool)

(assert (=> bm!45343 (= call!45346 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1074044 () Bool)

(assert (=> b!1074044 (= e!613723 call!45346)))

(declare-fun b!1074046 () Bool)

(assert (=> b!1074046 (= e!613724 call!45346)))

(declare-fun b!1074045 () Bool)

(declare-fun e!613725 () Bool)

(assert (=> b!1074045 (= e!613725 e!613723)))

(declare-fun c!107781 () Bool)

(assert (=> b!1074045 (= c!107781 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129425 () Bool)

(declare-fun res!716327 () Bool)

(assert (=> d!129425 (=> res!716327 e!613725)))

(assert (=> d!129425 (= res!716327 (bvsge #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(assert (=> d!129425 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!613725)))

(assert (= (and d!129425 (not res!716327)) b!1074045))

(assert (= (and b!1074045 c!107781) b!1074043))

(assert (= (and b!1074045 (not c!107781)) b!1074044))

(assert (= (and b!1074043 res!716326) b!1074046))

(assert (= (or b!1074046 b!1074044) bm!45343))

(assert (=> b!1074043 m!992987))

(declare-fun m!993047 () Bool)

(assert (=> b!1074043 m!993047))

(declare-fun m!993049 () Bool)

(assert (=> b!1074043 m!993049))

(assert (=> b!1074043 m!992987))

(declare-fun m!993051 () Bool)

(assert (=> b!1074043 m!993051))

(declare-fun m!993053 () Bool)

(assert (=> bm!45343 m!993053))

(assert (=> b!1074045 m!992987))

(assert (=> b!1074045 m!992987))

(assert (=> b!1074045 m!992991))

(assert (=> b!1073915 d!129425))

(declare-fun d!129427 () Bool)

(assert (=> d!129427 (= (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476395 () Unit!35307)

(declare-fun choose!1754 (array!68882 array!68880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39771 V!39771 V!39771 V!39771 (_ BitVec 32) Int) Unit!35307)

(assert (=> d!129427 (= lt!476395 (choose!1754 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129427 (validMask!0 mask!1515)))

(assert (=> d!129427 (= (lemmaNoChangeToArrayThenSameMapNoExtras!889 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476395)))

(declare-fun bs!31651 () Bool)

(assert (= bs!31651 d!129427))

(assert (=> bs!31651 m!992931))

(assert (=> bs!31651 m!992929))

(declare-fun m!993055 () Bool)

(assert (=> bs!31651 m!993055))

(assert (=> bs!31651 m!992937))

(assert (=> b!1073913 d!129427))

(declare-fun b!1074071 () Bool)

(declare-fun e!613740 () ListLongMap!14653)

(assert (=> b!1074071 (= e!613740 (ListLongMap!14654 Nil!23245))))

(declare-fun b!1074072 () Bool)

(declare-fun e!613742 () ListLongMap!14653)

(declare-fun call!45349 () ListLongMap!14653)

(assert (=> b!1074072 (= e!613742 call!45349)))

(declare-fun b!1074073 () Bool)

(declare-fun e!613744 () Bool)

(declare-fun e!613746 () Bool)

(assert (=> b!1074073 (= e!613744 e!613746)))

(assert (=> b!1074073 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun res!716338 () Bool)

(declare-fun lt!476414 () ListLongMap!14653)

(assert (=> b!1074073 (= res!716338 (contains!6346 lt!476414 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074073 (=> (not res!716338) (not e!613746))))

(declare-fun b!1074074 () Bool)

(assert (=> b!1074074 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(assert (=> b!1074074 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33665 _values!955)))))

(assert (=> b!1074074 (= e!613746 (= (apply!969 lt!476414 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)) (get!17229 (select (arr!33128 _values!955) #b00000000000000000000000000000000) (dynLambda!2045 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1074075 () Bool)

(declare-fun e!613745 () Bool)

(declare-fun isEmpty!955 (ListLongMap!14653) Bool)

(assert (=> b!1074075 (= e!613745 (isEmpty!955 lt!476414))))

(declare-fun b!1074076 () Bool)

(declare-fun lt!476411 () Unit!35307)

(declare-fun lt!476410 () Unit!35307)

(assert (=> b!1074076 (= lt!476411 lt!476410)))

(declare-fun lt!476416 () (_ BitVec 64))

(declare-fun lt!476412 () ListLongMap!14653)

(declare-fun lt!476413 () (_ BitVec 64))

(declare-fun lt!476415 () V!39771)

(assert (=> b!1074076 (not (contains!6346 (+!3172 lt!476412 (tuple2!16673 lt!476416 lt!476415)) lt!476413))))

(declare-fun addStillNotContains!264 (ListLongMap!14653 (_ BitVec 64) V!39771 (_ BitVec 64)) Unit!35307)

(assert (=> b!1074076 (= lt!476410 (addStillNotContains!264 lt!476412 lt!476416 lt!476415 lt!476413))))

(assert (=> b!1074076 (= lt!476413 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1074076 (= lt!476415 (get!17229 (select (arr!33128 _values!955) #b00000000000000000000000000000000) (dynLambda!2045 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1074076 (= lt!476416 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074076 (= lt!476412 call!45349)))

(assert (=> b!1074076 (= e!613742 (+!3172 call!45349 (tuple2!16673 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000) (get!17229 (select (arr!33128 _values!955) #b00000000000000000000000000000000) (dynLambda!2045 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!45346 () Bool)

(assert (=> bm!45346 (= call!45349 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun d!129429 () Bool)

(declare-fun e!613743 () Bool)

(assert (=> d!129429 e!613743))

(declare-fun res!716336 () Bool)

(assert (=> d!129429 (=> (not res!716336) (not e!613743))))

(assert (=> d!129429 (= res!716336 (not (contains!6346 lt!476414 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129429 (= lt!476414 e!613740)))

(declare-fun c!107793 () Bool)

(assert (=> d!129429 (= c!107793 (bvsge #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(assert (=> d!129429 (validMask!0 mask!1515)))

(assert (=> d!129429 (= (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476414)))

(declare-fun b!1074077 () Bool)

(declare-fun e!613741 () Bool)

(assert (=> b!1074077 (= e!613741 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074077 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1074078 () Bool)

(assert (=> b!1074078 (= e!613744 e!613745)))

(declare-fun c!107792 () Bool)

(assert (=> b!1074078 (= c!107792 (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun b!1074079 () Bool)

(declare-fun res!716339 () Bool)

(assert (=> b!1074079 (=> (not res!716339) (not e!613743))))

(assert (=> b!1074079 (= res!716339 (not (contains!6346 lt!476414 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1074080 () Bool)

(assert (=> b!1074080 (= e!613740 e!613742)))

(declare-fun c!107790 () Bool)

(assert (=> b!1074080 (= c!107790 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074081 () Bool)

(assert (=> b!1074081 (= e!613743 e!613744)))

(declare-fun c!107791 () Bool)

(assert (=> b!1074081 (= c!107791 e!613741)))

(declare-fun res!716337 () Bool)

(assert (=> b!1074081 (=> (not res!716337) (not e!613741))))

(assert (=> b!1074081 (= res!716337 (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun b!1074082 () Bool)

(assert (=> b!1074082 (= e!613745 (= lt!476414 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(assert (= (and d!129429 c!107793) b!1074071))

(assert (= (and d!129429 (not c!107793)) b!1074080))

(assert (= (and b!1074080 c!107790) b!1074076))

(assert (= (and b!1074080 (not c!107790)) b!1074072))

(assert (= (or b!1074076 b!1074072) bm!45346))

(assert (= (and d!129429 res!716336) b!1074079))

(assert (= (and b!1074079 res!716339) b!1074081))

(assert (= (and b!1074081 res!716337) b!1074077))

(assert (= (and b!1074081 c!107791) b!1074073))

(assert (= (and b!1074081 (not c!107791)) b!1074078))

(assert (= (and b!1074073 res!716338) b!1074074))

(assert (= (and b!1074078 c!107792) b!1074082))

(assert (= (and b!1074078 (not c!107792)) b!1074075))

(declare-fun b_lambda!16793 () Bool)

(assert (=> (not b_lambda!16793) (not b!1074074)))

(assert (=> b!1074074 t!32600))

(declare-fun b_and!35063 () Bool)

(assert (= b_and!35061 (and (=> t!32600 result!14805) b_and!35063)))

(declare-fun b_lambda!16795 () Bool)

(assert (=> (not b_lambda!16795) (not b!1074076)))

(assert (=> b!1074076 t!32600))

(declare-fun b_and!35065 () Bool)

(assert (= b_and!35063 (and (=> t!32600 result!14805) b_and!35065)))

(assert (=> b!1074073 m!992987))

(assert (=> b!1074073 m!992987))

(declare-fun m!993057 () Bool)

(assert (=> b!1074073 m!993057))

(declare-fun m!993059 () Bool)

(assert (=> b!1074079 m!993059))

(assert (=> b!1074074 m!992987))

(declare-fun m!993061 () Bool)

(assert (=> b!1074074 m!993061))

(assert (=> b!1074074 m!992999))

(assert (=> b!1074074 m!992987))

(assert (=> b!1074074 m!993001))

(assert (=> b!1074074 m!992999))

(assert (=> b!1074074 m!993001))

(assert (=> b!1074074 m!993003))

(declare-fun m!993063 () Bool)

(assert (=> b!1074075 m!993063))

(declare-fun m!993065 () Bool)

(assert (=> bm!45346 m!993065))

(assert (=> b!1074077 m!992987))

(assert (=> b!1074077 m!992987))

(assert (=> b!1074077 m!992991))

(assert (=> b!1074082 m!993065))

(assert (=> b!1074080 m!992987))

(assert (=> b!1074080 m!992987))

(assert (=> b!1074080 m!992991))

(assert (=> b!1074076 m!992987))

(declare-fun m!993067 () Bool)

(assert (=> b!1074076 m!993067))

(assert (=> b!1074076 m!993001))

(assert (=> b!1074076 m!992999))

(assert (=> b!1074076 m!993001))

(assert (=> b!1074076 m!993003))

(assert (=> b!1074076 m!992999))

(declare-fun m!993069 () Bool)

(assert (=> b!1074076 m!993069))

(declare-fun m!993071 () Bool)

(assert (=> b!1074076 m!993071))

(declare-fun m!993073 () Bool)

(assert (=> b!1074076 m!993073))

(assert (=> b!1074076 m!993071))

(declare-fun m!993075 () Bool)

(assert (=> d!129429 m!993075))

(assert (=> d!129429 m!992937))

(assert (=> b!1073913 d!129429))

(declare-fun b!1074083 () Bool)

(declare-fun e!613747 () ListLongMap!14653)

(assert (=> b!1074083 (= e!613747 (ListLongMap!14654 Nil!23245))))

(declare-fun b!1074084 () Bool)

(declare-fun e!613749 () ListLongMap!14653)

(declare-fun call!45350 () ListLongMap!14653)

(assert (=> b!1074084 (= e!613749 call!45350)))

(declare-fun b!1074085 () Bool)

(declare-fun e!613751 () Bool)

(declare-fun e!613753 () Bool)

(assert (=> b!1074085 (= e!613751 e!613753)))

(assert (=> b!1074085 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun res!716342 () Bool)

(declare-fun lt!476421 () ListLongMap!14653)

(assert (=> b!1074085 (= res!716342 (contains!6346 lt!476421 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074085 (=> (not res!716342) (not e!613753))))

(declare-fun b!1074086 () Bool)

(assert (=> b!1074086 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(assert (=> b!1074086 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33665 _values!955)))))

(assert (=> b!1074086 (= e!613753 (= (apply!969 lt!476421 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)) (get!17229 (select (arr!33128 _values!955) #b00000000000000000000000000000000) (dynLambda!2045 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1074087 () Bool)

(declare-fun e!613752 () Bool)

(assert (=> b!1074087 (= e!613752 (isEmpty!955 lt!476421))))

(declare-fun b!1074088 () Bool)

(declare-fun lt!476418 () Unit!35307)

(declare-fun lt!476417 () Unit!35307)

(assert (=> b!1074088 (= lt!476418 lt!476417)))

(declare-fun lt!476422 () V!39771)

(declare-fun lt!476420 () (_ BitVec 64))

(declare-fun lt!476419 () ListLongMap!14653)

(declare-fun lt!476423 () (_ BitVec 64))

(assert (=> b!1074088 (not (contains!6346 (+!3172 lt!476419 (tuple2!16673 lt!476423 lt!476422)) lt!476420))))

(assert (=> b!1074088 (= lt!476417 (addStillNotContains!264 lt!476419 lt!476423 lt!476422 lt!476420))))

(assert (=> b!1074088 (= lt!476420 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1074088 (= lt!476422 (get!17229 (select (arr!33128 _values!955) #b00000000000000000000000000000000) (dynLambda!2045 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1074088 (= lt!476423 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074088 (= lt!476419 call!45350)))

(assert (=> b!1074088 (= e!613749 (+!3172 call!45350 (tuple2!16673 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000) (get!17229 (select (arr!33128 _values!955) #b00000000000000000000000000000000) (dynLambda!2045 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!45347 () Bool)

(assert (=> bm!45347 (= call!45350 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun d!129431 () Bool)

(declare-fun e!613750 () Bool)

(assert (=> d!129431 e!613750))

(declare-fun res!716340 () Bool)

(assert (=> d!129431 (=> (not res!716340) (not e!613750))))

(assert (=> d!129431 (= res!716340 (not (contains!6346 lt!476421 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129431 (= lt!476421 e!613747)))

(declare-fun c!107797 () Bool)

(assert (=> d!129431 (= c!107797 (bvsge #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(assert (=> d!129431 (validMask!0 mask!1515)))

(assert (=> d!129431 (= (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476421)))

(declare-fun b!1074089 () Bool)

(declare-fun e!613748 () Bool)

(assert (=> b!1074089 (= e!613748 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074089 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1074090 () Bool)

(assert (=> b!1074090 (= e!613751 e!613752)))

(declare-fun c!107796 () Bool)

(assert (=> b!1074090 (= c!107796 (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun b!1074091 () Bool)

(declare-fun res!716343 () Bool)

(assert (=> b!1074091 (=> (not res!716343) (not e!613750))))

(assert (=> b!1074091 (= res!716343 (not (contains!6346 lt!476421 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1074092 () Bool)

(assert (=> b!1074092 (= e!613747 e!613749)))

(declare-fun c!107794 () Bool)

(assert (=> b!1074092 (= c!107794 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074093 () Bool)

(assert (=> b!1074093 (= e!613750 e!613751)))

(declare-fun c!107795 () Bool)

(assert (=> b!1074093 (= c!107795 e!613748)))

(declare-fun res!716341 () Bool)

(assert (=> b!1074093 (=> (not res!716341) (not e!613748))))

(assert (=> b!1074093 (= res!716341 (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun b!1074094 () Bool)

(assert (=> b!1074094 (= e!613752 (= lt!476421 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(assert (= (and d!129431 c!107797) b!1074083))

(assert (= (and d!129431 (not c!107797)) b!1074092))

(assert (= (and b!1074092 c!107794) b!1074088))

(assert (= (and b!1074092 (not c!107794)) b!1074084))

(assert (= (or b!1074088 b!1074084) bm!45347))

(assert (= (and d!129431 res!716340) b!1074091))

(assert (= (and b!1074091 res!716343) b!1074093))

(assert (= (and b!1074093 res!716341) b!1074089))

(assert (= (and b!1074093 c!107795) b!1074085))

(assert (= (and b!1074093 (not c!107795)) b!1074090))

(assert (= (and b!1074085 res!716342) b!1074086))

(assert (= (and b!1074090 c!107796) b!1074094))

(assert (= (and b!1074090 (not c!107796)) b!1074087))

(declare-fun b_lambda!16797 () Bool)

(assert (=> (not b_lambda!16797) (not b!1074086)))

(assert (=> b!1074086 t!32600))

(declare-fun b_and!35067 () Bool)

(assert (= b_and!35065 (and (=> t!32600 result!14805) b_and!35067)))

(declare-fun b_lambda!16799 () Bool)

(assert (=> (not b_lambda!16799) (not b!1074088)))

(assert (=> b!1074088 t!32600))

(declare-fun b_and!35069 () Bool)

(assert (= b_and!35067 (and (=> t!32600 result!14805) b_and!35069)))

(assert (=> b!1074085 m!992987))

(assert (=> b!1074085 m!992987))

(declare-fun m!993077 () Bool)

(assert (=> b!1074085 m!993077))

(declare-fun m!993079 () Bool)

(assert (=> b!1074091 m!993079))

(assert (=> b!1074086 m!992987))

(declare-fun m!993081 () Bool)

(assert (=> b!1074086 m!993081))

(assert (=> b!1074086 m!992999))

(assert (=> b!1074086 m!992987))

(assert (=> b!1074086 m!993001))

(assert (=> b!1074086 m!992999))

(assert (=> b!1074086 m!993001))

(assert (=> b!1074086 m!993003))

(declare-fun m!993083 () Bool)

(assert (=> b!1074087 m!993083))

(declare-fun m!993085 () Bool)

(assert (=> bm!45347 m!993085))

(assert (=> b!1074089 m!992987))

(assert (=> b!1074089 m!992987))

(assert (=> b!1074089 m!992991))

(assert (=> b!1074094 m!993085))

(assert (=> b!1074092 m!992987))

(assert (=> b!1074092 m!992987))

(assert (=> b!1074092 m!992991))

(assert (=> b!1074088 m!992987))

(declare-fun m!993087 () Bool)

(assert (=> b!1074088 m!993087))

(assert (=> b!1074088 m!993001))

(assert (=> b!1074088 m!992999))

(assert (=> b!1074088 m!993001))

(assert (=> b!1074088 m!993003))

(assert (=> b!1074088 m!992999))

(declare-fun m!993089 () Bool)

(assert (=> b!1074088 m!993089))

(declare-fun m!993091 () Bool)

(assert (=> b!1074088 m!993091))

(declare-fun m!993093 () Bool)

(assert (=> b!1074088 m!993093))

(assert (=> b!1074088 m!993091))

(declare-fun m!993095 () Bool)

(assert (=> d!129431 m!993095))

(assert (=> d!129431 m!992937))

(assert (=> b!1073913 d!129431))

(declare-fun b!1074095 () Bool)

(declare-fun e!613758 () Bool)

(declare-fun e!613759 () Bool)

(assert (=> b!1074095 (= e!613758 e!613759)))

(declare-fun res!716352 () Bool)

(declare-fun call!45354 () Bool)

(assert (=> b!1074095 (= res!716352 call!45354)))

(assert (=> b!1074095 (=> (not res!716352) (not e!613759))))

(declare-fun b!1074096 () Bool)

(declare-fun res!716345 () Bool)

(declare-fun e!613766 () Bool)

(assert (=> b!1074096 (=> (not res!716345) (not e!613766))))

(declare-fun e!613761 () Bool)

(assert (=> b!1074096 (= res!716345 e!613761)))

(declare-fun c!107800 () Bool)

(assert (=> b!1074096 (= c!107800 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!45353 () ListLongMap!14653)

(declare-fun call!45355 () ListLongMap!14653)

(declare-fun bm!45348 () Bool)

(declare-fun c!107803 () Bool)

(declare-fun c!107799 () Bool)

(declare-fun call!45357 () ListLongMap!14653)

(declare-fun call!45352 () ListLongMap!14653)

(assert (=> bm!45348 (= call!45352 (+!3172 (ite c!107799 call!45353 (ite c!107803 call!45357 call!45355)) (ite (or c!107799 c!107803) (tuple2!16673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1074097 () Bool)

(declare-fun e!613756 () Bool)

(assert (=> b!1074097 (= e!613756 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45349 () Bool)

(declare-fun call!45356 () ListLongMap!14653)

(assert (=> bm!45349 (= call!45356 call!45352)))

(declare-fun b!1074098 () Bool)

(declare-fun c!107802 () Bool)

(assert (=> b!1074098 (= c!107802 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!613760 () ListLongMap!14653)

(declare-fun e!613762 () ListLongMap!14653)

(assert (=> b!1074098 (= e!613760 e!613762)))

(declare-fun bm!45350 () Bool)

(assert (=> bm!45350 (= call!45357 call!45353)))

(declare-fun b!1074099 () Bool)

(declare-fun e!613757 () ListLongMap!14653)

(assert (=> b!1074099 (= e!613757 (+!3172 call!45352 (tuple2!16673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1074100 () Bool)

(declare-fun e!613754 () Unit!35307)

(declare-fun lt!476439 () Unit!35307)

(assert (=> b!1074100 (= e!613754 lt!476439)))

(declare-fun lt!476440 () ListLongMap!14653)

(assert (=> b!1074100 (= lt!476440 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476435 () (_ BitVec 64))

(assert (=> b!1074100 (= lt!476435 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476432 () (_ BitVec 64))

(assert (=> b!1074100 (= lt!476432 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476444 () Unit!35307)

(assert (=> b!1074100 (= lt!476444 (addStillContains!651 lt!476440 lt!476435 zeroValueAfter!47 lt!476432))))

(assert (=> b!1074100 (contains!6346 (+!3172 lt!476440 (tuple2!16673 lt!476435 zeroValueAfter!47)) lt!476432)))

(declare-fun lt!476430 () Unit!35307)

(assert (=> b!1074100 (= lt!476430 lt!476444)))

(declare-fun lt!476424 () ListLongMap!14653)

(assert (=> b!1074100 (= lt!476424 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476431 () (_ BitVec 64))

(assert (=> b!1074100 (= lt!476431 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476438 () (_ BitVec 64))

(assert (=> b!1074100 (= lt!476438 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476437 () Unit!35307)

(assert (=> b!1074100 (= lt!476437 (addApplyDifferent!503 lt!476424 lt!476431 minValue!907 lt!476438))))

(assert (=> b!1074100 (= (apply!969 (+!3172 lt!476424 (tuple2!16673 lt!476431 minValue!907)) lt!476438) (apply!969 lt!476424 lt!476438))))

(declare-fun lt!476436 () Unit!35307)

(assert (=> b!1074100 (= lt!476436 lt!476437)))

(declare-fun lt!476441 () ListLongMap!14653)

(assert (=> b!1074100 (= lt!476441 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476445 () (_ BitVec 64))

(assert (=> b!1074100 (= lt!476445 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476443 () (_ BitVec 64))

(assert (=> b!1074100 (= lt!476443 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476428 () Unit!35307)

(assert (=> b!1074100 (= lt!476428 (addApplyDifferent!503 lt!476441 lt!476445 zeroValueAfter!47 lt!476443))))

(assert (=> b!1074100 (= (apply!969 (+!3172 lt!476441 (tuple2!16673 lt!476445 zeroValueAfter!47)) lt!476443) (apply!969 lt!476441 lt!476443))))

(declare-fun lt!476427 () Unit!35307)

(assert (=> b!1074100 (= lt!476427 lt!476428)))

(declare-fun lt!476425 () ListLongMap!14653)

(assert (=> b!1074100 (= lt!476425 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476426 () (_ BitVec 64))

(assert (=> b!1074100 (= lt!476426 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476442 () (_ BitVec 64))

(assert (=> b!1074100 (= lt!476442 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074100 (= lt!476439 (addApplyDifferent!503 lt!476425 lt!476426 minValue!907 lt!476442))))

(assert (=> b!1074100 (= (apply!969 (+!3172 lt!476425 (tuple2!16673 lt!476426 minValue!907)) lt!476442) (apply!969 lt!476425 lt!476442))))

(declare-fun b!1074101 () Bool)

(assert (=> b!1074101 (= e!613766 e!613758)))

(declare-fun c!107801 () Bool)

(assert (=> b!1074101 (= c!107801 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074102 () Bool)

(declare-fun lt!476429 () ListLongMap!14653)

(assert (=> b!1074102 (= e!613759 (= (apply!969 lt!476429 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1074103 () Bool)

(assert (=> b!1074103 (= e!613762 call!45356)))

(declare-fun b!1074104 () Bool)

(declare-fun e!613765 () Bool)

(assert (=> b!1074104 (= e!613765 (= (apply!969 lt!476429 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)) (get!17229 (select (arr!33128 _values!955) #b00000000000000000000000000000000) (dynLambda!2045 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1074104 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33665 _values!955)))))

(assert (=> b!1074104 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun b!1074105 () Bool)

(declare-fun call!45351 () Bool)

(assert (=> b!1074105 (= e!613761 (not call!45351))))

(declare-fun bm!45351 () Bool)

(assert (=> bm!45351 (= call!45353 (getCurrentListMapNoExtraKeys!3870 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074106 () Bool)

(assert (=> b!1074106 (= e!613758 (not call!45354))))

(declare-fun b!1074107 () Bool)

(declare-fun e!613764 () Bool)

(assert (=> b!1074107 (= e!613764 (= (apply!969 lt!476429 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun b!1074108 () Bool)

(assert (=> b!1074108 (= e!613761 e!613764)))

(declare-fun res!716346 () Bool)

(assert (=> b!1074108 (= res!716346 call!45351)))

(assert (=> b!1074108 (=> (not res!716346) (not e!613764))))

(declare-fun b!1074109 () Bool)

(assert (=> b!1074109 (= e!613757 e!613760)))

(assert (=> b!1074109 (= c!107803 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074110 () Bool)

(declare-fun e!613763 () Bool)

(assert (=> b!1074110 (= e!613763 e!613765)))

(declare-fun res!716347 () Bool)

(assert (=> b!1074110 (=> (not res!716347) (not e!613765))))

(assert (=> b!1074110 (= res!716347 (contains!6346 lt!476429 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074110 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun b!1074111 () Bool)

(assert (=> b!1074111 (= e!613762 call!45355)))

(declare-fun d!129433 () Bool)

(assert (=> d!129433 e!613766))

(declare-fun res!716350 () Bool)

(assert (=> d!129433 (=> (not res!716350) (not e!613766))))

(assert (=> d!129433 (= res!716350 (or (bvsge #b00000000000000000000000000000000 (size!33666 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))))

(declare-fun lt!476433 () ListLongMap!14653)

(assert (=> d!129433 (= lt!476429 lt!476433)))

(declare-fun lt!476434 () Unit!35307)

(assert (=> d!129433 (= lt!476434 e!613754)))

(declare-fun c!107798 () Bool)

(declare-fun e!613755 () Bool)

(assert (=> d!129433 (= c!107798 e!613755)))

(declare-fun res!716348 () Bool)

(assert (=> d!129433 (=> (not res!716348) (not e!613755))))

(assert (=> d!129433 (= res!716348 (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(assert (=> d!129433 (= lt!476433 e!613757)))

(assert (=> d!129433 (= c!107799 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129433 (validMask!0 mask!1515)))

(assert (=> d!129433 (= (getCurrentListMap!4180 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476429)))

(declare-fun b!1074112 () Bool)

(declare-fun res!716349 () Bool)

(assert (=> b!1074112 (=> (not res!716349) (not e!613766))))

(assert (=> b!1074112 (= res!716349 e!613763)))

(declare-fun res!716351 () Bool)

(assert (=> b!1074112 (=> res!716351 e!613763)))

(assert (=> b!1074112 (= res!716351 (not e!613756))))

(declare-fun res!716344 () Bool)

(assert (=> b!1074112 (=> (not res!716344) (not e!613756))))

(assert (=> b!1074112 (= res!716344 (bvslt #b00000000000000000000000000000000 (size!33666 _keys!1163)))))

(declare-fun b!1074113 () Bool)

(assert (=> b!1074113 (= e!613755 (validKeyInArray!0 (select (arr!33129 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45352 () Bool)

(assert (=> bm!45352 (= call!45355 call!45357)))

(declare-fun b!1074114 () Bool)

(assert (=> b!1074114 (= e!613760 call!45356)))

(declare-fun b!1074115 () Bool)

(declare-fun Unit!35313 () Unit!35307)

(assert (=> b!1074115 (= e!613754 Unit!35313)))

(declare-fun bm!45353 () Bool)

(assert (=> bm!45353 (= call!45351 (contains!6346 lt!476429 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!45354 () Bool)

(assert (=> bm!45354 (= call!45354 (contains!6346 lt!476429 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!129433 c!107799) b!1074099))

(assert (= (and d!129433 (not c!107799)) b!1074109))

(assert (= (and b!1074109 c!107803) b!1074114))

(assert (= (and b!1074109 (not c!107803)) b!1074098))

(assert (= (and b!1074098 c!107802) b!1074103))

(assert (= (and b!1074098 (not c!107802)) b!1074111))

(assert (= (or b!1074103 b!1074111) bm!45352))

(assert (= (or b!1074114 bm!45352) bm!45350))

(assert (= (or b!1074114 b!1074103) bm!45349))

(assert (= (or b!1074099 bm!45350) bm!45351))

(assert (= (or b!1074099 bm!45349) bm!45348))

(assert (= (and d!129433 res!716348) b!1074113))

(assert (= (and d!129433 c!107798) b!1074100))

(assert (= (and d!129433 (not c!107798)) b!1074115))

(assert (= (and d!129433 res!716350) b!1074112))

(assert (= (and b!1074112 res!716344) b!1074097))

(assert (= (and b!1074112 (not res!716351)) b!1074110))

(assert (= (and b!1074110 res!716347) b!1074104))

(assert (= (and b!1074112 res!716349) b!1074096))

(assert (= (and b!1074096 c!107800) b!1074108))

(assert (= (and b!1074096 (not c!107800)) b!1074105))

(assert (= (and b!1074108 res!716346) b!1074107))

(assert (= (or b!1074108 b!1074105) bm!45353))

(assert (= (and b!1074096 res!716345) b!1074101))

(assert (= (and b!1074101 c!107801) b!1074095))

(assert (= (and b!1074101 (not c!107801)) b!1074106))

(assert (= (and b!1074095 res!716352) b!1074102))

(assert (= (or b!1074095 b!1074106) bm!45354))

(declare-fun b_lambda!16801 () Bool)

(assert (=> (not b_lambda!16801) (not b!1074104)))

(assert (=> b!1074104 t!32600))

(declare-fun b_and!35071 () Bool)

(assert (= b_and!35069 (and (=> t!32600 result!14805) b_and!35071)))

(assert (=> b!1074110 m!992987))

(assert (=> b!1074110 m!992987))

(declare-fun m!993097 () Bool)

(assert (=> b!1074110 m!993097))

(assert (=> b!1074113 m!992987))

(assert (=> b!1074113 m!992987))

(assert (=> b!1074113 m!992991))

(declare-fun m!993099 () Bool)

(assert (=> b!1074099 m!993099))

(assert (=> bm!45351 m!992929))

(declare-fun m!993101 () Bool)

(assert (=> bm!45354 m!993101))

(declare-fun m!993103 () Bool)

(assert (=> b!1074102 m!993103))

(assert (=> b!1074097 m!992987))

(assert (=> b!1074097 m!992987))

(assert (=> b!1074097 m!992991))

(assert (=> b!1074104 m!992999))

(assert (=> b!1074104 m!993001))

(assert (=> b!1074104 m!993003))

(assert (=> b!1074104 m!992987))

(assert (=> b!1074104 m!993001))

(assert (=> b!1074104 m!992987))

(declare-fun m!993105 () Bool)

(assert (=> b!1074104 m!993105))

(assert (=> b!1074104 m!992999))

(declare-fun m!993107 () Bool)

(assert (=> bm!45348 m!993107))

(declare-fun m!993109 () Bool)

(assert (=> b!1074100 m!993109))

(assert (=> b!1074100 m!992987))

(declare-fun m!993111 () Bool)

(assert (=> b!1074100 m!993111))

(declare-fun m!993113 () Bool)

(assert (=> b!1074100 m!993113))

(declare-fun m!993115 () Bool)

(assert (=> b!1074100 m!993115))

(declare-fun m!993117 () Bool)

(assert (=> b!1074100 m!993117))

(declare-fun m!993119 () Bool)

(assert (=> b!1074100 m!993119))

(assert (=> b!1074100 m!992929))

(declare-fun m!993121 () Bool)

(assert (=> b!1074100 m!993121))

(declare-fun m!993123 () Bool)

(assert (=> b!1074100 m!993123))

(declare-fun m!993125 () Bool)

(assert (=> b!1074100 m!993125))

(assert (=> b!1074100 m!993113))

(declare-fun m!993127 () Bool)

(assert (=> b!1074100 m!993127))

(assert (=> b!1074100 m!993123))

(declare-fun m!993129 () Bool)

(assert (=> b!1074100 m!993129))

(declare-fun m!993131 () Bool)

(assert (=> b!1074100 m!993131))

(assert (=> b!1074100 m!993111))

(declare-fun m!993133 () Bool)

(assert (=> b!1074100 m!993133))

(declare-fun m!993135 () Bool)

(assert (=> b!1074100 m!993135))

(assert (=> b!1074100 m!993115))

(declare-fun m!993137 () Bool)

(assert (=> b!1074100 m!993137))

(declare-fun m!993139 () Bool)

(assert (=> bm!45353 m!993139))

(assert (=> d!129433 m!992937))

(declare-fun m!993141 () Bool)

(assert (=> b!1074107 m!993141))

(assert (=> b!1073917 d!129433))

(declare-fun d!129435 () Bool)

(declare-fun lt!476448 () ListLongMap!14653)

(assert (=> d!129435 (not (contains!6346 lt!476448 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!76 (List!23248 (_ BitVec 64)) List!23248)

(assert (=> d!129435 (= lt!476448 (ListLongMap!14654 (removeStrictlySorted!76 (toList!7342 lt!476287) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129435 (= (-!705 lt!476287 #b0000000000000000000000000000000000000000000000000000000000000000) lt!476448)))

(declare-fun bs!31652 () Bool)

(assert (= bs!31652 d!129435))

(declare-fun m!993143 () Bool)

(assert (=> bs!31652 m!993143))

(declare-fun m!993145 () Bool)

(assert (=> bs!31652 m!993145))

(assert (=> b!1073917 d!129435))

(declare-fun d!129437 () Bool)

(assert (=> d!129437 (= (-!705 lt!476287 #b0000000000000000000000000000000000000000000000000000000000000000) lt!476287)))

(declare-fun lt!476451 () Unit!35307)

(declare-fun choose!1755 (ListLongMap!14653 (_ BitVec 64)) Unit!35307)

(assert (=> d!129437 (= lt!476451 (choose!1755 lt!476287 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129437 (not (contains!6346 lt!476287 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129437 (= (removeNotPresentStillSame!73 lt!476287 #b0000000000000000000000000000000000000000000000000000000000000000) lt!476451)))

(declare-fun bs!31653 () Bool)

(assert (= bs!31653 d!129437))

(assert (=> bs!31653 m!992947))

(declare-fun m!993147 () Bool)

(assert (=> bs!31653 m!993147))

(assert (=> bs!31653 m!992923))

(assert (=> b!1073917 d!129437))

(declare-fun mapIsEmpty!40690 () Bool)

(declare-fun mapRes!40690 () Bool)

(assert (=> mapIsEmpty!40690 mapRes!40690))

(declare-fun mapNonEmpty!40690 () Bool)

(declare-fun tp!77982 () Bool)

(declare-fun e!613771 () Bool)

(assert (=> mapNonEmpty!40690 (= mapRes!40690 (and tp!77982 e!613771))))

(declare-fun mapRest!40690 () (Array (_ BitVec 32) ValueCell!12285))

(declare-fun mapKey!40690 () (_ BitVec 32))

(declare-fun mapValue!40690 () ValueCell!12285)

(assert (=> mapNonEmpty!40690 (= mapRest!40684 (store mapRest!40690 mapKey!40690 mapValue!40690))))

(declare-fun condMapEmpty!40690 () Bool)

(declare-fun mapDefault!40690 () ValueCell!12285)

(assert (=> mapNonEmpty!40684 (= condMapEmpty!40690 (= mapRest!40684 ((as const (Array (_ BitVec 32) ValueCell!12285)) mapDefault!40690)))))

(declare-fun e!613772 () Bool)

(assert (=> mapNonEmpty!40684 (= tp!77972 (and e!613772 mapRes!40690))))

(declare-fun b!1074123 () Bool)

(assert (=> b!1074123 (= e!613772 tp_is_empty!25977)))

(declare-fun b!1074122 () Bool)

(assert (=> b!1074122 (= e!613771 tp_is_empty!25977)))

(assert (= (and mapNonEmpty!40684 condMapEmpty!40690) mapIsEmpty!40690))

(assert (= (and mapNonEmpty!40684 (not condMapEmpty!40690)) mapNonEmpty!40690))

(assert (= (and mapNonEmpty!40690 ((_ is ValueCellFull!12285) mapValue!40690)) b!1074122))

(assert (= (and mapNonEmpty!40684 ((_ is ValueCellFull!12285) mapDefault!40690)) b!1074123))

(declare-fun m!993149 () Bool)

(assert (=> mapNonEmpty!40690 m!993149))

(declare-fun b_lambda!16803 () Bool)

(assert (= b_lambda!16793 (or (and start!95028 b_free!22167) b_lambda!16803)))

(declare-fun b_lambda!16805 () Bool)

(assert (= b_lambda!16791 (or (and start!95028 b_free!22167) b_lambda!16805)))

(declare-fun b_lambda!16807 () Bool)

(assert (= b_lambda!16797 (or (and start!95028 b_free!22167) b_lambda!16807)))

(declare-fun b_lambda!16809 () Bool)

(assert (= b_lambda!16801 (or (and start!95028 b_free!22167) b_lambda!16809)))

(declare-fun b_lambda!16811 () Bool)

(assert (= b_lambda!16795 (or (and start!95028 b_free!22167) b_lambda!16811)))

(declare-fun b_lambda!16813 () Bool)

(assert (= b_lambda!16799 (or (and start!95028 b_free!22167) b_lambda!16813)))

(check-sat (not d!129429) (not b!1074015) (not b!1073954) (not b!1074088) (not b!1073999) (not b!1074073) (not b!1074087) (not b!1074074) (not bm!45336) (not b!1074102) (not b!1074075) (not b!1074045) (not b!1074079) (not bm!45354) (not b!1074012) (not bm!45346) (not d!129433) (not b!1074107) (not d!129437) (not b!1073952) (not b!1074099) (not d!129427) (not b_lambda!16809) (not b!1074091) (not b!1074089) (not b!1074097) (not b!1074082) (not bm!45340) (not b!1074033) (not mapNonEmpty!40690) (not b!1074009) (not bm!45351) (not bm!45337) (not b!1074092) (not bm!45334) (not b_lambda!16807) (not b!1074076) (not d!129435) (not d!129431) b_and!35071 (not b!1074113) (not b!1074001) (not b!1074086) (not b_lambda!16811) (not b_lambda!16805) (not b!1074104) (not b!1074085) (not b!1074094) (not b_lambda!16813) (not b!1074110) (not d!129415) (not bm!45331) tp_is_empty!25977 (not b!1074004) (not b!1074032) (not b!1074006) (not bm!45353) (not b_next!22167) (not b!1074077) (not bm!45347) (not d!129413) (not b!1074002) (not b!1074100) (not bm!45343) (not b_lambda!16803) (not bm!45348) (not b!1074043) (not b!1074080) (not b!1074030))
(check-sat b_and!35071 (not b_next!22167))
