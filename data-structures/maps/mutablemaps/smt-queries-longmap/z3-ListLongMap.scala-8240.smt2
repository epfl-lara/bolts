; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100408 () Bool)

(assert start!100408)

(declare-fun b_free!25713 () Bool)

(declare-fun b_next!25713 () Bool)

(assert (=> start!100408 (= b_free!25713 (not b_next!25713))))

(declare-fun tp!90127 () Bool)

(declare-fun b_and!42331 () Bool)

(assert (=> start!100408 (= tp!90127 b_and!42331)))

(declare-fun b!1197938 () Bool)

(declare-fun res!797350 () Bool)

(declare-fun e!680535 () Bool)

(assert (=> b!1197938 (=> (not res!797350) (not e!680535))))

(declare-datatypes ((array!77594 0))(
  ( (array!77595 (arr!37439 (Array (_ BitVec 32) (_ BitVec 64))) (size!37976 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77594)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45683 0))(
  ( (V!45684 (val!15265 Int)) )
))
(declare-datatypes ((ValueCell!14499 0))(
  ( (ValueCellFull!14499 (v!17904 V!45683)) (EmptyCell!14499) )
))
(declare-datatypes ((array!77596 0))(
  ( (array!77597 (arr!37440 (Array (_ BitVec 32) ValueCell!14499)) (size!37977 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77596)

(assert (=> b!1197938 (= res!797350 (and (= (size!37977 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37976 _keys!1208) (size!37977 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1197939 () Bool)

(declare-fun res!797347 () Bool)

(assert (=> b!1197939 (=> (not res!797347) (not e!680535))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197939 (= res!797347 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37976 _keys!1208))))))

(declare-fun b!1197940 () Bool)

(declare-fun res!797351 () Bool)

(assert (=> b!1197940 (=> (not res!797351) (not e!680535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77594 (_ BitVec 32)) Bool)

(assert (=> b!1197940 (= res!797351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197941 () Bool)

(declare-fun e!680534 () Bool)

(declare-fun tp_is_empty!30417 () Bool)

(assert (=> b!1197941 (= e!680534 tp_is_empty!30417)))

(declare-fun b!1197942 () Bool)

(declare-fun res!797353 () Bool)

(assert (=> b!1197942 (=> (not res!797353) (not e!680535))))

(declare-datatypes ((List!26500 0))(
  ( (Nil!26497) (Cons!26496 (h!27705 (_ BitVec 64)) (t!39212 List!26500)) )
))
(declare-fun arrayNoDuplicates!0 (array!77594 (_ BitVec 32) List!26500) Bool)

(assert (=> b!1197942 (= res!797353 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26497))))

(declare-fun b!1197943 () Bool)

(declare-fun e!680537 () Bool)

(declare-fun mapRes!47465 () Bool)

(assert (=> b!1197943 (= e!680537 (and e!680534 mapRes!47465))))

(declare-fun condMapEmpty!47465 () Bool)

(declare-fun mapDefault!47465 () ValueCell!14499)

(assert (=> b!1197943 (= condMapEmpty!47465 (= (arr!37440 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14499)) mapDefault!47465)))))

(declare-fun zeroValue!944 () V!45683)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!543330 () array!77594)

(declare-fun b!1197944 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45683)

(declare-fun e!680538 () Bool)

(declare-datatypes ((tuple2!19674 0))(
  ( (tuple2!19675 (_1!9847 (_ BitVec 64)) (_2!9847 V!45683)) )
))
(declare-datatypes ((List!26501 0))(
  ( (Nil!26498) (Cons!26497 (h!27706 tuple2!19674) (t!39213 List!26501)) )
))
(declare-datatypes ((ListLongMap!17655 0))(
  ( (ListLongMap!17656 (toList!8843 List!26501)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5256 (array!77594 array!77596 (_ BitVec 32) (_ BitVec 32) V!45683 V!45683 (_ BitVec 32) Int) ListLongMap!17655)

(declare-fun dynLambda!3192 (Int (_ BitVec 64)) V!45683)

(assert (=> b!1197944 (= e!680538 (= (getCurrentListMapNoExtraKeys!5256 lt!543330 (array!77597 (store (arr!37440 _values!996) i!673 (ValueCellFull!14499 (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37977 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) (getCurrentListMapNoExtraKeys!5256 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004)))))

(declare-fun mapIsEmpty!47465 () Bool)

(assert (=> mapIsEmpty!47465 mapRes!47465))

(declare-fun b!1197945 () Bool)

(declare-fun res!797348 () Bool)

(declare-fun e!680539 () Bool)

(assert (=> b!1197945 (=> (not res!797348) (not e!680539))))

(assert (=> b!1197945 (= res!797348 (arrayNoDuplicates!0 lt!543330 #b00000000000000000000000000000000 Nil!26497))))

(declare-fun mapNonEmpty!47465 () Bool)

(declare-fun tp!90126 () Bool)

(declare-fun e!680540 () Bool)

(assert (=> mapNonEmpty!47465 (= mapRes!47465 (and tp!90126 e!680540))))

(declare-fun mapValue!47465 () ValueCell!14499)

(declare-fun mapKey!47465 () (_ BitVec 32))

(declare-fun mapRest!47465 () (Array (_ BitVec 32) ValueCell!14499))

(assert (=> mapNonEmpty!47465 (= (arr!37440 _values!996) (store mapRest!47465 mapKey!47465 mapValue!47465))))

(declare-fun b!1197946 () Bool)

(declare-fun res!797354 () Bool)

(assert (=> b!1197946 (=> (not res!797354) (not e!680535))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1197946 (= res!797354 (= (select (arr!37439 _keys!1208) i!673) k0!934))))

(declare-fun b!1197947 () Bool)

(declare-fun res!797352 () Bool)

(assert (=> b!1197947 (=> (not res!797352) (not e!680535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197947 (= res!797352 (validKeyInArray!0 k0!934))))

(declare-fun res!797345 () Bool)

(assert (=> start!100408 (=> (not res!797345) (not e!680535))))

(assert (=> start!100408 (= res!797345 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37976 _keys!1208))))))

(assert (=> start!100408 e!680535))

(assert (=> start!100408 tp_is_empty!30417))

(declare-fun array_inv!28438 (array!77594) Bool)

(assert (=> start!100408 (array_inv!28438 _keys!1208)))

(assert (=> start!100408 true))

(assert (=> start!100408 tp!90127))

(declare-fun array_inv!28439 (array!77596) Bool)

(assert (=> start!100408 (and (array_inv!28439 _values!996) e!680537)))

(declare-fun b!1197948 () Bool)

(assert (=> b!1197948 (= e!680535 e!680539)))

(declare-fun res!797346 () Bool)

(assert (=> b!1197948 (=> (not res!797346) (not e!680539))))

(assert (=> b!1197948 (= res!797346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543330 mask!1564))))

(assert (=> b!1197948 (= lt!543330 (array!77595 (store (arr!37439 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37976 _keys!1208)))))

(declare-fun b!1197949 () Bool)

(assert (=> b!1197949 (= e!680540 tp_is_empty!30417)))

(declare-fun b!1197950 () Bool)

(assert (=> b!1197950 (= e!680539 (not e!680538))))

(declare-fun res!797355 () Bool)

(assert (=> b!1197950 (=> res!797355 e!680538)))

(assert (=> b!1197950 (= res!797355 (or (bvsle from!1455 i!673) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37976 _keys!1208))))))

(declare-fun arrayContainsKey!0 (array!77594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197950 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39656 0))(
  ( (Unit!39657) )
))
(declare-fun lt!543329 () Unit!39656)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77594 (_ BitVec 64) (_ BitVec 32)) Unit!39656)

(assert (=> b!1197950 (= lt!543329 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1197951 () Bool)

(declare-fun res!797349 () Bool)

(assert (=> b!1197951 (=> (not res!797349) (not e!680535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197951 (= res!797349 (validMask!0 mask!1564))))

(assert (= (and start!100408 res!797345) b!1197951))

(assert (= (and b!1197951 res!797349) b!1197938))

(assert (= (and b!1197938 res!797350) b!1197940))

(assert (= (and b!1197940 res!797351) b!1197942))

(assert (= (and b!1197942 res!797353) b!1197939))

(assert (= (and b!1197939 res!797347) b!1197947))

(assert (= (and b!1197947 res!797352) b!1197946))

(assert (= (and b!1197946 res!797354) b!1197948))

(assert (= (and b!1197948 res!797346) b!1197945))

(assert (= (and b!1197945 res!797348) b!1197950))

(assert (= (and b!1197950 (not res!797355)) b!1197944))

(assert (= (and b!1197943 condMapEmpty!47465) mapIsEmpty!47465))

(assert (= (and b!1197943 (not condMapEmpty!47465)) mapNonEmpty!47465))

(get-info :version)

(assert (= (and mapNonEmpty!47465 ((_ is ValueCellFull!14499) mapValue!47465)) b!1197949))

(assert (= (and b!1197943 ((_ is ValueCellFull!14499) mapDefault!47465)) b!1197941))

(assert (= start!100408 b!1197943))

(declare-fun b_lambda!20921 () Bool)

(assert (=> (not b_lambda!20921) (not b!1197944)))

(declare-fun t!39211 () Bool)

(declare-fun tb!10533 () Bool)

(assert (=> (and start!100408 (= defaultEntry!1004 defaultEntry!1004) t!39211) tb!10533))

(declare-fun result!21633 () Bool)

(assert (=> tb!10533 (= result!21633 tp_is_empty!30417)))

(assert (=> b!1197944 t!39211))

(declare-fun b_and!42333 () Bool)

(assert (= b_and!42331 (and (=> t!39211 result!21633) b_and!42333)))

(declare-fun m!1104865 () Bool)

(assert (=> start!100408 m!1104865))

(declare-fun m!1104867 () Bool)

(assert (=> start!100408 m!1104867))

(declare-fun m!1104869 () Bool)

(assert (=> b!1197950 m!1104869))

(declare-fun m!1104871 () Bool)

(assert (=> b!1197950 m!1104871))

(declare-fun m!1104873 () Bool)

(assert (=> b!1197946 m!1104873))

(declare-fun m!1104875 () Bool)

(assert (=> b!1197942 m!1104875))

(declare-fun m!1104877 () Bool)

(assert (=> b!1197951 m!1104877))

(declare-fun m!1104879 () Bool)

(assert (=> mapNonEmpty!47465 m!1104879))

(declare-fun m!1104881 () Bool)

(assert (=> b!1197948 m!1104881))

(declare-fun m!1104883 () Bool)

(assert (=> b!1197948 m!1104883))

(declare-fun m!1104885 () Bool)

(assert (=> b!1197940 m!1104885))

(declare-fun m!1104887 () Bool)

(assert (=> b!1197945 m!1104887))

(declare-fun m!1104889 () Bool)

(assert (=> b!1197947 m!1104889))

(declare-fun m!1104891 () Bool)

(assert (=> b!1197944 m!1104891))

(declare-fun m!1104893 () Bool)

(assert (=> b!1197944 m!1104893))

(declare-fun m!1104895 () Bool)

(assert (=> b!1197944 m!1104895))

(declare-fun m!1104897 () Bool)

(assert (=> b!1197944 m!1104897))

(check-sat (not mapNonEmpty!47465) (not b!1197944) (not b!1197948) (not b!1197940) (not b!1197942) (not b!1197945) tp_is_empty!30417 (not b!1197950) (not b!1197951) (not b!1197947) (not b_lambda!20921) (not b_next!25713) (not start!100408) b_and!42333)
(check-sat b_and!42333 (not b_next!25713))
(get-model)

(declare-fun b_lambda!20925 () Bool)

(assert (= b_lambda!20921 (or (and start!100408 b_free!25713) b_lambda!20925)))

(check-sat (not mapNonEmpty!47465) (not b!1197944) (not b!1197948) (not b_next!25713) (not b!1197940) (not b!1197942) (not b_lambda!20925) (not b!1197945) tp_is_empty!30417 (not b!1197950) (not b!1197951) (not b!1197947) (not start!100408) b_and!42333)
(check-sat b_and!42333 (not b_next!25713))
(get-model)

(declare-fun d!132327 () Bool)

(declare-fun res!797393 () Bool)

(declare-fun e!680569 () Bool)

(assert (=> d!132327 (=> res!797393 e!680569)))

(assert (=> d!132327 (= res!797393 (bvsge #b00000000000000000000000000000000 (size!37976 lt!543330)))))

(assert (=> d!132327 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543330 mask!1564) e!680569)))

(declare-fun b!1198006 () Bool)

(declare-fun e!680570 () Bool)

(assert (=> b!1198006 (= e!680569 e!680570)))

(declare-fun c!117364 () Bool)

(assert (=> b!1198006 (= c!117364 (validKeyInArray!0 (select (arr!37439 lt!543330) #b00000000000000000000000000000000)))))

(declare-fun b!1198007 () Bool)

(declare-fun e!680568 () Bool)

(declare-fun call!57271 () Bool)

(assert (=> b!1198007 (= e!680568 call!57271)))

(declare-fun bm!57268 () Bool)

(assert (=> bm!57268 (= call!57271 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!543330 mask!1564))))

(declare-fun b!1198008 () Bool)

(assert (=> b!1198008 (= e!680570 call!57271)))

(declare-fun b!1198009 () Bool)

(assert (=> b!1198009 (= e!680570 e!680568)))

(declare-fun lt!543343 () (_ BitVec 64))

(assert (=> b!1198009 (= lt!543343 (select (arr!37439 lt!543330) #b00000000000000000000000000000000))))

(declare-fun lt!543344 () Unit!39656)

(assert (=> b!1198009 (= lt!543344 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!543330 lt!543343 #b00000000000000000000000000000000))))

(assert (=> b!1198009 (arrayContainsKey!0 lt!543330 lt!543343 #b00000000000000000000000000000000)))

(declare-fun lt!543345 () Unit!39656)

(assert (=> b!1198009 (= lt!543345 lt!543344)))

(declare-fun res!797394 () Bool)

(declare-datatypes ((SeekEntryResult!9929 0))(
  ( (MissingZero!9929 (index!42086 (_ BitVec 32))) (Found!9929 (index!42087 (_ BitVec 32))) (Intermediate!9929 (undefined!10741 Bool) (index!42088 (_ BitVec 32)) (x!105920 (_ BitVec 32))) (Undefined!9929) (MissingVacant!9929 (index!42089 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!77594 (_ BitVec 32)) SeekEntryResult!9929)

(assert (=> b!1198009 (= res!797394 (= (seekEntryOrOpen!0 (select (arr!37439 lt!543330) #b00000000000000000000000000000000) lt!543330 mask!1564) (Found!9929 #b00000000000000000000000000000000)))))

(assert (=> b!1198009 (=> (not res!797394) (not e!680568))))

(assert (= (and d!132327 (not res!797393)) b!1198006))

(assert (= (and b!1198006 c!117364) b!1198009))

(assert (= (and b!1198006 (not c!117364)) b!1198008))

(assert (= (and b!1198009 res!797394) b!1198007))

(assert (= (or b!1198007 b!1198008) bm!57268))

(declare-fun m!1104933 () Bool)

(assert (=> b!1198006 m!1104933))

(assert (=> b!1198006 m!1104933))

(declare-fun m!1104935 () Bool)

(assert (=> b!1198006 m!1104935))

(declare-fun m!1104937 () Bool)

(assert (=> bm!57268 m!1104937))

(assert (=> b!1198009 m!1104933))

(declare-fun m!1104939 () Bool)

(assert (=> b!1198009 m!1104939))

(declare-fun m!1104941 () Bool)

(assert (=> b!1198009 m!1104941))

(assert (=> b!1198009 m!1104933))

(declare-fun m!1104943 () Bool)

(assert (=> b!1198009 m!1104943))

(assert (=> b!1197948 d!132327))

(declare-fun b!1198034 () Bool)

(declare-fun e!680590 () ListLongMap!17655)

(declare-fun call!57274 () ListLongMap!17655)

(assert (=> b!1198034 (= e!680590 call!57274)))

(declare-fun b!1198035 () Bool)

(declare-fun e!680588 () Bool)

(assert (=> b!1198035 (= e!680588 (validKeyInArray!0 (select (arr!37439 lt!543330) from!1455)))))

(assert (=> b!1198035 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun bm!57271 () Bool)

(assert (=> bm!57271 (= call!57274 (getCurrentListMapNoExtraKeys!5256 lt!543330 (array!77597 (store (arr!37440 _values!996) i!673 (ValueCellFull!14499 (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37977 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1198036 () Bool)

(declare-fun e!680587 () ListLongMap!17655)

(assert (=> b!1198036 (= e!680587 (ListLongMap!17656 Nil!26498))))

(declare-fun b!1198037 () Bool)

(declare-fun lt!543361 () Unit!39656)

(declare-fun lt!543364 () Unit!39656)

(assert (=> b!1198037 (= lt!543361 lt!543364)))

(declare-fun lt!543363 () V!45683)

(declare-fun lt!543362 () ListLongMap!17655)

(declare-fun lt!543365 () (_ BitVec 64))

(declare-fun lt!543366 () (_ BitVec 64))

(declare-fun contains!6885 (ListLongMap!17655 (_ BitVec 64)) Bool)

(declare-fun +!3934 (ListLongMap!17655 tuple2!19674) ListLongMap!17655)

(assert (=> b!1198037 (not (contains!6885 (+!3934 lt!543362 (tuple2!19675 lt!543365 lt!543363)) lt!543366))))

(declare-fun addStillNotContains!289 (ListLongMap!17655 (_ BitVec 64) V!45683 (_ BitVec 64)) Unit!39656)

(assert (=> b!1198037 (= lt!543364 (addStillNotContains!289 lt!543362 lt!543365 lt!543363 lt!543366))))

(assert (=> b!1198037 (= lt!543366 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!19152 (ValueCell!14499 V!45683) V!45683)

(assert (=> b!1198037 (= lt!543363 (get!19152 (select (arr!37440 (array!77597 (store (arr!37440 _values!996) i!673 (ValueCellFull!14499 (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37977 _values!996))) from!1455) (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1198037 (= lt!543365 (select (arr!37439 lt!543330) from!1455))))

(assert (=> b!1198037 (= lt!543362 call!57274)))

(assert (=> b!1198037 (= e!680590 (+!3934 call!57274 (tuple2!19675 (select (arr!37439 lt!543330) from!1455) (get!19152 (select (arr!37440 (array!77597 (store (arr!37440 _values!996) i!673 (ValueCellFull!14499 (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37977 _values!996))) from!1455) (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!132329 () Bool)

(declare-fun e!680589 () Bool)

(assert (=> d!132329 e!680589))

(declare-fun res!797404 () Bool)

(assert (=> d!132329 (=> (not res!797404) (not e!680589))))

(declare-fun lt!543360 () ListLongMap!17655)

(assert (=> d!132329 (= res!797404 (not (contains!6885 lt!543360 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132329 (= lt!543360 e!680587)))

(declare-fun c!117376 () Bool)

(assert (=> d!132329 (= c!117376 (bvsge from!1455 (size!37976 lt!543330)))))

(assert (=> d!132329 (validMask!0 mask!1564)))

(assert (=> d!132329 (= (getCurrentListMapNoExtraKeys!5256 lt!543330 (array!77597 (store (arr!37440 _values!996) i!673 (ValueCellFull!14499 (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37977 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!543360)))

(declare-fun b!1198038 () Bool)

(assert (=> b!1198038 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37976 lt!543330)))))

(assert (=> b!1198038 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37977 (array!77597 (store (arr!37440 _values!996) i!673 (ValueCellFull!14499 (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37977 _values!996)))))))

(declare-fun e!680591 () Bool)

(declare-fun apply!994 (ListLongMap!17655 (_ BitVec 64)) V!45683)

(assert (=> b!1198038 (= e!680591 (= (apply!994 lt!543360 (select (arr!37439 lt!543330) from!1455)) (get!19152 (select (arr!37440 (array!77597 (store (arr!37440 _values!996) i!673 (ValueCellFull!14499 (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37977 _values!996))) from!1455) (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1198039 () Bool)

(declare-fun e!680585 () Bool)

(assert (=> b!1198039 (= e!680585 e!680591)))

(assert (=> b!1198039 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37976 lt!543330)))))

(declare-fun res!797403 () Bool)

(assert (=> b!1198039 (= res!797403 (contains!6885 lt!543360 (select (arr!37439 lt!543330) from!1455)))))

(assert (=> b!1198039 (=> (not res!797403) (not e!680591))))

(declare-fun b!1198040 () Bool)

(declare-fun e!680586 () Bool)

(declare-fun isEmpty!982 (ListLongMap!17655) Bool)

(assert (=> b!1198040 (= e!680586 (isEmpty!982 lt!543360))))

(declare-fun b!1198041 () Bool)

(declare-fun res!797405 () Bool)

(assert (=> b!1198041 (=> (not res!797405) (not e!680589))))

(assert (=> b!1198041 (= res!797405 (not (contains!6885 lt!543360 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1198042 () Bool)

(assert (=> b!1198042 (= e!680589 e!680585)))

(declare-fun c!117374 () Bool)

(assert (=> b!1198042 (= c!117374 e!680588)))

(declare-fun res!797406 () Bool)

(assert (=> b!1198042 (=> (not res!797406) (not e!680588))))

(assert (=> b!1198042 (= res!797406 (bvslt from!1455 (size!37976 lt!543330)))))

(declare-fun b!1198043 () Bool)

(assert (=> b!1198043 (= e!680585 e!680586)))

(declare-fun c!117373 () Bool)

(assert (=> b!1198043 (= c!117373 (bvslt from!1455 (size!37976 lt!543330)))))

(declare-fun b!1198044 () Bool)

(assert (=> b!1198044 (= e!680587 e!680590)))

(declare-fun c!117375 () Bool)

(assert (=> b!1198044 (= c!117375 (validKeyInArray!0 (select (arr!37439 lt!543330) from!1455)))))

(declare-fun b!1198045 () Bool)

(assert (=> b!1198045 (= e!680586 (= lt!543360 (getCurrentListMapNoExtraKeys!5256 lt!543330 (array!77597 (store (arr!37440 _values!996) i!673 (ValueCellFull!14499 (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37977 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(assert (= (and d!132329 c!117376) b!1198036))

(assert (= (and d!132329 (not c!117376)) b!1198044))

(assert (= (and b!1198044 c!117375) b!1198037))

(assert (= (and b!1198044 (not c!117375)) b!1198034))

(assert (= (or b!1198037 b!1198034) bm!57271))

(assert (= (and d!132329 res!797404) b!1198041))

(assert (= (and b!1198041 res!797405) b!1198042))

(assert (= (and b!1198042 res!797406) b!1198035))

(assert (= (and b!1198042 c!117374) b!1198039))

(assert (= (and b!1198042 (not c!117374)) b!1198043))

(assert (= (and b!1198039 res!797403) b!1198038))

(assert (= (and b!1198043 c!117373) b!1198045))

(assert (= (and b!1198043 (not c!117373)) b!1198040))

(declare-fun b_lambda!20927 () Bool)

(assert (=> (not b_lambda!20927) (not b!1198037)))

(assert (=> b!1198037 t!39211))

(declare-fun b_and!42339 () Bool)

(assert (= b_and!42333 (and (=> t!39211 result!21633) b_and!42339)))

(declare-fun b_lambda!20929 () Bool)

(assert (=> (not b_lambda!20929) (not b!1198038)))

(assert (=> b!1198038 t!39211))

(declare-fun b_and!42341 () Bool)

(assert (= b_and!42339 (and (=> t!39211 result!21633) b_and!42341)))

(declare-fun m!1104945 () Bool)

(assert (=> b!1198038 m!1104945))

(assert (=> b!1198038 m!1104891))

(assert (=> b!1198038 m!1104945))

(assert (=> b!1198038 m!1104891))

(declare-fun m!1104947 () Bool)

(assert (=> b!1198038 m!1104947))

(declare-fun m!1104949 () Bool)

(assert (=> b!1198038 m!1104949))

(assert (=> b!1198038 m!1104949))

(declare-fun m!1104951 () Bool)

(assert (=> b!1198038 m!1104951))

(assert (=> b!1198039 m!1104949))

(assert (=> b!1198039 m!1104949))

(declare-fun m!1104953 () Bool)

(assert (=> b!1198039 m!1104953))

(assert (=> b!1198035 m!1104949))

(assert (=> b!1198035 m!1104949))

(declare-fun m!1104955 () Bool)

(assert (=> b!1198035 m!1104955))

(declare-fun m!1104957 () Bool)

(assert (=> b!1198041 m!1104957))

(declare-fun m!1104959 () Bool)

(assert (=> b!1198045 m!1104959))

(declare-fun m!1104961 () Bool)

(assert (=> d!132329 m!1104961))

(assert (=> d!132329 m!1104877))

(assert (=> b!1198044 m!1104949))

(assert (=> b!1198044 m!1104949))

(assert (=> b!1198044 m!1104955))

(declare-fun m!1104963 () Bool)

(assert (=> b!1198037 m!1104963))

(assert (=> b!1198037 m!1104945))

(assert (=> b!1198037 m!1104891))

(declare-fun m!1104965 () Bool)

(assert (=> b!1198037 m!1104965))

(declare-fun m!1104967 () Bool)

(assert (=> b!1198037 m!1104967))

(declare-fun m!1104969 () Bool)

(assert (=> b!1198037 m!1104969))

(assert (=> b!1198037 m!1104967))

(assert (=> b!1198037 m!1104945))

(assert (=> b!1198037 m!1104891))

(assert (=> b!1198037 m!1104947))

(assert (=> b!1198037 m!1104949))

(declare-fun m!1104971 () Bool)

(assert (=> b!1198040 m!1104971))

(assert (=> bm!57271 m!1104959))

(assert (=> b!1197944 d!132329))

(declare-fun b!1198046 () Bool)

(declare-fun e!680597 () ListLongMap!17655)

(declare-fun call!57275 () ListLongMap!17655)

(assert (=> b!1198046 (= e!680597 call!57275)))

(declare-fun b!1198047 () Bool)

(declare-fun e!680595 () Bool)

(assert (=> b!1198047 (= e!680595 (validKeyInArray!0 (select (arr!37439 _keys!1208) from!1455)))))

(assert (=> b!1198047 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun bm!57272 () Bool)

(assert (=> bm!57272 (= call!57275 (getCurrentListMapNoExtraKeys!5256 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1198048 () Bool)

(declare-fun e!680594 () ListLongMap!17655)

(assert (=> b!1198048 (= e!680594 (ListLongMap!17656 Nil!26498))))

(declare-fun b!1198049 () Bool)

(declare-fun lt!543368 () Unit!39656)

(declare-fun lt!543371 () Unit!39656)

(assert (=> b!1198049 (= lt!543368 lt!543371)))

(declare-fun lt!543373 () (_ BitVec 64))

(declare-fun lt!543370 () V!45683)

(declare-fun lt!543372 () (_ BitVec 64))

(declare-fun lt!543369 () ListLongMap!17655)

(assert (=> b!1198049 (not (contains!6885 (+!3934 lt!543369 (tuple2!19675 lt!543372 lt!543370)) lt!543373))))

(assert (=> b!1198049 (= lt!543371 (addStillNotContains!289 lt!543369 lt!543372 lt!543370 lt!543373))))

(assert (=> b!1198049 (= lt!543373 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1198049 (= lt!543370 (get!19152 (select (arr!37440 _values!996) from!1455) (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1198049 (= lt!543372 (select (arr!37439 _keys!1208) from!1455))))

(assert (=> b!1198049 (= lt!543369 call!57275)))

(assert (=> b!1198049 (= e!680597 (+!3934 call!57275 (tuple2!19675 (select (arr!37439 _keys!1208) from!1455) (get!19152 (select (arr!37440 _values!996) from!1455) (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!132331 () Bool)

(declare-fun e!680596 () Bool)

(assert (=> d!132331 e!680596))

(declare-fun res!797408 () Bool)

(assert (=> d!132331 (=> (not res!797408) (not e!680596))))

(declare-fun lt!543367 () ListLongMap!17655)

(assert (=> d!132331 (= res!797408 (not (contains!6885 lt!543367 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132331 (= lt!543367 e!680594)))

(declare-fun c!117380 () Bool)

(assert (=> d!132331 (= c!117380 (bvsge from!1455 (size!37976 _keys!1208)))))

(assert (=> d!132331 (validMask!0 mask!1564)))

(assert (=> d!132331 (= (getCurrentListMapNoExtraKeys!5256 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!543367)))

(declare-fun b!1198050 () Bool)

(assert (=> b!1198050 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37976 _keys!1208)))))

(assert (=> b!1198050 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37977 _values!996)))))

(declare-fun e!680598 () Bool)

(assert (=> b!1198050 (= e!680598 (= (apply!994 lt!543367 (select (arr!37439 _keys!1208) from!1455)) (get!19152 (select (arr!37440 _values!996) from!1455) (dynLambda!3192 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1198051 () Bool)

(declare-fun e!680592 () Bool)

(assert (=> b!1198051 (= e!680592 e!680598)))

(assert (=> b!1198051 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!37976 _keys!1208)))))

(declare-fun res!797407 () Bool)

(assert (=> b!1198051 (= res!797407 (contains!6885 lt!543367 (select (arr!37439 _keys!1208) from!1455)))))

(assert (=> b!1198051 (=> (not res!797407) (not e!680598))))

(declare-fun b!1198052 () Bool)

(declare-fun e!680593 () Bool)

(assert (=> b!1198052 (= e!680593 (isEmpty!982 lt!543367))))

(declare-fun b!1198053 () Bool)

(declare-fun res!797409 () Bool)

(assert (=> b!1198053 (=> (not res!797409) (not e!680596))))

(assert (=> b!1198053 (= res!797409 (not (contains!6885 lt!543367 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1198054 () Bool)

(assert (=> b!1198054 (= e!680596 e!680592)))

(declare-fun c!117378 () Bool)

(assert (=> b!1198054 (= c!117378 e!680595)))

(declare-fun res!797410 () Bool)

(assert (=> b!1198054 (=> (not res!797410) (not e!680595))))

(assert (=> b!1198054 (= res!797410 (bvslt from!1455 (size!37976 _keys!1208)))))

(declare-fun b!1198055 () Bool)

(assert (=> b!1198055 (= e!680592 e!680593)))

(declare-fun c!117377 () Bool)

(assert (=> b!1198055 (= c!117377 (bvslt from!1455 (size!37976 _keys!1208)))))

(declare-fun b!1198056 () Bool)

(assert (=> b!1198056 (= e!680594 e!680597)))

(declare-fun c!117379 () Bool)

(assert (=> b!1198056 (= c!117379 (validKeyInArray!0 (select (arr!37439 _keys!1208) from!1455)))))

(declare-fun b!1198057 () Bool)

(assert (=> b!1198057 (= e!680593 (= lt!543367 (getCurrentListMapNoExtraKeys!5256 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(assert (= (and d!132331 c!117380) b!1198048))

(assert (= (and d!132331 (not c!117380)) b!1198056))

(assert (= (and b!1198056 c!117379) b!1198049))

(assert (= (and b!1198056 (not c!117379)) b!1198046))

(assert (= (or b!1198049 b!1198046) bm!57272))

(assert (= (and d!132331 res!797408) b!1198053))

(assert (= (and b!1198053 res!797409) b!1198054))

(assert (= (and b!1198054 res!797410) b!1198047))

(assert (= (and b!1198054 c!117378) b!1198051))

(assert (= (and b!1198054 (not c!117378)) b!1198055))

(assert (= (and b!1198051 res!797407) b!1198050))

(assert (= (and b!1198055 c!117377) b!1198057))

(assert (= (and b!1198055 (not c!117377)) b!1198052))

(declare-fun b_lambda!20931 () Bool)

(assert (=> (not b_lambda!20931) (not b!1198049)))

(assert (=> b!1198049 t!39211))

(declare-fun b_and!42343 () Bool)

(assert (= b_and!42341 (and (=> t!39211 result!21633) b_and!42343)))

(declare-fun b_lambda!20933 () Bool)

(assert (=> (not b_lambda!20933) (not b!1198050)))

(assert (=> b!1198050 t!39211))

(declare-fun b_and!42345 () Bool)

(assert (= b_and!42343 (and (=> t!39211 result!21633) b_and!42345)))

(declare-fun m!1104973 () Bool)

(assert (=> b!1198050 m!1104973))

(assert (=> b!1198050 m!1104891))

(assert (=> b!1198050 m!1104973))

(assert (=> b!1198050 m!1104891))

(declare-fun m!1104975 () Bool)

(assert (=> b!1198050 m!1104975))

(declare-fun m!1104977 () Bool)

(assert (=> b!1198050 m!1104977))

(assert (=> b!1198050 m!1104977))

(declare-fun m!1104979 () Bool)

(assert (=> b!1198050 m!1104979))

(assert (=> b!1198051 m!1104977))

(assert (=> b!1198051 m!1104977))

(declare-fun m!1104981 () Bool)

(assert (=> b!1198051 m!1104981))

(assert (=> b!1198047 m!1104977))

(assert (=> b!1198047 m!1104977))

(declare-fun m!1104983 () Bool)

(assert (=> b!1198047 m!1104983))

(declare-fun m!1104985 () Bool)

(assert (=> b!1198053 m!1104985))

(declare-fun m!1104987 () Bool)

(assert (=> b!1198057 m!1104987))

(declare-fun m!1104989 () Bool)

(assert (=> d!132331 m!1104989))

(assert (=> d!132331 m!1104877))

(assert (=> b!1198056 m!1104977))

(assert (=> b!1198056 m!1104977))

(assert (=> b!1198056 m!1104983))

(declare-fun m!1104991 () Bool)

(assert (=> b!1198049 m!1104991))

(assert (=> b!1198049 m!1104973))

(assert (=> b!1198049 m!1104891))

(declare-fun m!1104993 () Bool)

(assert (=> b!1198049 m!1104993))

(declare-fun m!1104995 () Bool)

(assert (=> b!1198049 m!1104995))

(declare-fun m!1104997 () Bool)

(assert (=> b!1198049 m!1104997))

(assert (=> b!1198049 m!1104995))

(assert (=> b!1198049 m!1104973))

(assert (=> b!1198049 m!1104891))

(assert (=> b!1198049 m!1104975))

(assert (=> b!1198049 m!1104977))

(declare-fun m!1104999 () Bool)

(assert (=> b!1198052 m!1104999))

(assert (=> bm!57272 m!1104987))

(assert (=> b!1197944 d!132331))

(declare-fun d!132333 () Bool)

(assert (=> d!132333 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1197947 d!132333))

(declare-fun b!1198068 () Bool)

(declare-fun e!680607 () Bool)

(declare-fun call!57278 () Bool)

(assert (=> b!1198068 (= e!680607 call!57278)))

(declare-fun b!1198069 () Bool)

(declare-fun e!680610 () Bool)

(declare-fun contains!6886 (List!26500 (_ BitVec 64)) Bool)

(assert (=> b!1198069 (= e!680610 (contains!6886 Nil!26497 (select (arr!37439 lt!543330) #b00000000000000000000000000000000)))))

(declare-fun b!1198070 () Bool)

(declare-fun e!680608 () Bool)

(assert (=> b!1198070 (= e!680608 e!680607)))

(declare-fun c!117383 () Bool)

(assert (=> b!1198070 (= c!117383 (validKeyInArray!0 (select (arr!37439 lt!543330) #b00000000000000000000000000000000)))))

(declare-fun bm!57275 () Bool)

(assert (=> bm!57275 (= call!57278 (arrayNoDuplicates!0 lt!543330 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117383 (Cons!26496 (select (arr!37439 lt!543330) #b00000000000000000000000000000000) Nil!26497) Nil!26497)))))

(declare-fun b!1198071 () Bool)

(assert (=> b!1198071 (= e!680607 call!57278)))

(declare-fun b!1198072 () Bool)

(declare-fun e!680609 () Bool)

(assert (=> b!1198072 (= e!680609 e!680608)))

(declare-fun res!797418 () Bool)

(assert (=> b!1198072 (=> (not res!797418) (not e!680608))))

(assert (=> b!1198072 (= res!797418 (not e!680610))))

(declare-fun res!797419 () Bool)

(assert (=> b!1198072 (=> (not res!797419) (not e!680610))))

(assert (=> b!1198072 (= res!797419 (validKeyInArray!0 (select (arr!37439 lt!543330) #b00000000000000000000000000000000)))))

(declare-fun d!132335 () Bool)

(declare-fun res!797417 () Bool)

(assert (=> d!132335 (=> res!797417 e!680609)))

(assert (=> d!132335 (= res!797417 (bvsge #b00000000000000000000000000000000 (size!37976 lt!543330)))))

(assert (=> d!132335 (= (arrayNoDuplicates!0 lt!543330 #b00000000000000000000000000000000 Nil!26497) e!680609)))

(assert (= (and d!132335 (not res!797417)) b!1198072))

(assert (= (and b!1198072 res!797419) b!1198069))

(assert (= (and b!1198072 res!797418) b!1198070))

(assert (= (and b!1198070 c!117383) b!1198068))

(assert (= (and b!1198070 (not c!117383)) b!1198071))

(assert (= (or b!1198068 b!1198071) bm!57275))

(assert (=> b!1198069 m!1104933))

(assert (=> b!1198069 m!1104933))

(declare-fun m!1105001 () Bool)

(assert (=> b!1198069 m!1105001))

(assert (=> b!1198070 m!1104933))

(assert (=> b!1198070 m!1104933))

(assert (=> b!1198070 m!1104935))

(assert (=> bm!57275 m!1104933))

(declare-fun m!1105003 () Bool)

(assert (=> bm!57275 m!1105003))

(assert (=> b!1198072 m!1104933))

(assert (=> b!1198072 m!1104933))

(assert (=> b!1198072 m!1104935))

(assert (=> b!1197945 d!132335))

(declare-fun d!132337 () Bool)

(declare-fun res!797420 () Bool)

(declare-fun e!680612 () Bool)

(assert (=> d!132337 (=> res!797420 e!680612)))

(assert (=> d!132337 (= res!797420 (bvsge #b00000000000000000000000000000000 (size!37976 _keys!1208)))))

(assert (=> d!132337 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!680612)))

(declare-fun b!1198073 () Bool)

(declare-fun e!680613 () Bool)

(assert (=> b!1198073 (= e!680612 e!680613)))

(declare-fun c!117384 () Bool)

(assert (=> b!1198073 (= c!117384 (validKeyInArray!0 (select (arr!37439 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1198074 () Bool)

(declare-fun e!680611 () Bool)

(declare-fun call!57279 () Bool)

(assert (=> b!1198074 (= e!680611 call!57279)))

(declare-fun bm!57276 () Bool)

(assert (=> bm!57276 (= call!57279 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1198075 () Bool)

(assert (=> b!1198075 (= e!680613 call!57279)))

(declare-fun b!1198076 () Bool)

(assert (=> b!1198076 (= e!680613 e!680611)))

(declare-fun lt!543374 () (_ BitVec 64))

(assert (=> b!1198076 (= lt!543374 (select (arr!37439 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!543375 () Unit!39656)

(assert (=> b!1198076 (= lt!543375 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!543374 #b00000000000000000000000000000000))))

(assert (=> b!1198076 (arrayContainsKey!0 _keys!1208 lt!543374 #b00000000000000000000000000000000)))

(declare-fun lt!543376 () Unit!39656)

(assert (=> b!1198076 (= lt!543376 lt!543375)))

(declare-fun res!797421 () Bool)

(assert (=> b!1198076 (= res!797421 (= (seekEntryOrOpen!0 (select (arr!37439 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9929 #b00000000000000000000000000000000)))))

(assert (=> b!1198076 (=> (not res!797421) (not e!680611))))

(assert (= (and d!132337 (not res!797420)) b!1198073))

(assert (= (and b!1198073 c!117384) b!1198076))

(assert (= (and b!1198073 (not c!117384)) b!1198075))

(assert (= (and b!1198076 res!797421) b!1198074))

(assert (= (or b!1198074 b!1198075) bm!57276))

(declare-fun m!1105005 () Bool)

(assert (=> b!1198073 m!1105005))

(assert (=> b!1198073 m!1105005))

(declare-fun m!1105007 () Bool)

(assert (=> b!1198073 m!1105007))

(declare-fun m!1105009 () Bool)

(assert (=> bm!57276 m!1105009))

(assert (=> b!1198076 m!1105005))

(declare-fun m!1105011 () Bool)

(assert (=> b!1198076 m!1105011))

(declare-fun m!1105013 () Bool)

(assert (=> b!1198076 m!1105013))

(assert (=> b!1198076 m!1105005))

(declare-fun m!1105015 () Bool)

(assert (=> b!1198076 m!1105015))

(assert (=> b!1197940 d!132337))

(declare-fun b!1198077 () Bool)

(declare-fun e!680614 () Bool)

(declare-fun call!57280 () Bool)

(assert (=> b!1198077 (= e!680614 call!57280)))

(declare-fun b!1198078 () Bool)

(declare-fun e!680617 () Bool)

(assert (=> b!1198078 (= e!680617 (contains!6886 Nil!26497 (select (arr!37439 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1198079 () Bool)

(declare-fun e!680615 () Bool)

(assert (=> b!1198079 (= e!680615 e!680614)))

(declare-fun c!117385 () Bool)

(assert (=> b!1198079 (= c!117385 (validKeyInArray!0 (select (arr!37439 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!57277 () Bool)

(assert (=> bm!57277 (= call!57280 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117385 (Cons!26496 (select (arr!37439 _keys!1208) #b00000000000000000000000000000000) Nil!26497) Nil!26497)))))

(declare-fun b!1198080 () Bool)

(assert (=> b!1198080 (= e!680614 call!57280)))

(declare-fun b!1198081 () Bool)

(declare-fun e!680616 () Bool)

(assert (=> b!1198081 (= e!680616 e!680615)))

(declare-fun res!797423 () Bool)

(assert (=> b!1198081 (=> (not res!797423) (not e!680615))))

(assert (=> b!1198081 (= res!797423 (not e!680617))))

(declare-fun res!797424 () Bool)

(assert (=> b!1198081 (=> (not res!797424) (not e!680617))))

(assert (=> b!1198081 (= res!797424 (validKeyInArray!0 (select (arr!37439 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!132339 () Bool)

(declare-fun res!797422 () Bool)

(assert (=> d!132339 (=> res!797422 e!680616)))

(assert (=> d!132339 (= res!797422 (bvsge #b00000000000000000000000000000000 (size!37976 _keys!1208)))))

(assert (=> d!132339 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26497) e!680616)))

(assert (= (and d!132339 (not res!797422)) b!1198081))

(assert (= (and b!1198081 res!797424) b!1198078))

(assert (= (and b!1198081 res!797423) b!1198079))

(assert (= (and b!1198079 c!117385) b!1198077))

(assert (= (and b!1198079 (not c!117385)) b!1198080))

(assert (= (or b!1198077 b!1198080) bm!57277))

(assert (=> b!1198078 m!1105005))

(assert (=> b!1198078 m!1105005))

(declare-fun m!1105017 () Bool)

(assert (=> b!1198078 m!1105017))

(assert (=> b!1198079 m!1105005))

(assert (=> b!1198079 m!1105005))

(assert (=> b!1198079 m!1105007))

(assert (=> bm!57277 m!1105005))

(declare-fun m!1105019 () Bool)

(assert (=> bm!57277 m!1105019))

(assert (=> b!1198081 m!1105005))

(assert (=> b!1198081 m!1105005))

(assert (=> b!1198081 m!1105007))

(assert (=> b!1197942 d!132339))

(declare-fun d!132341 () Bool)

(assert (=> d!132341 (= (array_inv!28438 _keys!1208) (bvsge (size!37976 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100408 d!132341))

(declare-fun d!132343 () Bool)

(assert (=> d!132343 (= (array_inv!28439 _values!996) (bvsge (size!37977 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100408 d!132343))

(declare-fun d!132345 () Bool)

(declare-fun res!797429 () Bool)

(declare-fun e!680622 () Bool)

(assert (=> d!132345 (=> res!797429 e!680622)))

(assert (=> d!132345 (= res!797429 (= (select (arr!37439 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!132345 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!680622)))

(declare-fun b!1198086 () Bool)

(declare-fun e!680623 () Bool)

(assert (=> b!1198086 (= e!680622 e!680623)))

(declare-fun res!797430 () Bool)

(assert (=> b!1198086 (=> (not res!797430) (not e!680623))))

(assert (=> b!1198086 (= res!797430 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!37976 _keys!1208)))))

(declare-fun b!1198087 () Bool)

(assert (=> b!1198087 (= e!680623 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132345 (not res!797429)) b!1198086))

(assert (= (and b!1198086 res!797430) b!1198087))

(assert (=> d!132345 m!1105005))

(declare-fun m!1105021 () Bool)

(assert (=> b!1198087 m!1105021))

(assert (=> b!1197950 d!132345))

(declare-fun d!132347 () Bool)

(assert (=> d!132347 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!543379 () Unit!39656)

(declare-fun choose!13 (array!77594 (_ BitVec 64) (_ BitVec 32)) Unit!39656)

(assert (=> d!132347 (= lt!543379 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!132347 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!132347 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!543379)))

(declare-fun bs!33958 () Bool)

(assert (= bs!33958 d!132347))

(assert (=> bs!33958 m!1104869))

(declare-fun m!1105023 () Bool)

(assert (=> bs!33958 m!1105023))

(assert (=> b!1197950 d!132347))

(declare-fun d!132349 () Bool)

(assert (=> d!132349 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1197951 d!132349))

(declare-fun mapNonEmpty!47471 () Bool)

(declare-fun mapRes!47471 () Bool)

(declare-fun tp!90136 () Bool)

(declare-fun e!680628 () Bool)

(assert (=> mapNonEmpty!47471 (= mapRes!47471 (and tp!90136 e!680628))))

(declare-fun mapKey!47471 () (_ BitVec 32))

(declare-fun mapRest!47471 () (Array (_ BitVec 32) ValueCell!14499))

(declare-fun mapValue!47471 () ValueCell!14499)

(assert (=> mapNonEmpty!47471 (= mapRest!47465 (store mapRest!47471 mapKey!47471 mapValue!47471))))

(declare-fun mapIsEmpty!47471 () Bool)

(assert (=> mapIsEmpty!47471 mapRes!47471))

(declare-fun condMapEmpty!47471 () Bool)

(declare-fun mapDefault!47471 () ValueCell!14499)

(assert (=> mapNonEmpty!47465 (= condMapEmpty!47471 (= mapRest!47465 ((as const (Array (_ BitVec 32) ValueCell!14499)) mapDefault!47471)))))

(declare-fun e!680629 () Bool)

(assert (=> mapNonEmpty!47465 (= tp!90126 (and e!680629 mapRes!47471))))

(declare-fun b!1198094 () Bool)

(assert (=> b!1198094 (= e!680628 tp_is_empty!30417)))

(declare-fun b!1198095 () Bool)

(assert (=> b!1198095 (= e!680629 tp_is_empty!30417)))

(assert (= (and mapNonEmpty!47465 condMapEmpty!47471) mapIsEmpty!47471))

(assert (= (and mapNonEmpty!47465 (not condMapEmpty!47471)) mapNonEmpty!47471))

(assert (= (and mapNonEmpty!47471 ((_ is ValueCellFull!14499) mapValue!47471)) b!1198094))

(assert (= (and mapNonEmpty!47465 ((_ is ValueCellFull!14499) mapDefault!47471)) b!1198095))

(declare-fun m!1105025 () Bool)

(assert (=> mapNonEmpty!47471 m!1105025))

(declare-fun b_lambda!20935 () Bool)

(assert (= b_lambda!20929 (or (and start!100408 b_free!25713) b_lambda!20935)))

(declare-fun b_lambda!20937 () Bool)

(assert (= b_lambda!20933 (or (and start!100408 b_free!25713) b_lambda!20937)))

(declare-fun b_lambda!20939 () Bool)

(assert (= b_lambda!20927 (or (and start!100408 b_free!25713) b_lambda!20939)))

(declare-fun b_lambda!20941 () Bool)

(assert (= b_lambda!20931 (or (and start!100408 b_free!25713) b_lambda!20941)))

(check-sat (not bm!57272) (not mapNonEmpty!47471) (not b!1198041) (not b_lambda!20935) (not b_lambda!20925) (not b!1198050) (not b!1198073) (not b!1198056) (not b!1198079) (not b!1198035) (not d!132331) (not b!1198087) (not b!1198047) (not b_lambda!20939) (not b!1198078) (not b!1198037) (not b!1198009) (not b!1198069) (not b!1198072) (not b_next!25713) (not b!1198057) (not bm!57275) (not b!1198038) (not b_lambda!20937) (not b!1198052) (not b!1198053) (not b!1198039) (not b!1198044) tp_is_empty!30417 (not b!1198045) b_and!42345 (not d!132347) (not bm!57268) (not b_lambda!20941) (not b!1198076) (not bm!57276) (not bm!57277) (not b!1198006) (not d!132329) (not b!1198070) (not b!1198081) (not b!1198051) (not b!1198049) (not b!1198040) (not bm!57271))
(check-sat b_and!42345 (not b_next!25713))
