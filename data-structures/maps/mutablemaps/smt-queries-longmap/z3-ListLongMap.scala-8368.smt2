; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101828 () Bool)

(assert start!101828)

(declare-fun b_free!26481 () Bool)

(declare-fun b_next!26481 () Bool)

(assert (=> start!101828 (= b_free!26481 (not b_next!26481))))

(declare-fun tp!92489 () Bool)

(declare-fun b_and!44233 () Bool)

(assert (=> start!101828 (= tp!92489 b_and!44233)))

(declare-fun b!1226106 () Bool)

(declare-fun e!696393 () Bool)

(declare-fun e!696395 () Bool)

(assert (=> b!1226106 (= e!696393 e!696395)))

(declare-fun res!814967 () Bool)

(assert (=> b!1226106 (=> res!814967 e!696395)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1226106 (= res!814967 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46707 0))(
  ( (V!46708 (val!15649 Int)) )
))
(declare-fun zeroValue!944 () V!46707)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!79128 0))(
  ( (array!79129 (arr!38187 (Array (_ BitVec 32) (_ BitVec 64))) (size!38724 (_ BitVec 32))) )
))
(declare-fun lt!558666 () array!79128)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14883 0))(
  ( (ValueCellFull!14883 (v!18312 V!46707)) (EmptyCell!14883) )
))
(declare-datatypes ((array!79130 0))(
  ( (array!79131 (arr!38188 (Array (_ BitVec 32) ValueCell!14883)) (size!38725 (_ BitVec 32))) )
))
(declare-fun lt!558665 () array!79130)

(declare-datatypes ((tuple2!20326 0))(
  ( (tuple2!20327 (_1!10173 (_ BitVec 64)) (_2!10173 V!46707)) )
))
(declare-datatypes ((List!27138 0))(
  ( (Nil!27135) (Cons!27134 (h!28343 tuple2!20326) (t!40606 List!27138)) )
))
(declare-datatypes ((ListLongMap!18307 0))(
  ( (ListLongMap!18308 (toList!9169 List!27138)) )
))
(declare-fun lt!558663 () ListLongMap!18307)

(declare-fun minValue!944 () V!46707)

(declare-fun getCurrentListMapNoExtraKeys!5565 (array!79128 array!79130 (_ BitVec 32) (_ BitVec 32) V!46707 V!46707 (_ BitVec 32) Int) ListLongMap!18307)

