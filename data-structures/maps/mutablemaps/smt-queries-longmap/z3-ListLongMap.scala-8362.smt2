; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101792 () Bool)

(assert start!101792)

(declare-fun b_free!26445 () Bool)

(declare-fun b_next!26445 () Bool)

(assert (=> start!101792 (= b_free!26445 (not b_next!26445))))

(declare-fun tp!92382 () Bool)

(declare-fun b_and!44161 () Bool)

(assert (=> start!101792 (= tp!92382 b_and!44161)))

(declare-fun b!1225181 () Bool)

(declare-datatypes ((Unit!40544 0))(
  ( (Unit!40545) )
))
(declare-fun e!695903 () Unit!40544)

(declare-fun Unit!40546 () Unit!40544)

(assert (=> b!1225181 (= e!695903 Unit!40546)))

(declare-fun lt!558184 () Unit!40544)

(declare-datatypes ((array!79056 0))(
  ( (array!79057 (arr!38151 (Array (_ BitVec 32) (_ BitVec 64))) (size!38688 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79056)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79056 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40544)

(assert (=> b!1225181 (= lt!558184 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!79056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225181 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!558178 () Unit!40544)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79056 (_ BitVec 32) (_ BitVec 32)) Unit!40544)

(assert (=> b!1225181 (= lt!558178 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27108 0))(
  ( (Nil!27105) (Cons!27104 (h!28313 (_ BitVec 64)) (t!40540 List!27108)) )
))
(declare-fun arrayNoDuplicates!0 (array!79056 (_ BitVec 32) List!27108) Bool)

(assert (=> b!1225181 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27105)))

(declare-fun lt!558181 () Unit!40544)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79056 (_ BitVec 64) (_ BitVec 32) List!27108) Unit!40544)

(assert (=> b!1225181 (= lt!558181 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27105))))

(assert (=> b!1225181 false))

(declare-fun b!1225182 () Bool)

(declare-fun e!695898 () Bool)

(declare-fun tp_is_empty!31149 () Bool)

(assert (=> b!1225182 (= e!695898 tp_is_empty!31149)))

(declare-fun mapIsEmpty!48622 () Bool)

(declare-fun mapRes!48622 () Bool)

(assert (=> mapIsEmpty!48622 mapRes!48622))

(declare-fun b!1225183 () Bool)

(declare-fun e!695901 () Bool)

(declare-fun e!695895 () Bool)

(assert (=> b!1225183 (= e!695901 e!695895)))

(declare-fun res!814271 () Bool)

(assert (=> b!1225183 (=> res!814271 e!695895)))

(assert (=> b!1225183 (= res!814271 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46659 0))(
  ( (V!46660 (val!15631 Int)) )
))
(declare-fun zeroValue!944 () V!46659)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20298 0))(
  ( (tuple2!20299 (_1!10159 (_ BitVec 64)) (_2!10159 V!46659)) )
))
(declare-datatypes ((List!27109 0))(
  ( (Nil!27106) (Cons!27105 (h!28314 tuple2!20298) (t!40541 List!27109)) )
))
(declare-datatypes ((ListLongMap!18279 0))(
  ( (ListLongMap!18280 (toList!9155 List!27109)) )
))
(declare-fun lt!558174 () ListLongMap!18279)

(declare-datatypes ((ValueCell!14865 0))(
  ( (ValueCellFull!14865 (v!18294 V!46659)) (EmptyCell!14865) )
))
(declare-datatypes ((array!79058 0))(
  ( (array!79059 (arr!38152 (Array (_ BitVec 32) ValueCell!14865)) (size!38689 (_ BitVec 32))) )
))
(declare-fun lt!558175 () array!79058)

(declare-fun minValue!944 () V!46659)

(declare-fun lt!558173 () array!79056)

(declare-fun getCurrentListMapNoExtraKeys!5552 (array!79056 array!79058 (_ BitVec 32) (_ BitVec 32) V!46659 V!46659 (_ BitVec 32) Int) ListLongMap!18279)