(assert (=> b!1226106 (= lt!558663 (getCurrentListMapNoExtraKeys!5565 lt!558666 lt!558665 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!79130)

(declare-fun dynLambda!3458 (Int (_ BitVec 64)) V!46707)

(assert (=> b!1226106 (= lt!558665 (array!79131 (store (arr!38188 _values!996) i!673 (ValueCellFull!14883 (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38725 _values!996)))))

(declare-fun lt!558664 () ListLongMap!18307)

(declare-fun _keys!1208 () array!79128)

(assert (=> b!1226106 (= lt!558664 (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1226107 () Bool)

(declare-fun res!814975 () Bool)

(declare-fun e!696396 () Bool)

(assert (=> b!1226107 (=> (not res!814975) (not e!696396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79128 (_ BitVec 32)) Bool)

(assert (=> b!1226107 (= res!814975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1226108 () Bool)

(declare-fun e!696399 () Bool)

(assert (=> b!1226108 (= e!696399 (not e!696393))))

(declare-fun res!814974 () Bool)

(assert (=> b!1226108 (=> res!814974 e!696393)))

(assert (=> b!1226108 (= res!814974 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226108 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40584 0))(
  ( (Unit!40585) )
))
(declare-fun lt!558662 () Unit!40584)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79128 (_ BitVec 64) (_ BitVec 32)) Unit!40584)

(assert (=> b!1226108 (= lt!558662 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1226109 () Bool)

(declare-fun res!814968 () Bool)

(assert (=> b!1226109 (=> (not res!814968) (not e!696399))))

(declare-datatypes ((List!27139 0))(
  ( (Nil!27136) (Cons!27135 (h!28344 (_ BitVec 64)) (t!40607 List!27139)) )
))
(declare-fun arrayNoDuplicates!0 (array!79128 (_ BitVec 32) List!27139) Bool)

(assert (=> b!1226109 (= res!814968 (arrayNoDuplicates!0 lt!558666 #b00000000000000000000000000000000 Nil!27136))))

(declare-fun mapIsEmpty!48676 () Bool)

(declare-fun mapRes!48676 () Bool)

(assert (=> mapIsEmpty!48676 mapRes!48676))

(declare-fun b!1226110 () Bool)

(declare-fun e!696398 () Bool)

(declare-fun e!696394 () Bool)

(assert (=> b!1226110 (= e!696398 (and e!696394 mapRes!48676))))

(declare-fun condMapEmpty!48676 () Bool)

(declare-fun mapDefault!48676 () ValueCell!14883)

(assert (=> b!1226110 (= condMapEmpty!48676 (= (arr!38188 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14883)) mapDefault!48676)))))

(declare-fun b!1226111 () Bool)

(assert (=> b!1226111 (= e!696396 e!696399)))

(declare-fun res!814966 () Bool)

(assert (=> b!1226111 (=> (not res!814966) (not e!696399))))

(assert (=> b!1226111 (= res!814966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558666 mask!1564))))

(assert (=> b!1226111 (= lt!558666 (array!79129 (store (arr!38187 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38724 _keys!1208)))))

(declare-fun mapNonEmpty!48676 () Bool)

(declare-fun tp!92490 () Bool)

(declare-fun e!696391 () Bool)

(assert (=> mapNonEmpty!48676 (= mapRes!48676 (and tp!92490 e!696391))))

(declare-fun mapRest!48676 () (Array (_ BitVec 32) ValueCell!14883))

(declare-fun mapKey!48676 () (_ BitVec 32))

(declare-fun mapValue!48676 () ValueCell!14883)

(assert (=> mapNonEmpty!48676 (= (arr!38188 _values!996) (store mapRest!48676 mapKey!48676 mapValue!48676))))

(declare-fun res!814977 () Bool)

(assert (=> start!101828 (=> (not res!814977) (not e!696396))))

(assert (=> start!101828 (= res!814977 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38724 _keys!1208))))))

(assert (=> start!101828 e!696396))

(declare-fun tp_is_empty!31185 () Bool)

(assert (=> start!101828 tp_is_empty!31185))

(declare-fun array_inv!28964 (array!79128) Bool)

(assert (=> start!101828 (array_inv!28964 _keys!1208)))

(assert (=> start!101828 true))

(assert (=> start!101828 tp!92489))

(declare-fun array_inv!28965 (array!79130) Bool)

(assert (=> start!101828 (and (array_inv!28965 _values!996) e!696398)))

(declare-fun b!1226112 () Bool)

(declare-fun res!814971 () Bool)

(assert (=> b!1226112 (=> (not res!814971) (not e!696396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226112 (= res!814971 (validKeyInArray!0 k0!934))))

(declare-fun b!1226113 () Bool)

(assert (=> b!1226113 (= e!696394 tp_is_empty!31185)))

(declare-fun b!1226114 () Bool)

(declare-fun e!696392 () Bool)

(assert (=> b!1226114 (= e!696395 e!696392)))

(declare-fun res!814973 () Bool)

(assert (=> b!1226114 (=> res!814973 e!696392)))

(assert (=> b!1226114 (= res!814973 (validKeyInArray!0 (select (arr!38187 _keys!1208) from!1455)))))

(declare-fun -!2004 (ListLongMap!18307 (_ BitVec 64)) ListLongMap!18307)

(assert (=> b!1226114 (= (getCurrentListMapNoExtraKeys!5565 lt!558666 lt!558665 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!2004 (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!558667 () Unit!40584)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1204 (array!79128 array!79130 (_ BitVec 32) (_ BitVec 32) V!46707 V!46707 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40584)

(assert (=> b!1226114 (= lt!558667 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1204 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1226115 () Bool)

(declare-fun res!814969 () Bool)

(assert (=> b!1226115 (=> (not res!814969) (not e!696396))))

(assert (=> b!1226115 (= res!814969 (= (select (arr!38187 _keys!1208) i!673) k0!934))))

(declare-fun b!1226116 () Bool)

(declare-fun res!814970 () Bool)

(assert (=> b!1226116 (=> (not res!814970) (not e!696396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1226116 (= res!814970 (validMask!0 mask!1564))))

(declare-fun b!1226117 () Bool)

(assert (=> b!1226117 (= e!696392 (= lt!558663 (-!2004 lt!558664 k0!934)))))

(declare-fun b!1226118 () Bool)

(declare-fun res!814976 () Bool)

(assert (=> b!1226118 (=> (not res!814976) (not e!696396))))

(assert (=> b!1226118 (= res!814976 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38724 _keys!1208))))))

(declare-fun b!1226119 () Bool)

(assert (=> b!1226119 (= e!696391 tp_is_empty!31185)))

(declare-fun b!1226120 () Bool)

(declare-fun res!814972 () Bool)

(assert (=> b!1226120 (=> (not res!814972) (not e!696396))))

(assert (=> b!1226120 (= res!814972 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27136))))

(declare-fun b!1226121 () Bool)

(declare-fun res!814965 () Bool)

(assert (=> b!1226121 (=> (not res!814965) (not e!696396))))

(assert (=> b!1226121 (= res!814965 (and (= (size!38725 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38724 _keys!1208) (size!38725 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!101828 res!814977) b!1226116))

(assert (= (and b!1226116 res!814970) b!1226121))

(assert (= (and b!1226121 res!814965) b!1226107))

(assert (= (and b!1226107 res!814975) b!1226120))

(assert (= (and b!1226120 res!814972) b!1226118))

(assert (= (and b!1226118 res!814976) b!1226112))

(assert (= (and b!1226112 res!814971) b!1226115))

(assert (= (and b!1226115 res!814969) b!1226111))

(assert (= (and b!1226111 res!814966) b!1226109))

(assert (= (and b!1226109 res!814968) b!1226108))

(assert (= (and b!1226108 (not res!814974)) b!1226106))

(assert (= (and b!1226106 (not res!814967)) b!1226114))

(assert (= (and b!1226114 (not res!814973)) b!1226117))

(assert (= (and b!1226110 condMapEmpty!48676) mapIsEmpty!48676))

(assert (= (and b!1226110 (not condMapEmpty!48676)) mapNonEmpty!48676))

(get-info :version)

(assert (= (and mapNonEmpty!48676 ((_ is ValueCellFull!14883) mapValue!48676)) b!1226119))

(assert (= (and b!1226110 ((_ is ValueCellFull!14883) mapDefault!48676)) b!1226113))

(assert (= start!101828 b!1226110))

(declare-fun b_lambda!22471 () Bool)

(assert (=> (not b_lambda!22471) (not b!1226106)))

(declare-fun t!40605 () Bool)

(declare-fun tb!11289 () Bool)

(assert (=> (and start!101828 (= defaultEntry!1004 defaultEntry!1004) t!40605) tb!11289))

(declare-fun result!23183 () Bool)

(assert (=> tb!11289 (= result!23183 tp_is_empty!31185)))

(assert (=> b!1226106 t!40605))

(declare-fun b_and!44235 () Bool)

(assert (= b_and!44233 (and (=> t!40605 result!23183) b_and!44235)))

(declare-fun m!1131223 () Bool)

(assert (=> b!1226109 m!1131223))

(declare-fun m!1131225 () Bool)

(assert (=> b!1226107 m!1131225))

(declare-fun m!1131227 () Bool)

(assert (=> start!101828 m!1131227))

(declare-fun m!1131229 () Bool)

(assert (=> start!101828 m!1131229))

(declare-fun m!1131231 () Bool)

(assert (=> b!1226115 m!1131231))

(declare-fun m!1131233 () Bool)

(assert (=> b!1226117 m!1131233))

(declare-fun m!1131235 () Bool)

(assert (=> b!1226112 m!1131235))

(declare-fun m!1131237 () Bool)

(assert (=> b!1226116 m!1131237))

(declare-fun m!1131239 () Bool)

(assert (=> b!1226108 m!1131239))

(declare-fun m!1131241 () Bool)

(assert (=> b!1226108 m!1131241))

(declare-fun m!1131243 () Bool)

(assert (=> b!1226111 m!1131243))

(declare-fun m!1131245 () Bool)

(assert (=> b!1226111 m!1131245))

(declare-fun m!1131247 () Bool)

(assert (=> b!1226106 m!1131247))

(declare-fun m!1131249 () Bool)

(assert (=> b!1226106 m!1131249))

(declare-fun m!1131251 () Bool)

(assert (=> b!1226106 m!1131251))

(declare-fun m!1131253 () Bool)

(assert (=> b!1226106 m!1131253))

(declare-fun m!1131255 () Bool)

(assert (=> b!1226114 m!1131255))

(declare-fun m!1131257 () Bool)

(assert (=> b!1226114 m!1131257))

(assert (=> b!1226114 m!1131255))

(declare-fun m!1131259 () Bool)

(assert (=> b!1226114 m!1131259))

(declare-fun m!1131261 () Bool)

(assert (=> b!1226114 m!1131261))

(declare-fun m!1131263 () Bool)

(assert (=> b!1226114 m!1131263))

(declare-fun m!1131265 () Bool)

(assert (=> b!1226114 m!1131265))

(assert (=> b!1226114 m!1131263))

(declare-fun m!1131267 () Bool)

(assert (=> mapNonEmpty!48676 m!1131267))

(declare-fun m!1131269 () Bool)

(assert (=> b!1226120 m!1131269))

(check-sat (not b_lambda!22471) (not b!1226120) (not start!101828) (not mapNonEmpty!48676) (not b!1226109) (not b!1226116) tp_is_empty!31185 b_and!44235 (not b!1226108) (not b!1226117) (not b_next!26481) (not b!1226107) (not b!1226112) (not b!1226114) (not b!1226111) (not b!1226106))
(check-sat b_and!44235 (not b_next!26481))
(get-model)

(declare-fun b_lambda!22475 () Bool)

(assert (= b_lambda!22471 (or (and start!101828 b_free!26481) b_lambda!22475)))

(check-sat (not b!1226120) (not start!101828) (not mapNonEmpty!48676) (not b!1226109) (not b!1226116) tp_is_empty!31185 b_and!44235 (not b!1226108) (not b_lambda!22475) (not b!1226117) (not b_next!26481) (not b!1226107) (not b!1226112) (not b!1226114) (not b!1226111) (not b!1226106))
(check-sat b_and!44235 (not b_next!26481))
(get-model)

(declare-fun d!133931 () Bool)

(declare-fun res!815024 () Bool)

(declare-fun e!696435 () Bool)

(assert (=> d!133931 (=> res!815024 e!696435)))

(assert (=> d!133931 (= res!815024 (bvsge #b00000000000000000000000000000000 (size!38724 _keys!1208)))))

(assert (=> d!133931 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27136) e!696435)))

(declare-fun b!1226184 () Bool)

(declare-fun e!696437 () Bool)

(declare-fun call!60771 () Bool)

(assert (=> b!1226184 (= e!696437 call!60771)))

(declare-fun b!1226185 () Bool)

(declare-fun e!696438 () Bool)

(assert (=> b!1226185 (= e!696438 e!696437)))

(declare-fun c!120447 () Bool)

(assert (=> b!1226185 (= c!120447 (validKeyInArray!0 (select (arr!38187 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1226186 () Bool)

(declare-fun e!696436 () Bool)

(declare-fun contains!7054 (List!27139 (_ BitVec 64)) Bool)

(assert (=> b!1226186 (= e!696436 (contains!7054 Nil!27136 (select (arr!38187 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1226187 () Bool)

(assert (=> b!1226187 (= e!696437 call!60771)))

(declare-fun bm!60768 () Bool)

(assert (=> bm!60768 (= call!60771 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120447 (Cons!27135 (select (arr!38187 _keys!1208) #b00000000000000000000000000000000) Nil!27136) Nil!27136)))))

(declare-fun b!1226188 () Bool)

(assert (=> b!1226188 (= e!696435 e!696438)))

(declare-fun res!815025 () Bool)

(assert (=> b!1226188 (=> (not res!815025) (not e!696438))))

(assert (=> b!1226188 (= res!815025 (not e!696436))))

(declare-fun res!815023 () Bool)

(assert (=> b!1226188 (=> (not res!815023) (not e!696436))))

(assert (=> b!1226188 (= res!815023 (validKeyInArray!0 (select (arr!38187 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!133931 (not res!815024)) b!1226188))

(assert (= (and b!1226188 res!815023) b!1226186))

(assert (= (and b!1226188 res!815025) b!1226185))

(assert (= (and b!1226185 c!120447) b!1226184))

(assert (= (and b!1226185 (not c!120447)) b!1226187))

(assert (= (or b!1226184 b!1226187) bm!60768))

(declare-fun m!1131319 () Bool)

(assert (=> b!1226185 m!1131319))

(assert (=> b!1226185 m!1131319))

(declare-fun m!1131321 () Bool)

(assert (=> b!1226185 m!1131321))

(assert (=> b!1226186 m!1131319))

(assert (=> b!1226186 m!1131319))

(declare-fun m!1131323 () Bool)

(assert (=> b!1226186 m!1131323))

(assert (=> bm!60768 m!1131319))

(declare-fun m!1131325 () Bool)

(assert (=> bm!60768 m!1131325))

(assert (=> b!1226188 m!1131319))

(assert (=> b!1226188 m!1131319))

(assert (=> b!1226188 m!1131321))

(assert (=> b!1226120 d!133931))

(declare-fun b!1226197 () Bool)

(declare-fun e!696446 () Bool)

(declare-fun call!60774 () Bool)

(assert (=> b!1226197 (= e!696446 call!60774)))

(declare-fun bm!60771 () Bool)

(assert (=> bm!60771 (= call!60774 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!558666 mask!1564))))

(declare-fun d!133933 () Bool)

(declare-fun res!815030 () Bool)

(declare-fun e!696447 () Bool)

(assert (=> d!133933 (=> res!815030 e!696447)))

(assert (=> d!133933 (= res!815030 (bvsge #b00000000000000000000000000000000 (size!38724 lt!558666)))))

(assert (=> d!133933 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558666 mask!1564) e!696447)))

(declare-fun b!1226198 () Bool)

(declare-fun e!696445 () Bool)

(assert (=> b!1226198 (= e!696446 e!696445)))

(declare-fun lt!558694 () (_ BitVec 64))

(assert (=> b!1226198 (= lt!558694 (select (arr!38187 lt!558666) #b00000000000000000000000000000000))))

(declare-fun lt!558693 () Unit!40584)

(assert (=> b!1226198 (= lt!558693 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!558666 lt!558694 #b00000000000000000000000000000000))))

(assert (=> b!1226198 (arrayContainsKey!0 lt!558666 lt!558694 #b00000000000000000000000000000000)))

(declare-fun lt!558692 () Unit!40584)

(assert (=> b!1226198 (= lt!558692 lt!558693)))

(declare-fun res!815031 () Bool)

(declare-datatypes ((SeekEntryResult!9948 0))(
  ( (MissingZero!9948 (index!42162 (_ BitVec 32))) (Found!9948 (index!42163 (_ BitVec 32))) (Intermediate!9948 (undefined!10760 Bool) (index!42164 (_ BitVec 32)) (x!107936 (_ BitVec 32))) (Undefined!9948) (MissingVacant!9948 (index!42165 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!79128 (_ BitVec 32)) SeekEntryResult!9948)

(assert (=> b!1226198 (= res!815031 (= (seekEntryOrOpen!0 (select (arr!38187 lt!558666) #b00000000000000000000000000000000) lt!558666 mask!1564) (Found!9948 #b00000000000000000000000000000000)))))

(assert (=> b!1226198 (=> (not res!815031) (not e!696445))))

(declare-fun b!1226199 () Bool)

(assert (=> b!1226199 (= e!696447 e!696446)))

(declare-fun c!120450 () Bool)

(assert (=> b!1226199 (= c!120450 (validKeyInArray!0 (select (arr!38187 lt!558666) #b00000000000000000000000000000000)))))

(declare-fun b!1226200 () Bool)

(assert (=> b!1226200 (= e!696445 call!60774)))

(assert (= (and d!133933 (not res!815030)) b!1226199))

(assert (= (and b!1226199 c!120450) b!1226198))

(assert (= (and b!1226199 (not c!120450)) b!1226197))

(assert (= (and b!1226198 res!815031) b!1226200))

(assert (= (or b!1226200 b!1226197) bm!60771))

(declare-fun m!1131327 () Bool)

(assert (=> bm!60771 m!1131327))

(declare-fun m!1131329 () Bool)

(assert (=> b!1226198 m!1131329))

(declare-fun m!1131331 () Bool)

(assert (=> b!1226198 m!1131331))

(declare-fun m!1131333 () Bool)

(assert (=> b!1226198 m!1131333))

(assert (=> b!1226198 m!1131329))

(declare-fun m!1131335 () Bool)

(assert (=> b!1226198 m!1131335))

(assert (=> b!1226199 m!1131329))

(assert (=> b!1226199 m!1131329))

(declare-fun m!1131337 () Bool)

(assert (=> b!1226199 m!1131337))

(assert (=> b!1226111 d!133933))

(declare-fun d!133935 () Bool)

(assert (=> d!133935 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1226112 d!133935))

(declare-fun b!1226225 () Bool)

(declare-fun res!815042 () Bool)

(declare-fun e!696465 () Bool)

(assert (=> b!1226225 (=> (not res!815042) (not e!696465))))

(declare-fun lt!558709 () ListLongMap!18307)

(declare-fun contains!7055 (ListLongMap!18307 (_ BitVec 64)) Bool)

(assert (=> b!1226225 (= res!815042 (not (contains!7055 lt!558709 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!133937 () Bool)

(assert (=> d!133937 e!696465))

(declare-fun res!815040 () Bool)

(assert (=> d!133937 (=> (not res!815040) (not e!696465))))

(assert (=> d!133937 (= res!815040 (not (contains!7055 lt!558709 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!696464 () ListLongMap!18307)

(assert (=> d!133937 (= lt!558709 e!696464)))

(declare-fun c!120459 () Bool)

(assert (=> d!133937 (= c!120459 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 lt!558666)))))

(assert (=> d!133937 (validMask!0 mask!1564)))

(assert (=> d!133937 (= (getCurrentListMapNoExtraKeys!5565 lt!558666 lt!558665 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!558709)))

(declare-fun e!696466 () Bool)

(declare-fun b!1226226 () Bool)

(assert (=> b!1226226 (= e!696466 (= lt!558709 (getCurrentListMapNoExtraKeys!5565 lt!558666 lt!558665 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1226227 () Bool)

(declare-fun e!696468 () Bool)

(declare-fun e!696467 () Bool)

(assert (=> b!1226227 (= e!696468 e!696467)))

(assert (=> b!1226227 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 lt!558666)))))

(declare-fun res!815041 () Bool)

(assert (=> b!1226227 (= res!815041 (contains!7055 lt!558709 (select (arr!38187 lt!558666) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1226227 (=> (not res!815041) (not e!696467))))

(declare-fun call!60777 () ListLongMap!18307)

(declare-fun bm!60774 () Bool)

(assert (=> bm!60774 (= call!60777 (getCurrentListMapNoExtraKeys!5565 lt!558666 lt!558665 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1226228 () Bool)

(declare-fun e!696463 () ListLongMap!18307)

(assert (=> b!1226228 (= e!696464 e!696463)))

(declare-fun c!120460 () Bool)

(assert (=> b!1226228 (= c!120460 (validKeyInArray!0 (select (arr!38187 lt!558666) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1226229 () Bool)

(assert (=> b!1226229 (= e!696463 call!60777)))

(declare-fun b!1226230 () Bool)

(assert (=> b!1226230 (= e!696465 e!696468)))

(declare-fun c!120461 () Bool)

(declare-fun e!696462 () Bool)

(assert (=> b!1226230 (= c!120461 e!696462)))

(declare-fun res!815043 () Bool)

(assert (=> b!1226230 (=> (not res!815043) (not e!696462))))

(assert (=> b!1226230 (= res!815043 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 lt!558666)))))

(declare-fun b!1226231 () Bool)

(assert (=> b!1226231 (= e!696464 (ListLongMap!18308 Nil!27135))))

(declare-fun b!1226232 () Bool)

(assert (=> b!1226232 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 lt!558666)))))

(assert (=> b!1226232 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38725 lt!558665)))))

(declare-fun apply!1013 (ListLongMap!18307 (_ BitVec 64)) V!46707)

(declare-fun get!19551 (ValueCell!14883 V!46707) V!46707)

(assert (=> b!1226232 (= e!696467 (= (apply!1013 lt!558709 (select (arr!38187 lt!558666) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19551 (select (arr!38188 lt!558665) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1226233 () Bool)

(assert (=> b!1226233 (= e!696468 e!696466)))

(declare-fun c!120462 () Bool)

(assert (=> b!1226233 (= c!120462 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 lt!558666)))))

(declare-fun b!1226234 () Bool)

(declare-fun lt!558711 () Unit!40584)

(declare-fun lt!558713 () Unit!40584)

(assert (=> b!1226234 (= lt!558711 lt!558713)))

(declare-fun lt!558712 () (_ BitVec 64))

(declare-fun lt!558715 () (_ BitVec 64))

(declare-fun lt!558714 () ListLongMap!18307)

(declare-fun lt!558710 () V!46707)

(declare-fun +!4119 (ListLongMap!18307 tuple2!20326) ListLongMap!18307)

(assert (=> b!1226234 (not (contains!7055 (+!4119 lt!558714 (tuple2!20327 lt!558715 lt!558710)) lt!558712))))

(declare-fun addStillNotContains!308 (ListLongMap!18307 (_ BitVec 64) V!46707 (_ BitVec 64)) Unit!40584)

(assert (=> b!1226234 (= lt!558713 (addStillNotContains!308 lt!558714 lt!558715 lt!558710 lt!558712))))

(assert (=> b!1226234 (= lt!558712 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1226234 (= lt!558710 (get!19551 (select (arr!38188 lt!558665) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1226234 (= lt!558715 (select (arr!38187 lt!558666) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1226234 (= lt!558714 call!60777)))

(assert (=> b!1226234 (= e!696463 (+!4119 call!60777 (tuple2!20327 (select (arr!38187 lt!558666) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19551 (select (arr!38188 lt!558665) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1226235 () Bool)

(assert (=> b!1226235 (= e!696462 (validKeyInArray!0 (select (arr!38187 lt!558666) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1226235 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1226236 () Bool)

(declare-fun isEmpty!1005 (ListLongMap!18307) Bool)

(assert (=> b!1226236 (= e!696466 (isEmpty!1005 lt!558709))))

(assert (= (and d!133937 c!120459) b!1226231))

(assert (= (and d!133937 (not c!120459)) b!1226228))

(assert (= (and b!1226228 c!120460) b!1226234))

(assert (= (and b!1226228 (not c!120460)) b!1226229))

(assert (= (or b!1226234 b!1226229) bm!60774))

(assert (= (and d!133937 res!815040) b!1226225))

(assert (= (and b!1226225 res!815042) b!1226230))

(assert (= (and b!1226230 res!815043) b!1226235))

(assert (= (and b!1226230 c!120461) b!1226227))

(assert (= (and b!1226230 (not c!120461)) b!1226233))

(assert (= (and b!1226227 res!815041) b!1226232))

(assert (= (and b!1226233 c!120462) b!1226226))

(assert (= (and b!1226233 (not c!120462)) b!1226236))

(declare-fun b_lambda!22477 () Bool)

(assert (=> (not b_lambda!22477) (not b!1226232)))

(assert (=> b!1226232 t!40605))

(declare-fun b_and!44241 () Bool)

(assert (= b_and!44235 (and (=> t!40605 result!23183) b_and!44241)))

(declare-fun b_lambda!22479 () Bool)

(assert (=> (not b_lambda!22479) (not b!1226234)))

(assert (=> b!1226234 t!40605))

(declare-fun b_and!44243 () Bool)

(assert (= b_and!44241 (and (=> t!40605 result!23183) b_and!44243)))

(declare-fun m!1131339 () Bool)

(assert (=> b!1226226 m!1131339))

(declare-fun m!1131341 () Bool)

(assert (=> d!133937 m!1131341))

(assert (=> d!133937 m!1131237))

(declare-fun m!1131343 () Bool)

(assert (=> b!1226232 m!1131343))

(assert (=> b!1226232 m!1131249))

(declare-fun m!1131345 () Bool)

(assert (=> b!1226232 m!1131345))

(assert (=> b!1226232 m!1131343))

(declare-fun m!1131347 () Bool)

(assert (=> b!1226232 m!1131347))

(declare-fun m!1131349 () Bool)

(assert (=> b!1226232 m!1131349))

(assert (=> b!1226232 m!1131249))

(assert (=> b!1226232 m!1131347))

(assert (=> b!1226227 m!1131347))

(assert (=> b!1226227 m!1131347))

(declare-fun m!1131351 () Bool)

(assert (=> b!1226227 m!1131351))

(assert (=> bm!60774 m!1131339))

(declare-fun m!1131353 () Bool)

(assert (=> b!1226236 m!1131353))

(assert (=> b!1226228 m!1131347))

(assert (=> b!1226228 m!1131347))

(declare-fun m!1131355 () Bool)

(assert (=> b!1226228 m!1131355))

(assert (=> b!1226234 m!1131343))

(assert (=> b!1226234 m!1131249))

(assert (=> b!1226234 m!1131345))

(assert (=> b!1226234 m!1131343))

(declare-fun m!1131357 () Bool)

(assert (=> b!1226234 m!1131357))

(assert (=> b!1226234 m!1131249))

(declare-fun m!1131359 () Bool)

(assert (=> b!1226234 m!1131359))

(declare-fun m!1131361 () Bool)

(assert (=> b!1226234 m!1131361))

(assert (=> b!1226234 m!1131347))

(assert (=> b!1226234 m!1131359))

(declare-fun m!1131363 () Bool)

(assert (=> b!1226234 m!1131363))

(assert (=> b!1226235 m!1131347))

(assert (=> b!1226235 m!1131347))

(assert (=> b!1226235 m!1131355))

(declare-fun m!1131365 () Bool)

(assert (=> b!1226225 m!1131365))

(assert (=> b!1226114 d!133937))

(declare-fun d!133939 () Bool)

(assert (=> d!133939 (= (validKeyInArray!0 (select (arr!38187 _keys!1208) from!1455)) (and (not (= (select (arr!38187 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38187 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1226114 d!133939))

(declare-fun call!60782 () ListLongMap!18307)

(declare-fun e!696473 () Bool)

(declare-fun b!1226243 () Bool)

(declare-fun call!60783 () ListLongMap!18307)

(assert (=> b!1226243 (= e!696473 (= call!60783 (-!2004 call!60782 k0!934)))))

(assert (=> b!1226243 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38725 _values!996)))))

(declare-fun d!133941 () Bool)

(declare-fun e!696474 () Bool)

(assert (=> d!133941 e!696474))

(declare-fun res!815046 () Bool)

(assert (=> d!133941 (=> (not res!815046) (not e!696474))))

(assert (=> d!133941 (= res!815046 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38724 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38724 _keys!1208))))))))

(declare-fun lt!558718 () Unit!40584)

(declare-fun choose!1836 (array!79128 array!79130 (_ BitVec 32) (_ BitVec 32) V!46707 V!46707 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40584)

(assert (=> d!133941 (= lt!558718 (choose!1836 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133941 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 _keys!1208)))))

(assert (=> d!133941 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1204 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!558718)))

(declare-fun bm!60779 () Bool)

(assert (=> bm!60779 (= call!60783 (getCurrentListMapNoExtraKeys!5565 (array!79129 (store (arr!38187 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38724 _keys!1208)) (array!79131 (store (arr!38188 _values!996) i!673 (ValueCellFull!14883 (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38725 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1226244 () Bool)

(assert (=> b!1226244 (= e!696474 e!696473)))

(declare-fun c!120465 () Bool)

(assert (=> b!1226244 (= c!120465 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1226245 () Bool)

(assert (=> b!1226245 (= e!696473 (= call!60783 call!60782))))

(assert (=> b!1226245 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38725 _values!996)))))

(declare-fun bm!60780 () Bool)

(assert (=> bm!60780 (= call!60782 (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and d!133941 res!815046) b!1226244))

(assert (= (and b!1226244 c!120465) b!1226243))

(assert (= (and b!1226244 (not c!120465)) b!1226245))

(assert (= (or b!1226243 b!1226245) bm!60780))

(assert (= (or b!1226243 b!1226245) bm!60779))

(declare-fun b_lambda!22481 () Bool)

(assert (=> (not b_lambda!22481) (not bm!60779)))

(assert (=> bm!60779 t!40605))

(declare-fun b_and!44245 () Bool)

(assert (= b_and!44243 (and (=> t!40605 result!23183) b_and!44245)))

(declare-fun m!1131367 () Bool)

(assert (=> b!1226243 m!1131367))

(declare-fun m!1131369 () Bool)

(assert (=> d!133941 m!1131369))

(assert (=> bm!60779 m!1131245))

(assert (=> bm!60779 m!1131249))

(assert (=> bm!60779 m!1131251))

(declare-fun m!1131371 () Bool)

(assert (=> bm!60779 m!1131371))

(assert (=> bm!60780 m!1131255))

(assert (=> b!1226114 d!133941))

(declare-fun b!1226246 () Bool)

(declare-fun res!815049 () Bool)

(declare-fun e!696478 () Bool)

(assert (=> b!1226246 (=> (not res!815049) (not e!696478))))

(declare-fun lt!558719 () ListLongMap!18307)

(assert (=> b!1226246 (= res!815049 (not (contains!7055 lt!558719 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!133943 () Bool)

(assert (=> d!133943 e!696478))

(declare-fun res!815047 () Bool)

(assert (=> d!133943 (=> (not res!815047) (not e!696478))))

(assert (=> d!133943 (= res!815047 (not (contains!7055 lt!558719 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!696477 () ListLongMap!18307)

(assert (=> d!133943 (= lt!558719 e!696477)))

(declare-fun c!120466 () Bool)

(assert (=> d!133943 (= c!120466 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 _keys!1208)))))

(assert (=> d!133943 (validMask!0 mask!1564)))

(assert (=> d!133943 (= (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!558719)))

(declare-fun e!696479 () Bool)

(declare-fun b!1226247 () Bool)

(assert (=> b!1226247 (= e!696479 (= lt!558719 (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1226248 () Bool)

(declare-fun e!696481 () Bool)

(declare-fun e!696480 () Bool)

(assert (=> b!1226248 (= e!696481 e!696480)))

(assert (=> b!1226248 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 _keys!1208)))))

(declare-fun res!815048 () Bool)

(assert (=> b!1226248 (= res!815048 (contains!7055 lt!558719 (select (arr!38187 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1226248 (=> (not res!815048) (not e!696480))))

(declare-fun bm!60781 () Bool)

(declare-fun call!60784 () ListLongMap!18307)

(assert (=> bm!60781 (= call!60784 (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1226249 () Bool)

(declare-fun e!696476 () ListLongMap!18307)

(assert (=> b!1226249 (= e!696477 e!696476)))

(declare-fun c!120467 () Bool)

(assert (=> b!1226249 (= c!120467 (validKeyInArray!0 (select (arr!38187 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1226250 () Bool)

(assert (=> b!1226250 (= e!696476 call!60784)))

(declare-fun b!1226251 () Bool)

(assert (=> b!1226251 (= e!696478 e!696481)))

(declare-fun c!120468 () Bool)

(declare-fun e!696475 () Bool)

(assert (=> b!1226251 (= c!120468 e!696475)))

(declare-fun res!815050 () Bool)

(assert (=> b!1226251 (=> (not res!815050) (not e!696475))))

(assert (=> b!1226251 (= res!815050 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 _keys!1208)))))

(declare-fun b!1226252 () Bool)

(assert (=> b!1226252 (= e!696477 (ListLongMap!18308 Nil!27135))))

(declare-fun b!1226253 () Bool)

(assert (=> b!1226253 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 _keys!1208)))))

(assert (=> b!1226253 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38725 _values!996)))))

(assert (=> b!1226253 (= e!696480 (= (apply!1013 lt!558719 (select (arr!38187 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19551 (select (arr!38188 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1226254 () Bool)

(assert (=> b!1226254 (= e!696481 e!696479)))

(declare-fun c!120469 () Bool)

(assert (=> b!1226254 (= c!120469 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38724 _keys!1208)))))

(declare-fun b!1226255 () Bool)

(declare-fun lt!558721 () Unit!40584)

(declare-fun lt!558723 () Unit!40584)

(assert (=> b!1226255 (= lt!558721 lt!558723)))

(declare-fun lt!558724 () ListLongMap!18307)

(declare-fun lt!558725 () (_ BitVec 64))

(declare-fun lt!558722 () (_ BitVec 64))

(declare-fun lt!558720 () V!46707)

(assert (=> b!1226255 (not (contains!7055 (+!4119 lt!558724 (tuple2!20327 lt!558725 lt!558720)) lt!558722))))

(assert (=> b!1226255 (= lt!558723 (addStillNotContains!308 lt!558724 lt!558725 lt!558720 lt!558722))))

(assert (=> b!1226255 (= lt!558722 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1226255 (= lt!558720 (get!19551 (select (arr!38188 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1226255 (= lt!558725 (select (arr!38187 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1226255 (= lt!558724 call!60784)))

(assert (=> b!1226255 (= e!696476 (+!4119 call!60784 (tuple2!20327 (select (arr!38187 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19551 (select (arr!38188 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1226256 () Bool)

(assert (=> b!1226256 (= e!696475 (validKeyInArray!0 (select (arr!38187 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1226256 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1226257 () Bool)

(assert (=> b!1226257 (= e!696479 (isEmpty!1005 lt!558719))))

(assert (= (and d!133943 c!120466) b!1226252))

(assert (= (and d!133943 (not c!120466)) b!1226249))

(assert (= (and b!1226249 c!120467) b!1226255))

(assert (= (and b!1226249 (not c!120467)) b!1226250))

(assert (= (or b!1226255 b!1226250) bm!60781))

(assert (= (and d!133943 res!815047) b!1226246))

(assert (= (and b!1226246 res!815049) b!1226251))

(assert (= (and b!1226251 res!815050) b!1226256))

(assert (= (and b!1226251 c!120468) b!1226248))

(assert (= (and b!1226251 (not c!120468)) b!1226254))

(assert (= (and b!1226248 res!815048) b!1226253))

(assert (= (and b!1226254 c!120469) b!1226247))

(assert (= (and b!1226254 (not c!120469)) b!1226257))

(declare-fun b_lambda!22483 () Bool)

(assert (=> (not b_lambda!22483) (not b!1226253)))

(assert (=> b!1226253 t!40605))

(declare-fun b_and!44247 () Bool)

(assert (= b_and!44245 (and (=> t!40605 result!23183) b_and!44247)))

(declare-fun b_lambda!22485 () Bool)

(assert (=> (not b_lambda!22485) (not b!1226255)))

(assert (=> b!1226255 t!40605))

(declare-fun b_and!44249 () Bool)

(assert (= b_and!44247 (and (=> t!40605 result!23183) b_and!44249)))

(declare-fun m!1131373 () Bool)

(assert (=> b!1226247 m!1131373))

(declare-fun m!1131375 () Bool)

(assert (=> d!133943 m!1131375))

(assert (=> d!133943 m!1131237))

(declare-fun m!1131377 () Bool)

(assert (=> b!1226253 m!1131377))

(assert (=> b!1226253 m!1131249))

(declare-fun m!1131379 () Bool)

(assert (=> b!1226253 m!1131379))

(assert (=> b!1226253 m!1131377))

(declare-fun m!1131381 () Bool)

(assert (=> b!1226253 m!1131381))

(declare-fun m!1131383 () Bool)

(assert (=> b!1226253 m!1131383))

(assert (=> b!1226253 m!1131249))

(assert (=> b!1226253 m!1131381))

(assert (=> b!1226248 m!1131381))

(assert (=> b!1226248 m!1131381))

(declare-fun m!1131385 () Bool)

(assert (=> b!1226248 m!1131385))

(assert (=> bm!60781 m!1131373))

(declare-fun m!1131387 () Bool)

(assert (=> b!1226257 m!1131387))

(assert (=> b!1226249 m!1131381))

(assert (=> b!1226249 m!1131381))

(declare-fun m!1131389 () Bool)

(assert (=> b!1226249 m!1131389))

(assert (=> b!1226255 m!1131377))

(assert (=> b!1226255 m!1131249))

(assert (=> b!1226255 m!1131379))

(assert (=> b!1226255 m!1131377))

(declare-fun m!1131391 () Bool)

(assert (=> b!1226255 m!1131391))

(assert (=> b!1226255 m!1131249))

(declare-fun m!1131393 () Bool)

(assert (=> b!1226255 m!1131393))

(declare-fun m!1131395 () Bool)

(assert (=> b!1226255 m!1131395))

(assert (=> b!1226255 m!1131381))

(assert (=> b!1226255 m!1131393))

(declare-fun m!1131397 () Bool)

(assert (=> b!1226255 m!1131397))

(assert (=> b!1226256 m!1131381))

(assert (=> b!1226256 m!1131381))

(assert (=> b!1226256 m!1131389))

(declare-fun m!1131399 () Bool)

(assert (=> b!1226246 m!1131399))

(assert (=> b!1226114 d!133943))

(declare-fun d!133945 () Bool)

(declare-fun lt!558728 () ListLongMap!18307)

(assert (=> d!133945 (not (contains!7055 lt!558728 k0!934))))

(declare-fun removeStrictlySorted!112 (List!27138 (_ BitVec 64)) List!27138)

(assert (=> d!133945 (= lt!558728 (ListLongMap!18308 (removeStrictlySorted!112 (toList!9169 (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)) k0!934)))))

(assert (=> d!133945 (= (-!2004 (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934) lt!558728)))

(declare-fun bs!34458 () Bool)

(assert (= bs!34458 d!133945))

(declare-fun m!1131401 () Bool)

(assert (=> bs!34458 m!1131401))

(declare-fun m!1131403 () Bool)

(assert (=> bs!34458 m!1131403))

(assert (=> b!1226114 d!133945))

(declare-fun b!1226258 () Bool)

(declare-fun res!815053 () Bool)

(declare-fun e!696485 () Bool)

(assert (=> b!1226258 (=> (not res!815053) (not e!696485))))

(declare-fun lt!558729 () ListLongMap!18307)

(assert (=> b!1226258 (= res!815053 (not (contains!7055 lt!558729 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!133947 () Bool)

(assert (=> d!133947 e!696485))

(declare-fun res!815051 () Bool)

(assert (=> d!133947 (=> (not res!815051) (not e!696485))))

(assert (=> d!133947 (= res!815051 (not (contains!7055 lt!558729 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!696484 () ListLongMap!18307)

(assert (=> d!133947 (= lt!558729 e!696484)))

(declare-fun c!120470 () Bool)

(assert (=> d!133947 (= c!120470 (bvsge from!1455 (size!38724 lt!558666)))))

(assert (=> d!133947 (validMask!0 mask!1564)))

(assert (=> d!133947 (= (getCurrentListMapNoExtraKeys!5565 lt!558666 lt!558665 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!558729)))

(declare-fun b!1226259 () Bool)

(declare-fun e!696486 () Bool)

(assert (=> b!1226259 (= e!696486 (= lt!558729 (getCurrentListMapNoExtraKeys!5565 lt!558666 lt!558665 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1226260 () Bool)

(declare-fun e!696488 () Bool)

(declare-fun e!696487 () Bool)

(assert (=> b!1226260 (= e!696488 e!696487)))

(assert (=> b!1226260 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38724 lt!558666)))))

(declare-fun res!815052 () Bool)

(assert (=> b!1226260 (= res!815052 (contains!7055 lt!558729 (select (arr!38187 lt!558666) from!1455)))))

(assert (=> b!1226260 (=> (not res!815052) (not e!696487))))

(declare-fun call!60785 () ListLongMap!18307)

(declare-fun bm!60782 () Bool)

(assert (=> bm!60782 (= call!60785 (getCurrentListMapNoExtraKeys!5565 lt!558666 lt!558665 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1226261 () Bool)

(declare-fun e!696483 () ListLongMap!18307)

(assert (=> b!1226261 (= e!696484 e!696483)))

(declare-fun c!120471 () Bool)

(assert (=> b!1226261 (= c!120471 (validKeyInArray!0 (select (arr!38187 lt!558666) from!1455)))))

(declare-fun b!1226262 () Bool)

(assert (=> b!1226262 (= e!696483 call!60785)))

(declare-fun b!1226263 () Bool)

(assert (=> b!1226263 (= e!696485 e!696488)))

(declare-fun c!120472 () Bool)

(declare-fun e!696482 () Bool)

(assert (=> b!1226263 (= c!120472 e!696482)))

(declare-fun res!815054 () Bool)

(assert (=> b!1226263 (=> (not res!815054) (not e!696482))))

(assert (=> b!1226263 (= res!815054 (bvslt from!1455 (size!38724 lt!558666)))))

(declare-fun b!1226264 () Bool)

(assert (=> b!1226264 (= e!696484 (ListLongMap!18308 Nil!27135))))

(declare-fun b!1226265 () Bool)

(assert (=> b!1226265 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38724 lt!558666)))))

(assert (=> b!1226265 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38725 lt!558665)))))

(assert (=> b!1226265 (= e!696487 (= (apply!1013 lt!558729 (select (arr!38187 lt!558666) from!1455)) (get!19551 (select (arr!38188 lt!558665) from!1455) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1226266 () Bool)

(assert (=> b!1226266 (= e!696488 e!696486)))

(declare-fun c!120473 () Bool)

(assert (=> b!1226266 (= c!120473 (bvslt from!1455 (size!38724 lt!558666)))))

(declare-fun b!1226267 () Bool)

(declare-fun lt!558731 () Unit!40584)

(declare-fun lt!558733 () Unit!40584)

(assert (=> b!1226267 (= lt!558731 lt!558733)))

(declare-fun lt!558730 () V!46707)

(declare-fun lt!558732 () (_ BitVec 64))

(declare-fun lt!558735 () (_ BitVec 64))

(declare-fun lt!558734 () ListLongMap!18307)

(assert (=> b!1226267 (not (contains!7055 (+!4119 lt!558734 (tuple2!20327 lt!558735 lt!558730)) lt!558732))))

(assert (=> b!1226267 (= lt!558733 (addStillNotContains!308 lt!558734 lt!558735 lt!558730 lt!558732))))

(assert (=> b!1226267 (= lt!558732 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1226267 (= lt!558730 (get!19551 (select (arr!38188 lt!558665) from!1455) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1226267 (= lt!558735 (select (arr!38187 lt!558666) from!1455))))

(assert (=> b!1226267 (= lt!558734 call!60785)))

(assert (=> b!1226267 (= e!696483 (+!4119 call!60785 (tuple2!20327 (select (arr!38187 lt!558666) from!1455) (get!19551 (select (arr!38188 lt!558665) from!1455) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1226268 () Bool)

(assert (=> b!1226268 (= e!696482 (validKeyInArray!0 (select (arr!38187 lt!558666) from!1455)))))

(assert (=> b!1226268 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1226269 () Bool)

(assert (=> b!1226269 (= e!696486 (isEmpty!1005 lt!558729))))

(assert (= (and d!133947 c!120470) b!1226264))

(assert (= (and d!133947 (not c!120470)) b!1226261))

(assert (= (and b!1226261 c!120471) b!1226267))

(assert (= (and b!1226261 (not c!120471)) b!1226262))

(assert (= (or b!1226267 b!1226262) bm!60782))

(assert (= (and d!133947 res!815051) b!1226258))

(assert (= (and b!1226258 res!815053) b!1226263))

(assert (= (and b!1226263 res!815054) b!1226268))

(assert (= (and b!1226263 c!120472) b!1226260))

(assert (= (and b!1226263 (not c!120472)) b!1226266))

(assert (= (and b!1226260 res!815052) b!1226265))

(assert (= (and b!1226266 c!120473) b!1226259))

(assert (= (and b!1226266 (not c!120473)) b!1226269))

(declare-fun b_lambda!22487 () Bool)

(assert (=> (not b_lambda!22487) (not b!1226265)))

(assert (=> b!1226265 t!40605))

(declare-fun b_and!44251 () Bool)

(assert (= b_and!44249 (and (=> t!40605 result!23183) b_and!44251)))

(declare-fun b_lambda!22489 () Bool)

(assert (=> (not b_lambda!22489) (not b!1226267)))

(assert (=> b!1226267 t!40605))

(declare-fun b_and!44253 () Bool)

(assert (= b_and!44251 (and (=> t!40605 result!23183) b_and!44253)))

(declare-fun m!1131405 () Bool)

(assert (=> b!1226259 m!1131405))

(declare-fun m!1131407 () Bool)

(assert (=> d!133947 m!1131407))

(assert (=> d!133947 m!1131237))

(declare-fun m!1131409 () Bool)

(assert (=> b!1226265 m!1131409))

(assert (=> b!1226265 m!1131249))

(declare-fun m!1131411 () Bool)

(assert (=> b!1226265 m!1131411))

(assert (=> b!1226265 m!1131409))

(declare-fun m!1131413 () Bool)

(assert (=> b!1226265 m!1131413))

(declare-fun m!1131415 () Bool)

(assert (=> b!1226265 m!1131415))

(assert (=> b!1226265 m!1131249))

(assert (=> b!1226265 m!1131413))

(assert (=> b!1226260 m!1131413))

(assert (=> b!1226260 m!1131413))

(declare-fun m!1131417 () Bool)

(assert (=> b!1226260 m!1131417))

(assert (=> bm!60782 m!1131405))

(declare-fun m!1131419 () Bool)

(assert (=> b!1226269 m!1131419))

(assert (=> b!1226261 m!1131413))

(assert (=> b!1226261 m!1131413))

(declare-fun m!1131421 () Bool)

(assert (=> b!1226261 m!1131421))

(assert (=> b!1226267 m!1131409))

(assert (=> b!1226267 m!1131249))

(assert (=> b!1226267 m!1131411))

(assert (=> b!1226267 m!1131409))

(declare-fun m!1131423 () Bool)

(assert (=> b!1226267 m!1131423))

(assert (=> b!1226267 m!1131249))

(declare-fun m!1131425 () Bool)

(assert (=> b!1226267 m!1131425))

(declare-fun m!1131427 () Bool)

(assert (=> b!1226267 m!1131427))

(assert (=> b!1226267 m!1131413))

(assert (=> b!1226267 m!1131425))

(declare-fun m!1131429 () Bool)

(assert (=> b!1226267 m!1131429))

(assert (=> b!1226268 m!1131413))

(assert (=> b!1226268 m!1131413))

(assert (=> b!1226268 m!1131421))

(declare-fun m!1131431 () Bool)

(assert (=> b!1226258 m!1131431))

(assert (=> b!1226106 d!133947))

(declare-fun b!1226270 () Bool)

(declare-fun res!815057 () Bool)

(declare-fun e!696492 () Bool)

(assert (=> b!1226270 (=> (not res!815057) (not e!696492))))

(declare-fun lt!558736 () ListLongMap!18307)

(assert (=> b!1226270 (= res!815057 (not (contains!7055 lt!558736 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!133949 () Bool)

(assert (=> d!133949 e!696492))

(declare-fun res!815055 () Bool)

(assert (=> d!133949 (=> (not res!815055) (not e!696492))))

(assert (=> d!133949 (= res!815055 (not (contains!7055 lt!558736 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!696491 () ListLongMap!18307)

(assert (=> d!133949 (= lt!558736 e!696491)))

(declare-fun c!120474 () Bool)

(assert (=> d!133949 (= c!120474 (bvsge from!1455 (size!38724 _keys!1208)))))

(assert (=> d!133949 (validMask!0 mask!1564)))

(assert (=> d!133949 (= (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!558736)))

(declare-fun e!696493 () Bool)

(declare-fun b!1226271 () Bool)

(assert (=> b!1226271 (= e!696493 (= lt!558736 (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1226272 () Bool)

(declare-fun e!696495 () Bool)

(declare-fun e!696494 () Bool)

(assert (=> b!1226272 (= e!696495 e!696494)))

(assert (=> b!1226272 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38724 _keys!1208)))))

(declare-fun res!815056 () Bool)

(assert (=> b!1226272 (= res!815056 (contains!7055 lt!558736 (select (arr!38187 _keys!1208) from!1455)))))

(assert (=> b!1226272 (=> (not res!815056) (not e!696494))))

(declare-fun bm!60783 () Bool)

(declare-fun call!60786 () ListLongMap!18307)

(assert (=> bm!60783 (= call!60786 (getCurrentListMapNoExtraKeys!5565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1226273 () Bool)

(declare-fun e!696490 () ListLongMap!18307)

(assert (=> b!1226273 (= e!696491 e!696490)))

(declare-fun c!120475 () Bool)

(assert (=> b!1226273 (= c!120475 (validKeyInArray!0 (select (arr!38187 _keys!1208) from!1455)))))

(declare-fun b!1226274 () Bool)

(assert (=> b!1226274 (= e!696490 call!60786)))

(declare-fun b!1226275 () Bool)

(assert (=> b!1226275 (= e!696492 e!696495)))

(declare-fun c!120476 () Bool)

(declare-fun e!696489 () Bool)

(assert (=> b!1226275 (= c!120476 e!696489)))

(declare-fun res!815058 () Bool)

(assert (=> b!1226275 (=> (not res!815058) (not e!696489))))

(assert (=> b!1226275 (= res!815058 (bvslt from!1455 (size!38724 _keys!1208)))))

(declare-fun b!1226276 () Bool)

(assert (=> b!1226276 (= e!696491 (ListLongMap!18308 Nil!27135))))

(declare-fun b!1226277 () Bool)

(assert (=> b!1226277 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38724 _keys!1208)))))

(assert (=> b!1226277 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38725 _values!996)))))

(assert (=> b!1226277 (= e!696494 (= (apply!1013 lt!558736 (select (arr!38187 _keys!1208) from!1455)) (get!19551 (select (arr!38188 _values!996) from!1455) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1226278 () Bool)

(assert (=> b!1226278 (= e!696495 e!696493)))

(declare-fun c!120477 () Bool)

(assert (=> b!1226278 (= c!120477 (bvslt from!1455 (size!38724 _keys!1208)))))

(declare-fun b!1226279 () Bool)

(declare-fun lt!558738 () Unit!40584)

(declare-fun lt!558740 () Unit!40584)

(assert (=> b!1226279 (= lt!558738 lt!558740)))

(declare-fun lt!558737 () V!46707)

(declare-fun lt!558739 () (_ BitVec 64))

(declare-fun lt!558742 () (_ BitVec 64))

(declare-fun lt!558741 () ListLongMap!18307)

(assert (=> b!1226279 (not (contains!7055 (+!4119 lt!558741 (tuple2!20327 lt!558742 lt!558737)) lt!558739))))

(assert (=> b!1226279 (= lt!558740 (addStillNotContains!308 lt!558741 lt!558742 lt!558737 lt!558739))))

(assert (=> b!1226279 (= lt!558739 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1226279 (= lt!558737 (get!19551 (select (arr!38188 _values!996) from!1455) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1226279 (= lt!558742 (select (arr!38187 _keys!1208) from!1455))))

(assert (=> b!1226279 (= lt!558741 call!60786)))

(assert (=> b!1226279 (= e!696490 (+!4119 call!60786 (tuple2!20327 (select (arr!38187 _keys!1208) from!1455) (get!19551 (select (arr!38188 _values!996) from!1455) (dynLambda!3458 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1226280 () Bool)

(assert (=> b!1226280 (= e!696489 (validKeyInArray!0 (select (arr!38187 _keys!1208) from!1455)))))

(assert (=> b!1226280 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1226281 () Bool)

(assert (=> b!1226281 (= e!696493 (isEmpty!1005 lt!558736))))

(assert (= (and d!133949 c!120474) b!1226276))

(assert (= (and d!133949 (not c!120474)) b!1226273))

(assert (= (and b!1226273 c!120475) b!1226279))

(assert (= (and b!1226273 (not c!120475)) b!1226274))

(assert (= (or b!1226279 b!1226274) bm!60783))

(assert (= (and d!133949 res!815055) b!1226270))

(assert (= (and b!1226270 res!815057) b!1226275))

(assert (= (and b!1226275 res!815058) b!1226280))

(assert (= (and b!1226275 c!120476) b!1226272))

(assert (= (and b!1226275 (not c!120476)) b!1226278))

(assert (= (and b!1226272 res!815056) b!1226277))

(assert (= (and b!1226278 c!120477) b!1226271))

(assert (= (and b!1226278 (not c!120477)) b!1226281))

(declare-fun b_lambda!22491 () Bool)

(assert (=> (not b_lambda!22491) (not b!1226277)))

(assert (=> b!1226277 t!40605))

(declare-fun b_and!44255 () Bool)

(assert (= b_and!44253 (and (=> t!40605 result!23183) b_and!44255)))

(declare-fun b_lambda!22493 () Bool)

(assert (=> (not b_lambda!22493) (not b!1226279)))

(assert (=> b!1226279 t!40605))

(declare-fun b_and!44257 () Bool)

(assert (= b_and!44255 (and (=> t!40605 result!23183) b_and!44257)))

(declare-fun m!1131433 () Bool)

(assert (=> b!1226271 m!1131433))

(declare-fun m!1131435 () Bool)

(assert (=> d!133949 m!1131435))

(assert (=> d!133949 m!1131237))

(declare-fun m!1131437 () Bool)

(assert (=> b!1226277 m!1131437))

(assert (=> b!1226277 m!1131249))

(declare-fun m!1131439 () Bool)

(assert (=> b!1226277 m!1131439))

(assert (=> b!1226277 m!1131437))

(assert (=> b!1226277 m!1131263))

(declare-fun m!1131441 () Bool)

(assert (=> b!1226277 m!1131441))

(assert (=> b!1226277 m!1131249))

(assert (=> b!1226277 m!1131263))

(assert (=> b!1226272 m!1131263))

(assert (=> b!1226272 m!1131263))

(declare-fun m!1131443 () Bool)

(assert (=> b!1226272 m!1131443))

(assert (=> bm!60783 m!1131433))

(declare-fun m!1131445 () Bool)

(assert (=> b!1226281 m!1131445))

(assert (=> b!1226273 m!1131263))

(assert (=> b!1226273 m!1131263))

(assert (=> b!1226273 m!1131265))

(assert (=> b!1226279 m!1131437))

(assert (=> b!1226279 m!1131249))

(assert (=> b!1226279 m!1131439))

(assert (=> b!1226279 m!1131437))

(declare-fun m!1131447 () Bool)

(assert (=> b!1226279 m!1131447))

(assert (=> b!1226279 m!1131249))

(declare-fun m!1131449 () Bool)

(assert (=> b!1226279 m!1131449))

(declare-fun m!1131451 () Bool)

(assert (=> b!1226279 m!1131451))

(assert (=> b!1226279 m!1131263))

(assert (=> b!1226279 m!1131449))

(declare-fun m!1131453 () Bool)

(assert (=> b!1226279 m!1131453))

(assert (=> b!1226280 m!1131263))

(assert (=> b!1226280 m!1131263))

(assert (=> b!1226280 m!1131265))

(declare-fun m!1131455 () Bool)

(assert (=> b!1226270 m!1131455))

(assert (=> b!1226106 d!133949))

(declare-fun b!1226282 () Bool)

(declare-fun e!696497 () Bool)

(declare-fun call!60787 () Bool)

(assert (=> b!1226282 (= e!696497 call!60787)))

(declare-fun bm!60784 () Bool)

(assert (=> bm!60784 (= call!60787 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun d!133951 () Bool)

(declare-fun res!815059 () Bool)

(declare-fun e!696498 () Bool)

(assert (=> d!133951 (=> res!815059 e!696498)))

(assert (=> d!133951 (= res!815059 (bvsge #b00000000000000000000000000000000 (size!38724 _keys!1208)))))

(assert (=> d!133951 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!696498)))

(declare-fun b!1226283 () Bool)

(declare-fun e!696496 () Bool)

(assert (=> b!1226283 (= e!696497 e!696496)))

(declare-fun lt!558745 () (_ BitVec 64))

(assert (=> b!1226283 (= lt!558745 (select (arr!38187 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!558744 () Unit!40584)

(assert (=> b!1226283 (= lt!558744 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!558745 #b00000000000000000000000000000000))))

(assert (=> b!1226283 (arrayContainsKey!0 _keys!1208 lt!558745 #b00000000000000000000000000000000)))

(declare-fun lt!558743 () Unit!40584)

(assert (=> b!1226283 (= lt!558743 lt!558744)))

(declare-fun res!815060 () Bool)

(assert (=> b!1226283 (= res!815060 (= (seekEntryOrOpen!0 (select (arr!38187 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9948 #b00000000000000000000000000000000)))))

(assert (=> b!1226283 (=> (not res!815060) (not e!696496))))

(declare-fun b!1226284 () Bool)

(assert (=> b!1226284 (= e!696498 e!696497)))

(declare-fun c!120478 () Bool)

(assert (=> b!1226284 (= c!120478 (validKeyInArray!0 (select (arr!38187 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1226285 () Bool)

(assert (=> b!1226285 (= e!696496 call!60787)))

(assert (= (and d!133951 (not res!815059)) b!1226284))

(assert (= (and b!1226284 c!120478) b!1226283))

(assert (= (and b!1226284 (not c!120478)) b!1226282))

(assert (= (and b!1226283 res!815060) b!1226285))

(assert (= (or b!1226285 b!1226282) bm!60784))

(declare-fun m!1131457 () Bool)

(assert (=> bm!60784 m!1131457))

(assert (=> b!1226283 m!1131319))

(declare-fun m!1131459 () Bool)

(assert (=> b!1226283 m!1131459))

(declare-fun m!1131461 () Bool)

(assert (=> b!1226283 m!1131461))

(assert (=> b!1226283 m!1131319))

(declare-fun m!1131463 () Bool)

(assert (=> b!1226283 m!1131463))

(assert (=> b!1226284 m!1131319))

(assert (=> b!1226284 m!1131319))

(assert (=> b!1226284 m!1131321))

(assert (=> b!1226107 d!133951))

(declare-fun d!133953 () Bool)

(assert (=> d!133953 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1226116 d!133953))

(declare-fun d!133955 () Bool)

(assert (=> d!133955 (= (array_inv!28964 _keys!1208) (bvsge (size!38724 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101828 d!133955))

(declare-fun d!133957 () Bool)

(assert (=> d!133957 (= (array_inv!28965 _values!996) (bvsge (size!38725 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101828 d!133957))

(declare-fun d!133959 () Bool)

(declare-fun lt!558746 () ListLongMap!18307)

(assert (=> d!133959 (not (contains!7055 lt!558746 k0!934))))

(assert (=> d!133959 (= lt!558746 (ListLongMap!18308 (removeStrictlySorted!112 (toList!9169 lt!558664) k0!934)))))

(assert (=> d!133959 (= (-!2004 lt!558664 k0!934) lt!558746)))

(declare-fun bs!34459 () Bool)

(assert (= bs!34459 d!133959))

(declare-fun m!1131465 () Bool)

(assert (=> bs!34459 m!1131465))

(declare-fun m!1131467 () Bool)

(assert (=> bs!34459 m!1131467))

(assert (=> b!1226117 d!133959))

(declare-fun d!133961 () Bool)

(declare-fun res!815065 () Bool)

(declare-fun e!696503 () Bool)

(assert (=> d!133961 (=> res!815065 e!696503)))

(assert (=> d!133961 (= res!815065 (= (select (arr!38187 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133961 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!696503)))

(declare-fun b!1226290 () Bool)

(declare-fun e!696504 () Bool)

(assert (=> b!1226290 (= e!696503 e!696504)))

(declare-fun res!815066 () Bool)

(assert (=> b!1226290 (=> (not res!815066) (not e!696504))))

(assert (=> b!1226290 (= res!815066 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38724 _keys!1208)))))

(declare-fun b!1226291 () Bool)

(assert (=> b!1226291 (= e!696504 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133961 (not res!815065)) b!1226290))

(assert (= (and b!1226290 res!815066) b!1226291))

(assert (=> d!133961 m!1131319))

(declare-fun m!1131469 () Bool)

(assert (=> b!1226291 m!1131469))

(assert (=> b!1226108 d!133961))

(declare-fun d!133963 () Bool)

(assert (=> d!133963 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!558749 () Unit!40584)

(declare-fun choose!13 (array!79128 (_ BitVec 64) (_ BitVec 32)) Unit!40584)

(assert (=> d!133963 (= lt!558749 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133963 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133963 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!558749)))

(declare-fun bs!34460 () Bool)

(assert (= bs!34460 d!133963))

(assert (=> bs!34460 m!1131239))

(declare-fun m!1131471 () Bool)

(assert (=> bs!34460 m!1131471))

(assert (=> b!1226108 d!133963))

(declare-fun d!133965 () Bool)

(declare-fun res!815068 () Bool)

(declare-fun e!696505 () Bool)

(assert (=> d!133965 (=> res!815068 e!696505)))

(assert (=> d!133965 (= res!815068 (bvsge #b00000000000000000000000000000000 (size!38724 lt!558666)))))

(assert (=> d!133965 (= (arrayNoDuplicates!0 lt!558666 #b00000000000000000000000000000000 Nil!27136) e!696505)))

(declare-fun b!1226292 () Bool)

(declare-fun e!696507 () Bool)

(declare-fun call!60788 () Bool)

(assert (=> b!1226292 (= e!696507 call!60788)))

(declare-fun b!1226293 () Bool)

(declare-fun e!696508 () Bool)

(assert (=> b!1226293 (= e!696508 e!696507)))

(declare-fun c!120479 () Bool)

(assert (=> b!1226293 (= c!120479 (validKeyInArray!0 (select (arr!38187 lt!558666) #b00000000000000000000000000000000)))))

(declare-fun b!1226294 () Bool)

(declare-fun e!696506 () Bool)

(assert (=> b!1226294 (= e!696506 (contains!7054 Nil!27136 (select (arr!38187 lt!558666) #b00000000000000000000000000000000)))))

(declare-fun b!1226295 () Bool)

(assert (=> b!1226295 (= e!696507 call!60788)))

(declare-fun bm!60785 () Bool)

(assert (=> bm!60785 (= call!60788 (arrayNoDuplicates!0 lt!558666 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120479 (Cons!27135 (select (arr!38187 lt!558666) #b00000000000000000000000000000000) Nil!27136) Nil!27136)))))

(declare-fun b!1226296 () Bool)

(assert (=> b!1226296 (= e!696505 e!696508)))

(declare-fun res!815069 () Bool)

(assert (=> b!1226296 (=> (not res!815069) (not e!696508))))

(assert (=> b!1226296 (= res!815069 (not e!696506))))

(declare-fun res!815067 () Bool)

(assert (=> b!1226296 (=> (not res!815067) (not e!696506))))

(assert (=> b!1226296 (= res!815067 (validKeyInArray!0 (select (arr!38187 lt!558666) #b00000000000000000000000000000000)))))

(assert (= (and d!133965 (not res!815068)) b!1226296))

(assert (= (and b!1226296 res!815067) b!1226294))

(assert (= (and b!1226296 res!815069) b!1226293))

(assert (= (and b!1226293 c!120479) b!1226292))

(assert (= (and b!1226293 (not c!120479)) b!1226295))

(assert (= (or b!1226292 b!1226295) bm!60785))

(assert (=> b!1226293 m!1131329))

(assert (=> b!1226293 m!1131329))

(assert (=> b!1226293 m!1131337))

(assert (=> b!1226294 m!1131329))

(assert (=> b!1226294 m!1131329))

(declare-fun m!1131473 () Bool)

(assert (=> b!1226294 m!1131473))

(assert (=> bm!60785 m!1131329))

(declare-fun m!1131475 () Bool)

(assert (=> bm!60785 m!1131475))

(assert (=> b!1226296 m!1131329))

(assert (=> b!1226296 m!1131329))

(assert (=> b!1226296 m!1131337))

(assert (=> b!1226109 d!133965))

(declare-fun b!1226304 () Bool)

(declare-fun e!696514 () Bool)

(assert (=> b!1226304 (= e!696514 tp_is_empty!31185)))

(declare-fun mapIsEmpty!48682 () Bool)

(declare-fun mapRes!48682 () Bool)

(assert (=> mapIsEmpty!48682 mapRes!48682))

(declare-fun mapNonEmpty!48682 () Bool)

(declare-fun tp!92499 () Bool)

(declare-fun e!696513 () Bool)

(assert (=> mapNonEmpty!48682 (= mapRes!48682 (and tp!92499 e!696513))))

(declare-fun mapValue!48682 () ValueCell!14883)

(declare-fun mapKey!48682 () (_ BitVec 32))

(declare-fun mapRest!48682 () (Array (_ BitVec 32) ValueCell!14883))

(assert (=> mapNonEmpty!48682 (= mapRest!48676 (store mapRest!48682 mapKey!48682 mapValue!48682))))

(declare-fun b!1226303 () Bool)

(assert (=> b!1226303 (= e!696513 tp_is_empty!31185)))

(declare-fun condMapEmpty!48682 () Bool)

(declare-fun mapDefault!48682 () ValueCell!14883)

(assert (=> mapNonEmpty!48676 (= condMapEmpty!48682 (= mapRest!48676 ((as const (Array (_ BitVec 32) ValueCell!14883)) mapDefault!48682)))))

(assert (=> mapNonEmpty!48676 (= tp!92490 (and e!696514 mapRes!48682))))

(assert (= (and mapNonEmpty!48676 condMapEmpty!48682) mapIsEmpty!48682))

(assert (= (and mapNonEmpty!48676 (not condMapEmpty!48682)) mapNonEmpty!48682))

(assert (= (and mapNonEmpty!48682 ((_ is ValueCellFull!14883) mapValue!48682)) b!1226303))

(assert (= (and mapNonEmpty!48676 ((_ is ValueCellFull!14883) mapDefault!48682)) b!1226304))

(declare-fun m!1131477 () Bool)

(assert (=> mapNonEmpty!48682 m!1131477))

(declare-fun b_lambda!22495 () Bool)

(assert (= b_lambda!22491 (or (and start!101828 b_free!26481) b_lambda!22495)))

(declare-fun b_lambda!22497 () Bool)

(assert (= b_lambda!22489 (or (and start!101828 b_free!26481) b_lambda!22497)))

(declare-fun b_lambda!22499 () Bool)

(assert (= b_lambda!22493 (or (and start!101828 b_free!26481) b_lambda!22499)))

(declare-fun b_lambda!22501 () Bool)

(assert (= b_lambda!22487 (or (and start!101828 b_free!26481) b_lambda!22501)))

(declare-fun b_lambda!22503 () Bool)

(assert (= b_lambda!22481 (or (and start!101828 b_free!26481) b_lambda!22503)))

(declare-fun b_lambda!22505 () Bool)

(assert (= b_lambda!22485 (or (and start!101828 b_free!26481) b_lambda!22505)))

(declare-fun b_lambda!22507 () Bool)

(assert (= b_lambda!22479 (or (and start!101828 b_free!26481) b_lambda!22507)))

(declare-fun b_lambda!22509 () Bool)

(assert (= b_lambda!22483 (or (and start!101828 b_free!26481) b_lambda!22509)))

(declare-fun b_lambda!22511 () Bool)

(assert (= b_lambda!22477 (or (and start!101828 b_free!26481) b_lambda!22511)))

(check-sat (not b!1226294) (not b!1226293) (not b!1226185) (not b!1226256) (not b!1226277) (not b!1226291) (not bm!60768) (not b!1226269) (not b!1226261) (not bm!60780) (not b!1226247) (not b!1226234) (not bm!60782) (not b!1226268) (not mapNonEmpty!48682) (not b_lambda!22497) (not bm!60771) (not b!1226258) (not b!1226283) (not b!1226265) (not b_lambda!22505) (not b!1226279) (not b!1226248) (not b!1226188) (not b!1226259) (not b!1226296) (not b!1226271) (not d!133943) (not b_lambda!22501) (not d!133937) (not b!1226272) (not b!1226246) (not b!1226260) (not b!1226270) (not b!1226267) (not b!1226249) tp_is_empty!31185 (not b_lambda!22507) (not bm!60784) (not b!1226232) (not b!1226228) (not b!1226235) (not b_lambda!22509) (not b!1226198) (not bm!60774) (not b!1226226) b_and!44257 (not bm!60783) (not d!133963) (not b!1226236) (not b!1226280) (not b!1226253) (not b_lambda!22475) (not b!1226186) (not b!1226199) (not b!1226243) (not b!1226284) (not b_lambda!22503) (not b!1226225) (not d!133949) (not bm!60781) (not d!133959) (not b_lambda!22511) (not b_lambda!22495) (not b_lambda!22499) (not b!1226257) (not b!1226255) (not d!133941) (not b!1226273) (not bm!60785) (not b_next!26481) (not b!1226227) (not b!1226281) (not d!133945) (not d!133947) (not bm!60779))
(check-sat b_and!44257 (not b_next!26481))