(assert (=> b!1225183 (= lt!558174 (getCurrentListMapNoExtraKeys!5552 lt!558173 lt!558175 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!79058)

(declare-fun lt!558186 () V!46659)

(assert (=> b!1225183 (= lt!558175 (array!79059 (store (arr!38152 _values!996) i!673 (ValueCellFull!14865 lt!558186)) (size!38689 _values!996)))))

(declare-fun dynLambda!3446 (Int (_ BitVec 64)) V!46659)

(assert (=> b!1225183 (= lt!558186 (dynLambda!3446 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!558182 () ListLongMap!18279)

(assert (=> b!1225183 (= lt!558182 (getCurrentListMapNoExtraKeys!5552 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!48622 () Bool)

(declare-fun tp!92381 () Bool)

(declare-fun e!695894 () Bool)

(assert (=> mapNonEmpty!48622 (= mapRes!48622 (and tp!92381 e!695894))))

(declare-fun mapRest!48622 () (Array (_ BitVec 32) ValueCell!14865))

(declare-fun mapValue!48622 () ValueCell!14865)

(declare-fun mapKey!48622 () (_ BitVec 32))

(assert (=> mapNonEmpty!48622 (= (arr!38152 _values!996) (store mapRest!48622 mapKey!48622 mapValue!48622))))

(declare-fun b!1225184 () Bool)

(declare-fun e!695897 () Bool)

(assert (=> b!1225184 (= e!695895 e!695897)))

(declare-fun res!814270 () Bool)

(assert (=> b!1225184 (=> res!814270 e!695897)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225184 (= res!814270 (not (validKeyInArray!0 (select (arr!38151 _keys!1208) from!1455))))))

(declare-fun lt!558185 () ListLongMap!18279)

(declare-fun lt!558171 () ListLongMap!18279)

(assert (=> b!1225184 (= lt!558185 lt!558171)))

(declare-fun lt!558183 () ListLongMap!18279)

(declare-fun -!1991 (ListLongMap!18279 (_ BitVec 64)) ListLongMap!18279)

(assert (=> b!1225184 (= lt!558171 (-!1991 lt!558183 k0!934))))

(assert (=> b!1225184 (= lt!558185 (getCurrentListMapNoExtraKeys!5552 lt!558173 lt!558175 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1225184 (= lt!558183 (getCurrentListMapNoExtraKeys!5552 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!558172 () Unit!40544)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1193 (array!79056 array!79058 (_ BitVec 32) (_ BitVec 32) V!46659 V!46659 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40544)

(assert (=> b!1225184 (= lt!558172 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1193 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1225186 () Bool)

(declare-fun res!814276 () Bool)

(declare-fun e!695904 () Bool)

(assert (=> b!1225186 (=> (not res!814276) (not e!695904))))

(assert (=> b!1225186 (= res!814276 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38688 _keys!1208))))))

(declare-fun b!1225187 () Bool)

(declare-fun res!814274 () Bool)

(assert (=> b!1225187 (=> (not res!814274) (not e!695904))))

(assert (=> b!1225187 (= res!814274 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27105))))

(declare-fun b!1225188 () Bool)

(declare-fun Unit!40547 () Unit!40544)

(assert (=> b!1225188 (= e!695903 Unit!40547)))

(declare-fun b!1225189 () Bool)

(declare-fun e!695896 () Bool)

(declare-fun e!695900 () Bool)

(assert (=> b!1225189 (= e!695896 e!695900)))

(declare-fun res!814267 () Bool)

(assert (=> b!1225189 (=> res!814267 e!695900)))

(assert (=> b!1225189 (= res!814267 (not (= (select (arr!38151 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1225190 () Bool)

(declare-fun e!695902 () Bool)

(assert (=> b!1225190 (= e!695904 e!695902)))

(declare-fun res!814278 () Bool)

(assert (=> b!1225190 (=> (not res!814278) (not e!695902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79056 (_ BitVec 32)) Bool)

(assert (=> b!1225190 (= res!814278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558173 mask!1564))))

(assert (=> b!1225190 (= lt!558173 (array!79057 (store (arr!38151 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38688 _keys!1208)))))

(declare-fun b!1225191 () Bool)

(declare-fun res!814275 () Bool)

(assert (=> b!1225191 (=> (not res!814275) (not e!695904))))

(assert (=> b!1225191 (= res!814275 (= (select (arr!38151 _keys!1208) i!673) k0!934))))

(declare-fun b!1225192 () Bool)

(declare-fun res!814272 () Bool)

(assert (=> b!1225192 (=> (not res!814272) (not e!695904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225192 (= res!814272 (validMask!0 mask!1564))))

(declare-fun res!814268 () Bool)

(assert (=> start!101792 (=> (not res!814268) (not e!695904))))

(assert (=> start!101792 (= res!814268 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38688 _keys!1208))))))

(assert (=> start!101792 e!695904))

(assert (=> start!101792 tp_is_empty!31149))

(declare-fun array_inv!28936 (array!79056) Bool)

(assert (=> start!101792 (array_inv!28936 _keys!1208)))

(assert (=> start!101792 true))

(assert (=> start!101792 tp!92382))

(declare-fun e!695899 () Bool)

(declare-fun array_inv!28937 (array!79058) Bool)

(assert (=> start!101792 (and (array_inv!28937 _values!996) e!695899)))

(declare-fun b!1225185 () Bool)

(assert (=> b!1225185 (= e!695900 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1225193 () Bool)

(assert (=> b!1225193 (= e!695899 (and e!695898 mapRes!48622))))

(declare-fun condMapEmpty!48622 () Bool)

(declare-fun mapDefault!48622 () ValueCell!14865)

(assert (=> b!1225193 (= condMapEmpty!48622 (= (arr!38152 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14865)) mapDefault!48622)))))

(declare-fun b!1225194 () Bool)

(assert (=> b!1225194 (= e!695897 true)))

(declare-fun lt!558169 () ListLongMap!18279)

(declare-fun lt!558170 () ListLongMap!18279)

(assert (=> b!1225194 (= (-!1991 lt!558169 k0!934) lt!558170)))

(declare-fun lt!558180 () V!46659)

(declare-fun lt!558176 () Unit!40544)

(declare-fun addRemoveCommutativeForDiffKeys!230 (ListLongMap!18279 (_ BitVec 64) V!46659 (_ BitVec 64)) Unit!40544)

(assert (=> b!1225194 (= lt!558176 (addRemoveCommutativeForDiffKeys!230 lt!558183 (select (arr!38151 _keys!1208) from!1455) lt!558180 k0!934))))

(assert (=> b!1225194 (and (= lt!558182 lt!558169) (= lt!558171 lt!558185))))

(declare-fun lt!558179 () tuple2!20298)

(declare-fun +!4115 (ListLongMap!18279 tuple2!20298) ListLongMap!18279)

(assert (=> b!1225194 (= lt!558169 (+!4115 lt!558183 lt!558179))))

(assert (=> b!1225194 (not (= (select (arr!38151 _keys!1208) from!1455) k0!934))))

(declare-fun lt!558177 () Unit!40544)

(assert (=> b!1225194 (= lt!558177 e!695903)))

(declare-fun c!120432 () Bool)

(assert (=> b!1225194 (= c!120432 (= (select (arr!38151 _keys!1208) from!1455) k0!934))))

(assert (=> b!1225194 e!695896))

(declare-fun res!814265 () Bool)

(assert (=> b!1225194 (=> (not res!814265) (not e!695896))))

(assert (=> b!1225194 (= res!814265 (= lt!558174 lt!558170))))

(assert (=> b!1225194 (= lt!558170 (+!4115 lt!558171 lt!558179))))

(assert (=> b!1225194 (= lt!558179 (tuple2!20299 (select (arr!38151 _keys!1208) from!1455) lt!558180))))

(declare-fun get!19535 (ValueCell!14865 V!46659) V!46659)

(assert (=> b!1225194 (= lt!558180 (get!19535 (select (arr!38152 _values!996) from!1455) lt!558186))))

(declare-fun b!1225195 () Bool)

(declare-fun res!814269 () Bool)

(assert (=> b!1225195 (=> (not res!814269) (not e!695902))))

(assert (=> b!1225195 (= res!814269 (arrayNoDuplicates!0 lt!558173 #b00000000000000000000000000000000 Nil!27105))))

(declare-fun b!1225196 () Bool)

(declare-fun res!814277 () Bool)

(assert (=> b!1225196 (=> (not res!814277) (not e!695904))))

(assert (=> b!1225196 (= res!814277 (and (= (size!38689 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38688 _keys!1208) (size!38689 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225197 () Bool)

(declare-fun res!814266 () Bool)

(assert (=> b!1225197 (=> (not res!814266) (not e!695904))))

(assert (=> b!1225197 (= res!814266 (validKeyInArray!0 k0!934))))

(declare-fun b!1225198 () Bool)

(assert (=> b!1225198 (= e!695902 (not e!695901))))

(declare-fun res!814273 () Bool)

(assert (=> b!1225198 (=> res!814273 e!695901)))

(assert (=> b!1225198 (= res!814273 (bvsgt from!1455 i!673))))

(assert (=> b!1225198 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!558187 () Unit!40544)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79056 (_ BitVec 64) (_ BitVec 32)) Unit!40544)

(assert (=> b!1225198 (= lt!558187 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1225199 () Bool)

(declare-fun res!814264 () Bool)

(assert (=> b!1225199 (=> (not res!814264) (not e!695904))))

(assert (=> b!1225199 (= res!814264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225200 () Bool)

(assert (=> b!1225200 (= e!695894 tp_is_empty!31149)))

(assert (= (and start!101792 res!814268) b!1225192))

(assert (= (and b!1225192 res!814272) b!1225196))

(assert (= (and b!1225196 res!814277) b!1225199))

(assert (= (and b!1225199 res!814264) b!1225187))

(assert (= (and b!1225187 res!814274) b!1225186))

(assert (= (and b!1225186 res!814276) b!1225197))

(assert (= (and b!1225197 res!814266) b!1225191))

(assert (= (and b!1225191 res!814275) b!1225190))

(assert (= (and b!1225190 res!814278) b!1225195))

(assert (= (and b!1225195 res!814269) b!1225198))

(assert (= (and b!1225198 (not res!814273)) b!1225183))

(assert (= (and b!1225183 (not res!814271)) b!1225184))

(assert (= (and b!1225184 (not res!814270)) b!1225194))

(assert (= (and b!1225194 res!814265) b!1225189))

(assert (= (and b!1225189 (not res!814267)) b!1225185))

(assert (= (and b!1225194 c!120432) b!1225181))

(assert (= (and b!1225194 (not c!120432)) b!1225188))

(assert (= (and b!1225193 condMapEmpty!48622) mapIsEmpty!48622))

(assert (= (and b!1225193 (not condMapEmpty!48622)) mapNonEmpty!48622))

(get-info :version)

(assert (= (and mapNonEmpty!48622 ((_ is ValueCellFull!14865) mapValue!48622)) b!1225200))

(assert (= (and b!1225193 ((_ is ValueCellFull!14865) mapDefault!48622)) b!1225182))

(assert (= start!101792 b!1225193))

(declare-fun b_lambda!22435 () Bool)

(assert (=> (not b_lambda!22435) (not b!1225183)))

(declare-fun t!40539 () Bool)

(declare-fun tb!11253 () Bool)

(assert (=> (and start!101792 (= defaultEntry!1004 defaultEntry!1004) t!40539) tb!11253))

(declare-fun result!23111 () Bool)

(assert (=> tb!11253 (= result!23111 tp_is_empty!31149)))

(assert (=> b!1225183 t!40539))

(declare-fun b_and!44163 () Bool)

(assert (= b_and!44161 (and (=> t!40539 result!23111) b_and!44163)))

(declare-fun m!1130303 () Bool)

(assert (=> b!1225189 m!1130303))

(declare-fun m!1130305 () Bool)

(assert (=> b!1225187 m!1130305))

(declare-fun m!1130307 () Bool)

(assert (=> b!1225191 m!1130307))

(declare-fun m!1130309 () Bool)

(assert (=> b!1225185 m!1130309))

(declare-fun m!1130311 () Bool)

(assert (=> b!1225190 m!1130311))

(declare-fun m!1130313 () Bool)

(assert (=> b!1225190 m!1130313))

(declare-fun m!1130315 () Bool)

(assert (=> mapNonEmpty!48622 m!1130315))

(declare-fun m!1130317 () Bool)

(assert (=> b!1225192 m!1130317))

(declare-fun m!1130319 () Bool)

(assert (=> b!1225183 m!1130319))

(declare-fun m!1130321 () Bool)

(assert (=> b!1225183 m!1130321))

(declare-fun m!1130323 () Bool)

(assert (=> b!1225183 m!1130323))

(declare-fun m!1130325 () Bool)

(assert (=> b!1225183 m!1130325))

(declare-fun m!1130327 () Bool)

(assert (=> b!1225195 m!1130327))

(declare-fun m!1130329 () Bool)

(assert (=> b!1225181 m!1130329))

(declare-fun m!1130331 () Bool)

(assert (=> b!1225181 m!1130331))

(declare-fun m!1130333 () Bool)

(assert (=> b!1225181 m!1130333))

(declare-fun m!1130335 () Bool)

(assert (=> b!1225181 m!1130335))

(declare-fun m!1130337 () Bool)

(assert (=> b!1225181 m!1130337))

(declare-fun m!1130339 () Bool)

(assert (=> b!1225197 m!1130339))

(declare-fun m!1130341 () Bool)

(assert (=> b!1225199 m!1130341))

(declare-fun m!1130343 () Bool)

(assert (=> b!1225184 m!1130343))

(declare-fun m!1130345 () Bool)

(assert (=> b!1225184 m!1130345))

(assert (=> b!1225184 m!1130303))

(declare-fun m!1130347 () Bool)

(assert (=> b!1225184 m!1130347))

(declare-fun m!1130349 () Bool)

(assert (=> b!1225184 m!1130349))

(assert (=> b!1225184 m!1130303))

(declare-fun m!1130351 () Bool)

(assert (=> b!1225184 m!1130351))

(declare-fun m!1130353 () Bool)

(assert (=> start!101792 m!1130353))

(declare-fun m!1130355 () Bool)

(assert (=> start!101792 m!1130355))

(declare-fun m!1130357 () Bool)

(assert (=> b!1225194 m!1130357))

(declare-fun m!1130359 () Bool)

(assert (=> b!1225194 m!1130359))

(declare-fun m!1130361 () Bool)

(assert (=> b!1225194 m!1130361))

(assert (=> b!1225194 m!1130357))

(declare-fun m!1130363 () Bool)

(assert (=> b!1225194 m!1130363))

(assert (=> b!1225194 m!1130303))

(declare-fun m!1130365 () Bool)

(assert (=> b!1225194 m!1130365))

(assert (=> b!1225194 m!1130303))

(declare-fun m!1130367 () Bool)

(assert (=> b!1225194 m!1130367))

(declare-fun m!1130369 () Bool)

(assert (=> b!1225198 m!1130369))

(declare-fun m!1130371 () Bool)

(assert (=> b!1225198 m!1130371))

(check-sat (not b_lambda!22435) (not b!1225194) (not b!1225197) tp_is_empty!31149 (not b!1225183) b_and!44163 (not start!101792) (not b!1225192) (not mapNonEmpty!48622) (not b!1225195) (not b!1225187) (not b!1225190) (not b!1225184) (not b!1225185) (not b!1225198) (not b_next!26445) (not b!1225181) (not b!1225199))
(check-sat b_and!44163 (not b_next!26445))
