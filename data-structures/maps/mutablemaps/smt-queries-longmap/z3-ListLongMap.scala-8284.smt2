; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100944 () Bool)

(assert start!100944)

(declare-fun b_free!25977 () Bool)

(declare-fun b_next!25977 () Bool)

(assert (=> start!100944 (= b_free!25977 (not b_next!25977))))

(declare-fun tp!90941 () Bool)

(declare-fun b_and!43009 () Bool)

(assert (=> start!100944 (= tp!90941 b_and!43009)))

(declare-fun b!1208224 () Bool)

(declare-fun res!803244 () Bool)

(declare-fun e!686222 () Bool)

(assert (=> b!1208224 (=> (not res!803244) (not e!686222))))

(declare-datatypes ((array!78120 0))(
  ( (array!78121 (arr!37695 (Array (_ BitVec 32) (_ BitVec 64))) (size!38232 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78120)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78120 (_ BitVec 32)) Bool)

(assert (=> b!1208224 (= res!803244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1208226 () Bool)

(declare-fun e!686214 () Bool)

(declare-fun tp_is_empty!30681 () Bool)

(assert (=> b!1208226 (= e!686214 tp_is_empty!30681)))

(declare-fun b!1208227 () Bool)

(declare-fun res!803246 () Bool)

(assert (=> b!1208227 (=> (not res!803246) (not e!686222))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1208227 (= res!803246 (validKeyInArray!0 k0!934))))

(declare-datatypes ((V!46035 0))(
  ( (V!46036 (val!15397 Int)) )
))
(declare-fun zeroValue!944 () V!46035)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19898 0))(
  ( (tuple2!19899 (_1!9959 (_ BitVec 64)) (_2!9959 V!46035)) )
))
(declare-datatypes ((List!26720 0))(
  ( (Nil!26717) (Cons!26716 (h!27925 tuple2!19898) (t!39684 List!26720)) )
))
(declare-datatypes ((ListLongMap!17879 0))(
  ( (ListLongMap!17880 (toList!8955 List!26720)) )
))
(declare-fun call!59122 () ListLongMap!17879)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14631 0))(
  ( (ValueCellFull!14631 (v!18046 V!46035)) (EmptyCell!14631) )
))
(declare-datatypes ((array!78122 0))(
  ( (array!78123 (arr!37696 (Array (_ BitVec 32) ValueCell!14631)) (size!38233 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78122)

(declare-fun minValue!944 () V!46035)

(declare-fun bm!59118 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5362 (array!78120 array!78122 (_ BitVec 32) (_ BitVec 32) V!46035 V!46035 (_ BitVec 32) Int) ListLongMap!17879)

(assert (=> bm!59118 (= call!59122 (getCurrentListMapNoExtraKeys!5362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208228 () Bool)

(declare-fun e!686224 () Bool)

(declare-fun e!686212 () Bool)

(assert (=> b!1208228 (= e!686224 e!686212)))

(declare-fun res!803255 () Bool)

(assert (=> b!1208228 (=> res!803255 e!686212)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1208228 (= res!803255 (not (= from!1455 i!673)))))

(declare-fun lt!548291 () array!78120)

(declare-fun lt!548298 () array!78122)

(declare-fun lt!548293 () ListLongMap!17879)

(assert (=> b!1208228 (= lt!548293 (getCurrentListMapNoExtraKeys!5362 lt!548291 lt!548298 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3280 (Int (_ BitVec 64)) V!46035)

(assert (=> b!1208228 (= lt!548298 (array!78123 (store (arr!37696 _values!996) i!673 (ValueCellFull!14631 (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38233 _values!996)))))

(declare-fun lt!548297 () ListLongMap!17879)

(assert (=> b!1208228 (= lt!548297 (getCurrentListMapNoExtraKeys!5362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1208229 () Bool)

(declare-fun e!686211 () Bool)

(declare-fun e!686218 () Bool)

(assert (=> b!1208229 (= e!686211 e!686218)))

(declare-fun res!803248 () Bool)

(assert (=> b!1208229 (=> res!803248 e!686218)))

(declare-fun lt!548295 () ListLongMap!17879)

(declare-fun contains!6960 (ListLongMap!17879 (_ BitVec 64)) Bool)

(assert (=> b!1208229 (= res!803248 (not (contains!6960 lt!548295 k0!934)))))

(assert (=> b!1208229 (= lt!548295 (getCurrentListMapNoExtraKeys!5362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208230 () Bool)

(declare-fun e!686223 () Bool)

(assert (=> b!1208230 (= e!686222 e!686223)))

(declare-fun res!803245 () Bool)

(assert (=> b!1208230 (=> (not res!803245) (not e!686223))))

(assert (=> b!1208230 (= res!803245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548291 mask!1564))))

(assert (=> b!1208230 (= lt!548291 (array!78121 (store (arr!37695 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38232 _keys!1208)))))

(declare-fun call!59124 () ListLongMap!17879)

(declare-fun bm!59119 () Bool)

(assert (=> bm!59119 (= call!59124 (getCurrentListMapNoExtraKeys!5362 lt!548291 lt!548298 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208231 () Bool)

(declare-fun res!803250 () Bool)

(assert (=> b!1208231 (=> (not res!803250) (not e!686222))))

(declare-datatypes ((List!26721 0))(
  ( (Nil!26718) (Cons!26717 (h!27926 (_ BitVec 64)) (t!39685 List!26721)) )
))
(declare-fun arrayNoDuplicates!0 (array!78120 (_ BitVec 32) List!26721) Bool)

(assert (=> b!1208231 (= res!803250 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26718))))

(declare-fun b!1208232 () Bool)

(declare-fun lt!548292 () Bool)

(declare-fun e!686213 () Bool)

(assert (=> b!1208232 (= e!686213 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!548292) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1208233 () Bool)

(declare-fun res!803249 () Bool)

(assert (=> b!1208233 (=> (not res!803249) (not e!686222))))

(assert (=> b!1208233 (= res!803249 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38232 _keys!1208))))))

(declare-fun bm!59120 () Bool)

(declare-datatypes ((Unit!39980 0))(
  ( (Unit!39981) )
))
(declare-fun call!59127 () Unit!39980)

(declare-fun c!118802 () Bool)

(declare-fun c!118805 () Bool)

(declare-fun addStillContains!1048 (ListLongMap!17879 (_ BitVec 64) V!46035 (_ BitVec 64)) Unit!39980)

(assert (=> bm!59120 (= call!59127 (addStillContains!1048 lt!548295 (ite (or c!118802 c!118805) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118802 c!118805) zeroValue!944 minValue!944) k0!934))))

(declare-fun res!803243 () Bool)

(assert (=> start!100944 (=> (not res!803243) (not e!686222))))

(assert (=> start!100944 (= res!803243 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38232 _keys!1208))))))

(assert (=> start!100944 e!686222))

(assert (=> start!100944 tp_is_empty!30681))

(declare-fun array_inv!28620 (array!78120) Bool)

(assert (=> start!100944 (array_inv!28620 _keys!1208)))

(assert (=> start!100944 true))

(assert (=> start!100944 tp!90941))

(declare-fun e!686210 () Bool)

(declare-fun array_inv!28621 (array!78122) Bool)

(assert (=> start!100944 (and (array_inv!28621 _values!996) e!686210)))

(declare-fun b!1208225 () Bool)

(assert (=> b!1208225 (= e!686212 e!686211)))

(declare-fun res!803247 () Bool)

(assert (=> b!1208225 (=> res!803247 e!686211)))

(assert (=> b!1208225 (= res!803247 (not (= (select (arr!37695 _keys!1208) from!1455) k0!934)))))

(declare-fun e!686216 () Bool)

(assert (=> b!1208225 e!686216))

(declare-fun c!118804 () Bool)

(assert (=> b!1208225 (= c!118804 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!548289 () Unit!39980)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1065 (array!78120 array!78122 (_ BitVec 32) (_ BitVec 32) V!46035 V!46035 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39980)

(assert (=> b!1208225 (= lt!548289 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1065 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208234 () Bool)

(assert (=> b!1208234 (= e!686223 (not e!686224))))

(declare-fun res!803257 () Bool)

(assert (=> b!1208234 (=> res!803257 e!686224)))

(assert (=> b!1208234 (= res!803257 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1208234 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!548296 () Unit!39980)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78120 (_ BitVec 64) (_ BitVec 32)) Unit!39980)

(assert (=> b!1208234 (= lt!548296 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!59121 () Bool)

(declare-fun call!59128 () Bool)

(declare-fun call!59123 () Bool)

(assert (=> bm!59121 (= call!59128 call!59123)))

(declare-fun b!1208235 () Bool)

(assert (=> b!1208235 call!59128))

(declare-fun lt!548294 () Unit!39980)

(declare-fun call!59125 () Unit!39980)

(assert (=> b!1208235 (= lt!548294 call!59125)))

(declare-fun e!686221 () Unit!39980)

(assert (=> b!1208235 (= e!686221 lt!548294)))

(declare-fun b!1208236 () Bool)

(assert (=> b!1208236 (= e!686216 (= call!59124 call!59122))))

(declare-fun bm!59122 () Bool)

(declare-fun call!59121 () ListLongMap!17879)

(declare-fun call!59126 () ListLongMap!17879)

(assert (=> bm!59122 (= call!59121 call!59126)))

(declare-fun b!1208237 () Bool)

(declare-fun e!686215 () Bool)

(assert (=> b!1208237 (= e!686215 tp_is_empty!30681)))

(declare-fun b!1208238 () Bool)

(declare-fun e!686209 () Unit!39980)

(assert (=> b!1208238 (= e!686209 e!686221)))

(assert (=> b!1208238 (= c!118805 (and (not lt!548292) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1208239 () Bool)

(declare-fun -!1861 (ListLongMap!17879 (_ BitVec 64)) ListLongMap!17879)

(assert (=> b!1208239 (= e!686216 (= call!59124 (-!1861 call!59122 k0!934)))))

(declare-fun b!1208240 () Bool)

(declare-fun lt!548300 () Unit!39980)

(assert (=> b!1208240 (= e!686209 lt!548300)))

(declare-fun lt!548288 () Unit!39980)

(assert (=> b!1208240 (= lt!548288 call!59127)))

(declare-fun lt!548299 () ListLongMap!17879)

(assert (=> b!1208240 (= lt!548299 call!59126)))

(assert (=> b!1208240 call!59123))

(assert (=> b!1208240 (= lt!548300 (addStillContains!1048 lt!548299 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun +!3983 (ListLongMap!17879 tuple2!19898) ListLongMap!17879)

(assert (=> b!1208240 (contains!6960 (+!3983 lt!548299 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1208241 () Bool)

(declare-fun res!803258 () Bool)

(assert (=> b!1208241 (=> (not res!803258) (not e!686222))))

(assert (=> b!1208241 (= res!803258 (and (= (size!38233 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38232 _keys!1208) (size!38233 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47884 () Bool)

(declare-fun mapRes!47884 () Bool)

(assert (=> mapIsEmpty!47884 mapRes!47884))

(declare-fun b!1208242 () Bool)

(declare-fun e!686225 () Bool)

(assert (=> b!1208242 (= e!686225 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1208243 () Bool)

(declare-fun c!118803 () Bool)

(assert (=> b!1208243 (= c!118803 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!548292))))

(declare-fun e!686217 () Unit!39980)

(assert (=> b!1208243 (= e!686221 e!686217)))

(declare-fun b!1208244 () Bool)

(declare-fun e!686220 () Bool)

(declare-fun noDuplicate!1645 (List!26721) Bool)

(assert (=> b!1208244 (= e!686220 (noDuplicate!1645 Nil!26718))))

(declare-fun b!1208245 () Bool)

(declare-fun res!803252 () Bool)

(assert (=> b!1208245 (=> (not res!803252) (not e!686222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1208245 (= res!803252 (validMask!0 mask!1564))))

(declare-fun b!1208246 () Bool)

(assert (=> b!1208246 (= e!686218 e!686220)))

(declare-fun res!803251 () Bool)

(assert (=> b!1208246 (=> res!803251 e!686220)))

(assert (=> b!1208246 (= res!803251 (or (bvsge (size!38232 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 _keys!1208)) (bvsge from!1455 (size!38232 _keys!1208))))))

(assert (=> b!1208246 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26718)))

(declare-fun lt!548286 () Unit!39980)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78120 (_ BitVec 32) (_ BitVec 32)) Unit!39980)

(assert (=> b!1208246 (= lt!548286 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1208246 e!686225))

(declare-fun res!803253 () Bool)

(assert (=> b!1208246 (=> (not res!803253) (not e!686225))))

(assert (=> b!1208246 (= res!803253 e!686213)))

(declare-fun c!118801 () Bool)

(assert (=> b!1208246 (= c!118801 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548290 () Unit!39980)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!585 (array!78120 array!78122 (_ BitVec 32) (_ BitVec 32) V!46035 V!46035 (_ BitVec 64) (_ BitVec 32) Int) Unit!39980)

(assert (=> b!1208246 (= lt!548290 (lemmaListMapContainsThenArrayContainsFrom!585 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548287 () Unit!39980)

(assert (=> b!1208246 (= lt!548287 e!686209)))

(assert (=> b!1208246 (= c!118802 (and (not lt!548292) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1208246 (= lt!548292 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!59123 () Bool)

(assert (=> bm!59123 (= call!59125 call!59127)))

(declare-fun bm!59124 () Bool)

(assert (=> bm!59124 (= call!59126 (+!3983 lt!548295 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1208247 () Bool)

(declare-fun lt!548301 () Unit!39980)

(assert (=> b!1208247 (= e!686217 lt!548301)))

(assert (=> b!1208247 (= lt!548301 call!59125)))

(assert (=> b!1208247 call!59128))

(declare-fun b!1208248 () Bool)

(assert (=> b!1208248 (= e!686210 (and e!686215 mapRes!47884))))

(declare-fun condMapEmpty!47884 () Bool)

(declare-fun mapDefault!47884 () ValueCell!14631)

(assert (=> b!1208248 (= condMapEmpty!47884 (= (arr!37696 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14631)) mapDefault!47884)))))

(declare-fun b!1208249 () Bool)

(declare-fun res!803254 () Bool)

(assert (=> b!1208249 (=> (not res!803254) (not e!686222))))

(assert (=> b!1208249 (= res!803254 (= (select (arr!37695 _keys!1208) i!673) k0!934))))

(declare-fun b!1208250 () Bool)

(assert (=> b!1208250 (= e!686213 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!47884 () Bool)

(declare-fun tp!90942 () Bool)

(assert (=> mapNonEmpty!47884 (= mapRes!47884 (and tp!90942 e!686214))))

(declare-fun mapValue!47884 () ValueCell!14631)

(declare-fun mapKey!47884 () (_ BitVec 32))

(declare-fun mapRest!47884 () (Array (_ BitVec 32) ValueCell!14631))

(assert (=> mapNonEmpty!47884 (= (arr!37696 _values!996) (store mapRest!47884 mapKey!47884 mapValue!47884))))

(declare-fun b!1208251 () Bool)

(declare-fun res!803256 () Bool)

(assert (=> b!1208251 (=> (not res!803256) (not e!686223))))

(assert (=> b!1208251 (= res!803256 (arrayNoDuplicates!0 lt!548291 #b00000000000000000000000000000000 Nil!26718))))

(declare-fun bm!59125 () Bool)

(assert (=> bm!59125 (= call!59123 (contains!6960 (ite c!118802 lt!548299 call!59121) k0!934))))

(declare-fun b!1208252 () Bool)

(declare-fun Unit!39982 () Unit!39980)

(assert (=> b!1208252 (= e!686217 Unit!39982)))

(assert (= (and start!100944 res!803243) b!1208245))

(assert (= (and b!1208245 res!803252) b!1208241))

(assert (= (and b!1208241 res!803258) b!1208224))

(assert (= (and b!1208224 res!803244) b!1208231))

(assert (= (and b!1208231 res!803250) b!1208233))

(assert (= (and b!1208233 res!803249) b!1208227))

(assert (= (and b!1208227 res!803246) b!1208249))

(assert (= (and b!1208249 res!803254) b!1208230))

(assert (= (and b!1208230 res!803245) b!1208251))

(assert (= (and b!1208251 res!803256) b!1208234))

(assert (= (and b!1208234 (not res!803257)) b!1208228))

(assert (= (and b!1208228 (not res!803255)) b!1208225))

(assert (= (and b!1208225 c!118804) b!1208239))

(assert (= (and b!1208225 (not c!118804)) b!1208236))

(assert (= (or b!1208239 b!1208236) bm!59119))

(assert (= (or b!1208239 b!1208236) bm!59118))

(assert (= (and b!1208225 (not res!803247)) b!1208229))

(assert (= (and b!1208229 (not res!803248)) b!1208246))

(assert (= (and b!1208246 c!118802) b!1208240))

(assert (= (and b!1208246 (not c!118802)) b!1208238))

(assert (= (and b!1208238 c!118805) b!1208235))

(assert (= (and b!1208238 (not c!118805)) b!1208243))

(assert (= (and b!1208243 c!118803) b!1208247))

(assert (= (and b!1208243 (not c!118803)) b!1208252))

(assert (= (or b!1208235 b!1208247) bm!59123))

(assert (= (or b!1208235 b!1208247) bm!59122))

(assert (= (or b!1208235 b!1208247) bm!59121))

(assert (= (or b!1208240 bm!59121) bm!59125))

(assert (= (or b!1208240 bm!59123) bm!59120))

(assert (= (or b!1208240 bm!59122) bm!59124))

(assert (= (and b!1208246 c!118801) b!1208250))

(assert (= (and b!1208246 (not c!118801)) b!1208232))

(assert (= (and b!1208246 res!803253) b!1208242))

(assert (= (and b!1208246 (not res!803251)) b!1208244))

(assert (= (and b!1208248 condMapEmpty!47884) mapIsEmpty!47884))

(assert (= (and b!1208248 (not condMapEmpty!47884)) mapNonEmpty!47884))

(get-info :version)

(assert (= (and mapNonEmpty!47884 ((_ is ValueCellFull!14631) mapValue!47884)) b!1208226))

(assert (= (and b!1208248 ((_ is ValueCellFull!14631) mapDefault!47884)) b!1208237))

(assert (= start!100944 b!1208248))

(declare-fun b_lambda!21511 () Bool)

(assert (=> (not b_lambda!21511) (not b!1208228)))

(declare-fun t!39683 () Bool)

(declare-fun tb!10785 () Bool)

(assert (=> (and start!100944 (= defaultEntry!1004 defaultEntry!1004) t!39683) tb!10785))

(declare-fun result!22151 () Bool)

(assert (=> tb!10785 (= result!22151 tp_is_empty!30681)))

(assert (=> b!1208228 t!39683))

(declare-fun b_and!43011 () Bool)

(assert (= b_and!43009 (and (=> t!39683 result!22151) b_and!43011)))

(declare-fun m!1114067 () Bool)

(assert (=> b!1208249 m!1114067))

(declare-fun m!1114069 () Bool)

(assert (=> b!1208251 m!1114069))

(declare-fun m!1114071 () Bool)

(assert (=> b!1208242 m!1114071))

(declare-fun m!1114073 () Bool)

(assert (=> b!1208246 m!1114073))

(declare-fun m!1114075 () Bool)

(assert (=> b!1208246 m!1114075))

(declare-fun m!1114077 () Bool)

(assert (=> b!1208246 m!1114077))

(declare-fun m!1114079 () Bool)

(assert (=> b!1208229 m!1114079))

(declare-fun m!1114081 () Bool)

(assert (=> b!1208229 m!1114081))

(declare-fun m!1114083 () Bool)

(assert (=> b!1208231 m!1114083))

(declare-fun m!1114085 () Bool)

(assert (=> b!1208224 m!1114085))

(declare-fun m!1114087 () Bool)

(assert (=> b!1208245 m!1114087))

(declare-fun m!1114089 () Bool)

(assert (=> b!1208234 m!1114089))

(declare-fun m!1114091 () Bool)

(assert (=> b!1208234 m!1114091))

(declare-fun m!1114093 () Bool)

(assert (=> b!1208240 m!1114093))

(declare-fun m!1114095 () Bool)

(assert (=> b!1208240 m!1114095))

(assert (=> b!1208240 m!1114095))

(declare-fun m!1114097 () Bool)

(assert (=> b!1208240 m!1114097))

(declare-fun m!1114099 () Bool)

(assert (=> b!1208244 m!1114099))

(declare-fun m!1114101 () Bool)

(assert (=> bm!59119 m!1114101))

(assert (=> b!1208250 m!1114071))

(declare-fun m!1114103 () Bool)

(assert (=> b!1208227 m!1114103))

(declare-fun m!1114105 () Bool)

(assert (=> bm!59124 m!1114105))

(declare-fun m!1114107 () Bool)

(assert (=> bm!59125 m!1114107))

(declare-fun m!1114109 () Bool)

(assert (=> bm!59120 m!1114109))

(declare-fun m!1114111 () Bool)

(assert (=> mapNonEmpty!47884 m!1114111))

(declare-fun m!1114113 () Bool)

(assert (=> b!1208239 m!1114113))

(declare-fun m!1114115 () Bool)

(assert (=> b!1208228 m!1114115))

(declare-fun m!1114117 () Bool)

(assert (=> b!1208228 m!1114117))

(declare-fun m!1114119 () Bool)

(assert (=> b!1208228 m!1114119))

(declare-fun m!1114121 () Bool)

(assert (=> b!1208228 m!1114121))

(declare-fun m!1114123 () Bool)

(assert (=> start!100944 m!1114123))

(declare-fun m!1114125 () Bool)

(assert (=> start!100944 m!1114125))

(declare-fun m!1114127 () Bool)

(assert (=> b!1208230 m!1114127))

(declare-fun m!1114129 () Bool)

(assert (=> b!1208230 m!1114129))

(declare-fun m!1114131 () Bool)

(assert (=> b!1208225 m!1114131))

(declare-fun m!1114133 () Bool)

(assert (=> b!1208225 m!1114133))

(assert (=> bm!59118 m!1114081))

(check-sat (not b!1208234) (not bm!59125) (not b!1208246) (not bm!59120) (not b!1208231) (not b!1208225) (not b!1208244) (not b_lambda!21511) (not b!1208230) (not b!1208245) (not b!1208239) (not b!1208242) (not bm!59119) (not b_next!25977) (not start!100944) (not b!1208228) b_and!43011 (not b!1208224) (not mapNonEmpty!47884) (not b!1208229) (not bm!59118) (not b!1208240) (not b!1208251) (not b!1208227) (not bm!59124) (not b!1208250) tp_is_empty!30681)
(check-sat b_and!43011 (not b_next!25977))
(get-model)

(declare-fun b_lambda!21515 () Bool)

(assert (= b_lambda!21511 (or (and start!100944 b_free!25977) b_lambda!21515)))

(check-sat (not b!1208234) (not bm!59125) (not b!1208246) (not bm!59120) (not b!1208231) (not b!1208225) (not b!1208244) (not b!1208230) (not b!1208245) (not b!1208239) (not b!1208242) (not bm!59119) (not b_next!25977) (not start!100944) (not b!1208228) b_and!43011 (not b!1208224) (not mapNonEmpty!47884) (not b!1208229) (not bm!59118) (not b!1208240) (not b!1208251) (not b_lambda!21515) (not b!1208227) (not bm!59124) (not b!1208250) tp_is_empty!30681)
(check-sat b_and!43011 (not b_next!25977))
(get-model)

(declare-fun d!133149 () Bool)

(assert (=> d!133149 (= (array_inv!28620 _keys!1208) (bvsge (size!38232 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100944 d!133149))

(declare-fun d!133151 () Bool)

(assert (=> d!133151 (= (array_inv!28621 _values!996) (bvsge (size!38233 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100944 d!133151))

(declare-fun bm!59152 () Bool)

(declare-fun call!59155 () ListLongMap!17879)

(assert (=> bm!59152 (= call!59155 (getCurrentListMapNoExtraKeys!5362 lt!548291 lt!548298 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1208368 () Bool)

(declare-fun e!686296 () Bool)

(declare-fun lt!548367 () ListLongMap!17879)

(assert (=> b!1208368 (= e!686296 (= lt!548367 (getCurrentListMapNoExtraKeys!5362 lt!548291 lt!548298 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1208369 () Bool)

(declare-fun e!686293 () ListLongMap!17879)

(assert (=> b!1208369 (= e!686293 call!59155)))

(declare-fun b!1208370 () Bool)

(declare-fun e!686292 () ListLongMap!17879)

(assert (=> b!1208370 (= e!686292 e!686293)))

(declare-fun c!118830 () Bool)

(assert (=> b!1208370 (= c!118830 (validKeyInArray!0 (select (arr!37695 lt!548291) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1208371 () Bool)

(declare-fun e!686291 () Bool)

(declare-fun e!686297 () Bool)

(assert (=> b!1208371 (= e!686291 e!686297)))

(declare-fun c!118829 () Bool)

(declare-fun e!686295 () Bool)

(assert (=> b!1208371 (= c!118829 e!686295)))

(declare-fun res!803315 () Bool)

(assert (=> b!1208371 (=> (not res!803315) (not e!686295))))

(assert (=> b!1208371 (= res!803315 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 lt!548291)))))

(declare-fun d!133153 () Bool)

(assert (=> d!133153 e!686291))

(declare-fun res!803318 () Bool)

(assert (=> d!133153 (=> (not res!803318) (not e!686291))))

(assert (=> d!133153 (= res!803318 (not (contains!6960 lt!548367 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133153 (= lt!548367 e!686292)))

(declare-fun c!118832 () Bool)

(assert (=> d!133153 (= c!118832 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 lt!548291)))))

(assert (=> d!133153 (validMask!0 mask!1564)))

(assert (=> d!133153 (= (getCurrentListMapNoExtraKeys!5362 lt!548291 lt!548298 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!548367)))

(declare-fun b!1208372 () Bool)

(assert (=> b!1208372 (= e!686297 e!686296)))

(declare-fun c!118831 () Bool)

(assert (=> b!1208372 (= c!118831 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 lt!548291)))))

(declare-fun b!1208373 () Bool)

(declare-fun isEmpty!993 (ListLongMap!17879) Bool)

(assert (=> b!1208373 (= e!686296 (isEmpty!993 lt!548367))))

(declare-fun b!1208374 () Bool)

(assert (=> b!1208374 (= e!686295 (validKeyInArray!0 (select (arr!37695 lt!548291) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1208374 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1208375 () Bool)

(assert (=> b!1208375 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 lt!548291)))))

(assert (=> b!1208375 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38233 lt!548298)))))

(declare-fun e!686294 () Bool)

(declare-fun apply!1001 (ListLongMap!17879 (_ BitVec 64)) V!46035)

(declare-fun get!19253 (ValueCell!14631 V!46035) V!46035)

(assert (=> b!1208375 (= e!686294 (= (apply!1001 lt!548367 (select (arr!37695 lt!548291) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19253 (select (arr!37696 lt!548298) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1208376 () Bool)

(declare-fun lt!548369 () Unit!39980)

(declare-fun lt!548366 () Unit!39980)

(assert (=> b!1208376 (= lt!548369 lt!548366)))

(declare-fun lt!548364 () (_ BitVec 64))

(declare-fun lt!548365 () ListLongMap!17879)

(declare-fun lt!548370 () (_ BitVec 64))

(declare-fun lt!548368 () V!46035)

(assert (=> b!1208376 (not (contains!6960 (+!3983 lt!548365 (tuple2!19899 lt!548364 lt!548368)) lt!548370))))

(declare-fun addStillNotContains!296 (ListLongMap!17879 (_ BitVec 64) V!46035 (_ BitVec 64)) Unit!39980)

(assert (=> b!1208376 (= lt!548366 (addStillNotContains!296 lt!548365 lt!548364 lt!548368 lt!548370))))

(assert (=> b!1208376 (= lt!548370 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1208376 (= lt!548368 (get!19253 (select (arr!37696 lt!548298) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1208376 (= lt!548364 (select (arr!37695 lt!548291) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1208376 (= lt!548365 call!59155)))

(assert (=> b!1208376 (= e!686293 (+!3983 call!59155 (tuple2!19899 (select (arr!37695 lt!548291) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19253 (select (arr!37696 lt!548298) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1208377 () Bool)

(declare-fun res!803316 () Bool)

(assert (=> b!1208377 (=> (not res!803316) (not e!686291))))

(assert (=> b!1208377 (= res!803316 (not (contains!6960 lt!548367 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1208378 () Bool)

(assert (=> b!1208378 (= e!686297 e!686294)))

(assert (=> b!1208378 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 lt!548291)))))

(declare-fun res!803317 () Bool)

(assert (=> b!1208378 (= res!803317 (contains!6960 lt!548367 (select (arr!37695 lt!548291) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1208378 (=> (not res!803317) (not e!686294))))

(declare-fun b!1208379 () Bool)

(assert (=> b!1208379 (= e!686292 (ListLongMap!17880 Nil!26717))))

(assert (= (and d!133153 c!118832) b!1208379))

(assert (= (and d!133153 (not c!118832)) b!1208370))

(assert (= (and b!1208370 c!118830) b!1208376))

(assert (= (and b!1208370 (not c!118830)) b!1208369))

(assert (= (or b!1208376 b!1208369) bm!59152))

(assert (= (and d!133153 res!803318) b!1208377))

(assert (= (and b!1208377 res!803316) b!1208371))

(assert (= (and b!1208371 res!803315) b!1208374))

(assert (= (and b!1208371 c!118829) b!1208378))

(assert (= (and b!1208371 (not c!118829)) b!1208372))

(assert (= (and b!1208378 res!803317) b!1208375))

(assert (= (and b!1208372 c!118831) b!1208368))

(assert (= (and b!1208372 (not c!118831)) b!1208373))

(declare-fun b_lambda!21517 () Bool)

(assert (=> (not b_lambda!21517) (not b!1208375)))

(assert (=> b!1208375 t!39683))

(declare-fun b_and!43017 () Bool)

(assert (= b_and!43011 (and (=> t!39683 result!22151) b_and!43017)))

(declare-fun b_lambda!21519 () Bool)

(assert (=> (not b_lambda!21519) (not b!1208376)))

(assert (=> b!1208376 t!39683))

(declare-fun b_and!43019 () Bool)

(assert (= b_and!43017 (and (=> t!39683 result!22151) b_and!43019)))

(declare-fun m!1114203 () Bool)

(assert (=> b!1208375 m!1114203))

(declare-fun m!1114205 () Bool)

(assert (=> b!1208375 m!1114205))

(declare-fun m!1114207 () Bool)

(assert (=> b!1208375 m!1114207))

(assert (=> b!1208375 m!1114205))

(assert (=> b!1208375 m!1114117))

(assert (=> b!1208375 m!1114203))

(assert (=> b!1208375 m!1114117))

(declare-fun m!1114209 () Bool)

(assert (=> b!1208375 m!1114209))

(declare-fun m!1114211 () Bool)

(assert (=> b!1208373 m!1114211))

(declare-fun m!1114213 () Bool)

(assert (=> b!1208376 m!1114213))

(assert (=> b!1208376 m!1114203))

(declare-fun m!1114215 () Bool)

(assert (=> b!1208376 m!1114215))

(assert (=> b!1208376 m!1114205))

(assert (=> b!1208376 m!1114203))

(assert (=> b!1208376 m!1114117))

(assert (=> b!1208376 m!1114209))

(declare-fun m!1114217 () Bool)

(assert (=> b!1208376 m!1114217))

(assert (=> b!1208376 m!1114213))

(declare-fun m!1114219 () Bool)

(assert (=> b!1208376 m!1114219))

(assert (=> b!1208376 m!1114117))

(assert (=> b!1208374 m!1114205))

(assert (=> b!1208374 m!1114205))

(declare-fun m!1114221 () Bool)

(assert (=> b!1208374 m!1114221))

(declare-fun m!1114223 () Bool)

(assert (=> b!1208368 m!1114223))

(declare-fun m!1114225 () Bool)

(assert (=> b!1208377 m!1114225))

(assert (=> b!1208378 m!1114205))

(assert (=> b!1208378 m!1114205))

(declare-fun m!1114227 () Bool)

(assert (=> b!1208378 m!1114227))

(declare-fun m!1114229 () Bool)

(assert (=> d!133153 m!1114229))

(assert (=> d!133153 m!1114087))

(assert (=> bm!59152 m!1114223))

(assert (=> b!1208370 m!1114205))

(assert (=> b!1208370 m!1114205))

(assert (=> b!1208370 m!1114221))

(assert (=> bm!59119 d!133153))

(declare-fun b!1208390 () Bool)

(declare-fun e!686307 () Bool)

(declare-fun contains!6962 (List!26721 (_ BitVec 64)) Bool)

(assert (=> b!1208390 (= e!686307 (contains!6962 Nil!26718 (select (arr!37695 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1208391 () Bool)

(declare-fun e!686306 () Bool)

(declare-fun e!686309 () Bool)

(assert (=> b!1208391 (= e!686306 e!686309)))

(declare-fun c!118835 () Bool)

(assert (=> b!1208391 (= c!118835 (validKeyInArray!0 (select (arr!37695 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1208392 () Bool)

(declare-fun call!59158 () Bool)

(assert (=> b!1208392 (= e!686309 call!59158)))

(declare-fun bm!59155 () Bool)

(assert (=> bm!59155 (= call!59158 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118835 (Cons!26717 (select (arr!37695 _keys!1208) #b00000000000000000000000000000000) Nil!26718) Nil!26718)))))

(declare-fun b!1208393 () Bool)

(declare-fun e!686308 () Bool)

(assert (=> b!1208393 (= e!686308 e!686306)))

(declare-fun res!803327 () Bool)

(assert (=> b!1208393 (=> (not res!803327) (not e!686306))))

(assert (=> b!1208393 (= res!803327 (not e!686307))))

(declare-fun res!803325 () Bool)

(assert (=> b!1208393 (=> (not res!803325) (not e!686307))))

(assert (=> b!1208393 (= res!803325 (validKeyInArray!0 (select (arr!37695 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!133155 () Bool)

(declare-fun res!803326 () Bool)

(assert (=> d!133155 (=> res!803326 e!686308)))

(assert (=> d!133155 (= res!803326 (bvsge #b00000000000000000000000000000000 (size!38232 _keys!1208)))))

(assert (=> d!133155 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26718) e!686308)))

(declare-fun b!1208394 () Bool)

(assert (=> b!1208394 (= e!686309 call!59158)))

(assert (= (and d!133155 (not res!803326)) b!1208393))

(assert (= (and b!1208393 res!803325) b!1208390))

(assert (= (and b!1208393 res!803327) b!1208391))

(assert (= (and b!1208391 c!118835) b!1208392))

(assert (= (and b!1208391 (not c!118835)) b!1208394))

(assert (= (or b!1208392 b!1208394) bm!59155))

(declare-fun m!1114231 () Bool)

(assert (=> b!1208390 m!1114231))

(assert (=> b!1208390 m!1114231))

(declare-fun m!1114233 () Bool)

(assert (=> b!1208390 m!1114233))

(assert (=> b!1208391 m!1114231))

(assert (=> b!1208391 m!1114231))

(declare-fun m!1114235 () Bool)

(assert (=> b!1208391 m!1114235))

(assert (=> bm!59155 m!1114231))

(declare-fun m!1114237 () Bool)

(assert (=> bm!59155 m!1114237))

(assert (=> b!1208393 m!1114231))

(assert (=> b!1208393 m!1114231))

(assert (=> b!1208393 m!1114235))

(assert (=> b!1208231 d!133155))

(declare-fun d!133157 () Bool)

(declare-fun e!686312 () Bool)

(assert (=> d!133157 e!686312))

(declare-fun res!803332 () Bool)

(assert (=> d!133157 (=> (not res!803332) (not e!686312))))

(declare-fun lt!548380 () ListLongMap!17879)

(assert (=> d!133157 (= res!803332 (contains!6960 lt!548380 (_1!9959 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!548381 () List!26720)

(assert (=> d!133157 (= lt!548380 (ListLongMap!17880 lt!548381))))

(declare-fun lt!548382 () Unit!39980)

(declare-fun lt!548379 () Unit!39980)

(assert (=> d!133157 (= lt!548382 lt!548379)))

(declare-datatypes ((Option!691 0))(
  ( (Some!690 (v!18048 V!46035)) (None!689) )
))
(declare-fun getValueByKey!640 (List!26720 (_ BitVec 64)) Option!691)

(assert (=> d!133157 (= (getValueByKey!640 lt!548381 (_1!9959 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!690 (_2!9959 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!315 (List!26720 (_ BitVec 64) V!46035) Unit!39980)

(assert (=> d!133157 (= lt!548379 (lemmaContainsTupThenGetReturnValue!315 lt!548381 (_1!9959 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9959 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun insertStrictlySorted!407 (List!26720 (_ BitVec 64) V!46035) List!26720)

(assert (=> d!133157 (= lt!548381 (insertStrictlySorted!407 (toList!8955 lt!548295) (_1!9959 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9959 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133157 (= (+!3983 lt!548295 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!548380)))

(declare-fun b!1208399 () Bool)

(declare-fun res!803333 () Bool)

(assert (=> b!1208399 (=> (not res!803333) (not e!686312))))

(assert (=> b!1208399 (= res!803333 (= (getValueByKey!640 (toList!8955 lt!548380) (_1!9959 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!690 (_2!9959 (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1208400 () Bool)

(declare-fun contains!6963 (List!26720 tuple2!19898) Bool)

(assert (=> b!1208400 (= e!686312 (contains!6963 (toList!8955 lt!548380) (ite (or c!118802 c!118805) (tuple2!19899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!133157 res!803332) b!1208399))

(assert (= (and b!1208399 res!803333) b!1208400))

(declare-fun m!1114239 () Bool)

(assert (=> d!133157 m!1114239))

(declare-fun m!1114241 () Bool)

(assert (=> d!133157 m!1114241))

(declare-fun m!1114243 () Bool)

(assert (=> d!133157 m!1114243))

(declare-fun m!1114245 () Bool)

(assert (=> d!133157 m!1114245))

(declare-fun m!1114247 () Bool)

(assert (=> b!1208399 m!1114247))

(declare-fun m!1114249 () Bool)

(assert (=> b!1208400 m!1114249))

(assert (=> bm!59124 d!133157))

(declare-fun d!133159 () Bool)

(declare-fun lt!548385 () ListLongMap!17879)

(assert (=> d!133159 (not (contains!6960 lt!548385 k0!934))))

(declare-fun removeStrictlySorted!100 (List!26720 (_ BitVec 64)) List!26720)

(assert (=> d!133159 (= lt!548385 (ListLongMap!17880 (removeStrictlySorted!100 (toList!8955 call!59122) k0!934)))))

(assert (=> d!133159 (= (-!1861 call!59122 k0!934) lt!548385)))

(declare-fun bs!34152 () Bool)

(assert (= bs!34152 d!133159))

(declare-fun m!1114251 () Bool)

(assert (=> bs!34152 m!1114251))

(declare-fun m!1114253 () Bool)

(assert (=> bs!34152 m!1114253))

(assert (=> b!1208239 d!133159))

(declare-fun bm!59156 () Bool)

(declare-fun call!59159 () ListLongMap!17879)

(assert (=> bm!59156 (= call!59159 (getCurrentListMapNoExtraKeys!5362 lt!548291 lt!548298 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun e!686318 () Bool)

(declare-fun lt!548389 () ListLongMap!17879)

(declare-fun b!1208401 () Bool)

(assert (=> b!1208401 (= e!686318 (= lt!548389 (getCurrentListMapNoExtraKeys!5362 lt!548291 lt!548298 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1208402 () Bool)

(declare-fun e!686315 () ListLongMap!17879)

(assert (=> b!1208402 (= e!686315 call!59159)))

(declare-fun b!1208403 () Bool)

(declare-fun e!686314 () ListLongMap!17879)

(assert (=> b!1208403 (= e!686314 e!686315)))

(declare-fun c!118837 () Bool)

(assert (=> b!1208403 (= c!118837 (validKeyInArray!0 (select (arr!37695 lt!548291) from!1455)))))

(declare-fun b!1208404 () Bool)

(declare-fun e!686313 () Bool)

(declare-fun e!686319 () Bool)

(assert (=> b!1208404 (= e!686313 e!686319)))

(declare-fun c!118836 () Bool)

(declare-fun e!686317 () Bool)

(assert (=> b!1208404 (= c!118836 e!686317)))

(declare-fun res!803334 () Bool)

(assert (=> b!1208404 (=> (not res!803334) (not e!686317))))

(assert (=> b!1208404 (= res!803334 (bvslt from!1455 (size!38232 lt!548291)))))

(declare-fun d!133161 () Bool)

(assert (=> d!133161 e!686313))

(declare-fun res!803337 () Bool)

(assert (=> d!133161 (=> (not res!803337) (not e!686313))))

(assert (=> d!133161 (= res!803337 (not (contains!6960 lt!548389 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133161 (= lt!548389 e!686314)))

(declare-fun c!118839 () Bool)

(assert (=> d!133161 (= c!118839 (bvsge from!1455 (size!38232 lt!548291)))))

(assert (=> d!133161 (validMask!0 mask!1564)))

(assert (=> d!133161 (= (getCurrentListMapNoExtraKeys!5362 lt!548291 lt!548298 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!548389)))

(declare-fun b!1208405 () Bool)

(assert (=> b!1208405 (= e!686319 e!686318)))

(declare-fun c!118838 () Bool)

(assert (=> b!1208405 (= c!118838 (bvslt from!1455 (size!38232 lt!548291)))))

(declare-fun b!1208406 () Bool)

(assert (=> b!1208406 (= e!686318 (isEmpty!993 lt!548389))))

(declare-fun b!1208407 () Bool)

(assert (=> b!1208407 (= e!686317 (validKeyInArray!0 (select (arr!37695 lt!548291) from!1455)))))

(assert (=> b!1208407 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1208408 () Bool)

(assert (=> b!1208408 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38232 lt!548291)))))

(assert (=> b!1208408 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38233 lt!548298)))))

(declare-fun e!686316 () Bool)

(assert (=> b!1208408 (= e!686316 (= (apply!1001 lt!548389 (select (arr!37695 lt!548291) from!1455)) (get!19253 (select (arr!37696 lt!548298) from!1455) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1208409 () Bool)

(declare-fun lt!548391 () Unit!39980)

(declare-fun lt!548388 () Unit!39980)

(assert (=> b!1208409 (= lt!548391 lt!548388)))

(declare-fun lt!548386 () (_ BitVec 64))

(declare-fun lt!548387 () ListLongMap!17879)

(declare-fun lt!548390 () V!46035)

(declare-fun lt!548392 () (_ BitVec 64))

(assert (=> b!1208409 (not (contains!6960 (+!3983 lt!548387 (tuple2!19899 lt!548386 lt!548390)) lt!548392))))

(assert (=> b!1208409 (= lt!548388 (addStillNotContains!296 lt!548387 lt!548386 lt!548390 lt!548392))))

(assert (=> b!1208409 (= lt!548392 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1208409 (= lt!548390 (get!19253 (select (arr!37696 lt!548298) from!1455) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1208409 (= lt!548386 (select (arr!37695 lt!548291) from!1455))))

(assert (=> b!1208409 (= lt!548387 call!59159)))

(assert (=> b!1208409 (= e!686315 (+!3983 call!59159 (tuple2!19899 (select (arr!37695 lt!548291) from!1455) (get!19253 (select (arr!37696 lt!548298) from!1455) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1208410 () Bool)

(declare-fun res!803335 () Bool)

(assert (=> b!1208410 (=> (not res!803335) (not e!686313))))

(assert (=> b!1208410 (= res!803335 (not (contains!6960 lt!548389 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1208411 () Bool)

(assert (=> b!1208411 (= e!686319 e!686316)))

(assert (=> b!1208411 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38232 lt!548291)))))

(declare-fun res!803336 () Bool)

(assert (=> b!1208411 (= res!803336 (contains!6960 lt!548389 (select (arr!37695 lt!548291) from!1455)))))

(assert (=> b!1208411 (=> (not res!803336) (not e!686316))))

(declare-fun b!1208412 () Bool)

(assert (=> b!1208412 (= e!686314 (ListLongMap!17880 Nil!26717))))

(assert (= (and d!133161 c!118839) b!1208412))

(assert (= (and d!133161 (not c!118839)) b!1208403))

(assert (= (and b!1208403 c!118837) b!1208409))

(assert (= (and b!1208403 (not c!118837)) b!1208402))

(assert (= (or b!1208409 b!1208402) bm!59156))

(assert (= (and d!133161 res!803337) b!1208410))

(assert (= (and b!1208410 res!803335) b!1208404))

(assert (= (and b!1208404 res!803334) b!1208407))

(assert (= (and b!1208404 c!118836) b!1208411))

(assert (= (and b!1208404 (not c!118836)) b!1208405))

(assert (= (and b!1208411 res!803336) b!1208408))

(assert (= (and b!1208405 c!118838) b!1208401))

(assert (= (and b!1208405 (not c!118838)) b!1208406))

(declare-fun b_lambda!21521 () Bool)

(assert (=> (not b_lambda!21521) (not b!1208408)))

(assert (=> b!1208408 t!39683))

(declare-fun b_and!43021 () Bool)

(assert (= b_and!43019 (and (=> t!39683 result!22151) b_and!43021)))

(declare-fun b_lambda!21523 () Bool)

(assert (=> (not b_lambda!21523) (not b!1208409)))

(assert (=> b!1208409 t!39683))

(declare-fun b_and!43023 () Bool)

(assert (= b_and!43021 (and (=> t!39683 result!22151) b_and!43023)))

(declare-fun m!1114255 () Bool)

(assert (=> b!1208408 m!1114255))

(declare-fun m!1114257 () Bool)

(assert (=> b!1208408 m!1114257))

(declare-fun m!1114259 () Bool)

(assert (=> b!1208408 m!1114259))

(assert (=> b!1208408 m!1114257))

(assert (=> b!1208408 m!1114117))

(assert (=> b!1208408 m!1114255))

(assert (=> b!1208408 m!1114117))

(declare-fun m!1114261 () Bool)

(assert (=> b!1208408 m!1114261))

(declare-fun m!1114263 () Bool)

(assert (=> b!1208406 m!1114263))

(declare-fun m!1114265 () Bool)

(assert (=> b!1208409 m!1114265))

(assert (=> b!1208409 m!1114255))

(declare-fun m!1114267 () Bool)

(assert (=> b!1208409 m!1114267))

(assert (=> b!1208409 m!1114257))

(assert (=> b!1208409 m!1114255))

(assert (=> b!1208409 m!1114117))

(assert (=> b!1208409 m!1114261))

(declare-fun m!1114269 () Bool)

(assert (=> b!1208409 m!1114269))

(assert (=> b!1208409 m!1114265))

(declare-fun m!1114271 () Bool)

(assert (=> b!1208409 m!1114271))

(assert (=> b!1208409 m!1114117))

(assert (=> b!1208407 m!1114257))

(assert (=> b!1208407 m!1114257))

(declare-fun m!1114273 () Bool)

(assert (=> b!1208407 m!1114273))

(declare-fun m!1114275 () Bool)

(assert (=> b!1208401 m!1114275))

(declare-fun m!1114277 () Bool)

(assert (=> b!1208410 m!1114277))

(assert (=> b!1208411 m!1114257))

(assert (=> b!1208411 m!1114257))

(declare-fun m!1114279 () Bool)

(assert (=> b!1208411 m!1114279))

(declare-fun m!1114281 () Bool)

(assert (=> d!133161 m!1114281))

(assert (=> d!133161 m!1114087))

(assert (=> bm!59156 m!1114275))

(assert (=> b!1208403 m!1114257))

(assert (=> b!1208403 m!1114257))

(assert (=> b!1208403 m!1114273))

(assert (=> b!1208228 d!133161))

(declare-fun call!59160 () ListLongMap!17879)

(declare-fun bm!59157 () Bool)

(assert (=> bm!59157 (= call!59160 (getCurrentListMapNoExtraKeys!5362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun e!686325 () Bool)

(declare-fun b!1208413 () Bool)

(declare-fun lt!548396 () ListLongMap!17879)

(assert (=> b!1208413 (= e!686325 (= lt!548396 (getCurrentListMapNoExtraKeys!5362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1208414 () Bool)

(declare-fun e!686322 () ListLongMap!17879)

(assert (=> b!1208414 (= e!686322 call!59160)))

(declare-fun b!1208415 () Bool)

(declare-fun e!686321 () ListLongMap!17879)

(assert (=> b!1208415 (= e!686321 e!686322)))

(declare-fun c!118841 () Bool)

(assert (=> b!1208415 (= c!118841 (validKeyInArray!0 (select (arr!37695 _keys!1208) from!1455)))))

(declare-fun b!1208416 () Bool)

(declare-fun e!686320 () Bool)

(declare-fun e!686326 () Bool)

(assert (=> b!1208416 (= e!686320 e!686326)))

(declare-fun c!118840 () Bool)

(declare-fun e!686324 () Bool)

(assert (=> b!1208416 (= c!118840 e!686324)))

(declare-fun res!803338 () Bool)

(assert (=> b!1208416 (=> (not res!803338) (not e!686324))))

(assert (=> b!1208416 (= res!803338 (bvslt from!1455 (size!38232 _keys!1208)))))

(declare-fun d!133163 () Bool)

(assert (=> d!133163 e!686320))

(declare-fun res!803341 () Bool)

(assert (=> d!133163 (=> (not res!803341) (not e!686320))))

(assert (=> d!133163 (= res!803341 (not (contains!6960 lt!548396 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133163 (= lt!548396 e!686321)))

(declare-fun c!118843 () Bool)

(assert (=> d!133163 (= c!118843 (bvsge from!1455 (size!38232 _keys!1208)))))

(assert (=> d!133163 (validMask!0 mask!1564)))

(assert (=> d!133163 (= (getCurrentListMapNoExtraKeys!5362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!548396)))

(declare-fun b!1208417 () Bool)

(assert (=> b!1208417 (= e!686326 e!686325)))

(declare-fun c!118842 () Bool)

(assert (=> b!1208417 (= c!118842 (bvslt from!1455 (size!38232 _keys!1208)))))

(declare-fun b!1208418 () Bool)

(assert (=> b!1208418 (= e!686325 (isEmpty!993 lt!548396))))

(declare-fun b!1208419 () Bool)

(assert (=> b!1208419 (= e!686324 (validKeyInArray!0 (select (arr!37695 _keys!1208) from!1455)))))

(assert (=> b!1208419 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1208420 () Bool)

(assert (=> b!1208420 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38232 _keys!1208)))))

(assert (=> b!1208420 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38233 _values!996)))))

(declare-fun e!686323 () Bool)

(assert (=> b!1208420 (= e!686323 (= (apply!1001 lt!548396 (select (arr!37695 _keys!1208) from!1455)) (get!19253 (select (arr!37696 _values!996) from!1455) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1208421 () Bool)

(declare-fun lt!548398 () Unit!39980)

(declare-fun lt!548395 () Unit!39980)

(assert (=> b!1208421 (= lt!548398 lt!548395)))

(declare-fun lt!548394 () ListLongMap!17879)

(declare-fun lt!548393 () (_ BitVec 64))

(declare-fun lt!548397 () V!46035)

(declare-fun lt!548399 () (_ BitVec 64))

(assert (=> b!1208421 (not (contains!6960 (+!3983 lt!548394 (tuple2!19899 lt!548393 lt!548397)) lt!548399))))

(assert (=> b!1208421 (= lt!548395 (addStillNotContains!296 lt!548394 lt!548393 lt!548397 lt!548399))))

(assert (=> b!1208421 (= lt!548399 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1208421 (= lt!548397 (get!19253 (select (arr!37696 _values!996) from!1455) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1208421 (= lt!548393 (select (arr!37695 _keys!1208) from!1455))))

(assert (=> b!1208421 (= lt!548394 call!59160)))

(assert (=> b!1208421 (= e!686322 (+!3983 call!59160 (tuple2!19899 (select (arr!37695 _keys!1208) from!1455) (get!19253 (select (arr!37696 _values!996) from!1455) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1208422 () Bool)

(declare-fun res!803339 () Bool)

(assert (=> b!1208422 (=> (not res!803339) (not e!686320))))

(assert (=> b!1208422 (= res!803339 (not (contains!6960 lt!548396 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1208423 () Bool)

(assert (=> b!1208423 (= e!686326 e!686323)))

(assert (=> b!1208423 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38232 _keys!1208)))))

(declare-fun res!803340 () Bool)

(assert (=> b!1208423 (= res!803340 (contains!6960 lt!548396 (select (arr!37695 _keys!1208) from!1455)))))

(assert (=> b!1208423 (=> (not res!803340) (not e!686323))))

(declare-fun b!1208424 () Bool)

(assert (=> b!1208424 (= e!686321 (ListLongMap!17880 Nil!26717))))

(assert (= (and d!133163 c!118843) b!1208424))

(assert (= (and d!133163 (not c!118843)) b!1208415))

(assert (= (and b!1208415 c!118841) b!1208421))

(assert (= (and b!1208415 (not c!118841)) b!1208414))

(assert (= (or b!1208421 b!1208414) bm!59157))

(assert (= (and d!133163 res!803341) b!1208422))

(assert (= (and b!1208422 res!803339) b!1208416))

(assert (= (and b!1208416 res!803338) b!1208419))

(assert (= (and b!1208416 c!118840) b!1208423))

(assert (= (and b!1208416 (not c!118840)) b!1208417))

(assert (= (and b!1208423 res!803340) b!1208420))

(assert (= (and b!1208417 c!118842) b!1208413))

(assert (= (and b!1208417 (not c!118842)) b!1208418))

(declare-fun b_lambda!21525 () Bool)

(assert (=> (not b_lambda!21525) (not b!1208420)))

(assert (=> b!1208420 t!39683))

(declare-fun b_and!43025 () Bool)

(assert (= b_and!43023 (and (=> t!39683 result!22151) b_and!43025)))

(declare-fun b_lambda!21527 () Bool)

(assert (=> (not b_lambda!21527) (not b!1208421)))

(assert (=> b!1208421 t!39683))

(declare-fun b_and!43027 () Bool)

(assert (= b_and!43025 (and (=> t!39683 result!22151) b_and!43027)))

(declare-fun m!1114283 () Bool)

(assert (=> b!1208420 m!1114283))

(assert (=> b!1208420 m!1114131))

(declare-fun m!1114285 () Bool)

(assert (=> b!1208420 m!1114285))

(assert (=> b!1208420 m!1114131))

(assert (=> b!1208420 m!1114117))

(assert (=> b!1208420 m!1114283))

(assert (=> b!1208420 m!1114117))

(declare-fun m!1114287 () Bool)

(assert (=> b!1208420 m!1114287))

(declare-fun m!1114289 () Bool)

(assert (=> b!1208418 m!1114289))

(declare-fun m!1114291 () Bool)

(assert (=> b!1208421 m!1114291))

(assert (=> b!1208421 m!1114283))

(declare-fun m!1114293 () Bool)

(assert (=> b!1208421 m!1114293))

(assert (=> b!1208421 m!1114131))

(assert (=> b!1208421 m!1114283))

(assert (=> b!1208421 m!1114117))

(assert (=> b!1208421 m!1114287))

(declare-fun m!1114295 () Bool)

(assert (=> b!1208421 m!1114295))

(assert (=> b!1208421 m!1114291))

(declare-fun m!1114297 () Bool)

(assert (=> b!1208421 m!1114297))

(assert (=> b!1208421 m!1114117))

(assert (=> b!1208419 m!1114131))

(assert (=> b!1208419 m!1114131))

(declare-fun m!1114299 () Bool)

(assert (=> b!1208419 m!1114299))

(declare-fun m!1114301 () Bool)

(assert (=> b!1208413 m!1114301))

(declare-fun m!1114303 () Bool)

(assert (=> b!1208422 m!1114303))

(assert (=> b!1208423 m!1114131))

(assert (=> b!1208423 m!1114131))

(declare-fun m!1114305 () Bool)

(assert (=> b!1208423 m!1114305))

(declare-fun m!1114307 () Bool)

(assert (=> d!133163 m!1114307))

(assert (=> d!133163 m!1114087))

(assert (=> bm!59157 m!1114301))

(assert (=> b!1208415 m!1114131))

(assert (=> b!1208415 m!1114131))

(assert (=> b!1208415 m!1114299))

(assert (=> b!1208228 d!133163))

(declare-fun d!133165 () Bool)

(declare-fun e!686331 () Bool)

(assert (=> d!133165 e!686331))

(declare-fun res!803344 () Bool)

(assert (=> d!133165 (=> res!803344 e!686331)))

(declare-fun lt!548411 () Bool)

(assert (=> d!133165 (= res!803344 (not lt!548411))))

(declare-fun lt!548409 () Bool)

(assert (=> d!133165 (= lt!548411 lt!548409)))

(declare-fun lt!548408 () Unit!39980)

(declare-fun e!686332 () Unit!39980)

(assert (=> d!133165 (= lt!548408 e!686332)))

(declare-fun c!118846 () Bool)

(assert (=> d!133165 (= c!118846 lt!548409)))

(declare-fun containsKey!594 (List!26720 (_ BitVec 64)) Bool)

(assert (=> d!133165 (= lt!548409 (containsKey!594 (toList!8955 (ite c!118802 lt!548299 call!59121)) k0!934))))

(assert (=> d!133165 (= (contains!6960 (ite c!118802 lt!548299 call!59121) k0!934) lt!548411)))

(declare-fun b!1208431 () Bool)

(declare-fun lt!548410 () Unit!39980)

(assert (=> b!1208431 (= e!686332 lt!548410)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!423 (List!26720 (_ BitVec 64)) Unit!39980)

(assert (=> b!1208431 (= lt!548410 (lemmaContainsKeyImpliesGetValueByKeyDefined!423 (toList!8955 (ite c!118802 lt!548299 call!59121)) k0!934))))

(declare-fun isDefined!463 (Option!691) Bool)

(assert (=> b!1208431 (isDefined!463 (getValueByKey!640 (toList!8955 (ite c!118802 lt!548299 call!59121)) k0!934))))

(declare-fun b!1208432 () Bool)

(declare-fun Unit!39986 () Unit!39980)

(assert (=> b!1208432 (= e!686332 Unit!39986)))

(declare-fun b!1208433 () Bool)

(assert (=> b!1208433 (= e!686331 (isDefined!463 (getValueByKey!640 (toList!8955 (ite c!118802 lt!548299 call!59121)) k0!934)))))

(assert (= (and d!133165 c!118846) b!1208431))

(assert (= (and d!133165 (not c!118846)) b!1208432))

(assert (= (and d!133165 (not res!803344)) b!1208433))

(declare-fun m!1114309 () Bool)

(assert (=> d!133165 m!1114309))

(declare-fun m!1114311 () Bool)

(assert (=> b!1208431 m!1114311))

(declare-fun m!1114313 () Bool)

(assert (=> b!1208431 m!1114313))

(assert (=> b!1208431 m!1114313))

(declare-fun m!1114315 () Bool)

(assert (=> b!1208431 m!1114315))

(assert (=> b!1208433 m!1114313))

(assert (=> b!1208433 m!1114313))

(assert (=> b!1208433 m!1114315))

(assert (=> bm!59125 d!133165))

(declare-fun d!133167 () Bool)

(declare-fun res!803349 () Bool)

(declare-fun e!686337 () Bool)

(assert (=> d!133167 (=> res!803349 e!686337)))

(assert (=> d!133167 (= res!803349 ((_ is Nil!26718) Nil!26718))))

(assert (=> d!133167 (= (noDuplicate!1645 Nil!26718) e!686337)))

(declare-fun b!1208438 () Bool)

(declare-fun e!686338 () Bool)

(assert (=> b!1208438 (= e!686337 e!686338)))

(declare-fun res!803350 () Bool)

(assert (=> b!1208438 (=> (not res!803350) (not e!686338))))

(assert (=> b!1208438 (= res!803350 (not (contains!6962 (t!39685 Nil!26718) (h!27926 Nil!26718))))))

(declare-fun b!1208439 () Bool)

(assert (=> b!1208439 (= e!686338 (noDuplicate!1645 (t!39685 Nil!26718)))))

(assert (= (and d!133167 (not res!803349)) b!1208438))

(assert (= (and b!1208438 res!803350) b!1208439))

(declare-fun m!1114317 () Bool)

(assert (=> b!1208438 m!1114317))

(declare-fun m!1114319 () Bool)

(assert (=> b!1208439 m!1114319))

(assert (=> b!1208244 d!133167))

(declare-fun d!133169 () Bool)

(assert (=> d!133169 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1208245 d!133169))

(declare-fun d!133171 () Bool)

(declare-fun e!686339 () Bool)

(assert (=> d!133171 e!686339))

(declare-fun res!803351 () Bool)

(assert (=> d!133171 (=> res!803351 e!686339)))

(declare-fun lt!548415 () Bool)

(assert (=> d!133171 (= res!803351 (not lt!548415))))

(declare-fun lt!548413 () Bool)

(assert (=> d!133171 (= lt!548415 lt!548413)))

(declare-fun lt!548412 () Unit!39980)

(declare-fun e!686340 () Unit!39980)

(assert (=> d!133171 (= lt!548412 e!686340)))

(declare-fun c!118847 () Bool)

(assert (=> d!133171 (= c!118847 lt!548413)))

(assert (=> d!133171 (= lt!548413 (containsKey!594 (toList!8955 lt!548295) k0!934))))

(assert (=> d!133171 (= (contains!6960 lt!548295 k0!934) lt!548415)))

(declare-fun b!1208440 () Bool)

(declare-fun lt!548414 () Unit!39980)

(assert (=> b!1208440 (= e!686340 lt!548414)))

(assert (=> b!1208440 (= lt!548414 (lemmaContainsKeyImpliesGetValueByKeyDefined!423 (toList!8955 lt!548295) k0!934))))

(assert (=> b!1208440 (isDefined!463 (getValueByKey!640 (toList!8955 lt!548295) k0!934))))

(declare-fun b!1208441 () Bool)

(declare-fun Unit!39987 () Unit!39980)

(assert (=> b!1208441 (= e!686340 Unit!39987)))

(declare-fun b!1208442 () Bool)

(assert (=> b!1208442 (= e!686339 (isDefined!463 (getValueByKey!640 (toList!8955 lt!548295) k0!934)))))

(assert (= (and d!133171 c!118847) b!1208440))

(assert (= (and d!133171 (not c!118847)) b!1208441))

(assert (= (and d!133171 (not res!803351)) b!1208442))

(declare-fun m!1114321 () Bool)

(assert (=> d!133171 m!1114321))

(declare-fun m!1114323 () Bool)

(assert (=> b!1208440 m!1114323))

(declare-fun m!1114325 () Bool)

(assert (=> b!1208440 m!1114325))

(assert (=> b!1208440 m!1114325))

(declare-fun m!1114327 () Bool)

(assert (=> b!1208440 m!1114327))

(assert (=> b!1208442 m!1114325))

(assert (=> b!1208442 m!1114325))

(assert (=> b!1208442 m!1114327))

(assert (=> b!1208229 d!133171))

(declare-fun bm!59158 () Bool)

(declare-fun call!59161 () ListLongMap!17879)

(assert (=> bm!59158 (= call!59161 (getCurrentListMapNoExtraKeys!5362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun e!686346 () Bool)

(declare-fun lt!548419 () ListLongMap!17879)

(declare-fun b!1208443 () Bool)

(assert (=> b!1208443 (= e!686346 (= lt!548419 (getCurrentListMapNoExtraKeys!5362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1208444 () Bool)

(declare-fun e!686343 () ListLongMap!17879)

(assert (=> b!1208444 (= e!686343 call!59161)))

(declare-fun b!1208445 () Bool)

(declare-fun e!686342 () ListLongMap!17879)

(assert (=> b!1208445 (= e!686342 e!686343)))

(declare-fun c!118849 () Bool)

(assert (=> b!1208445 (= c!118849 (validKeyInArray!0 (select (arr!37695 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1208446 () Bool)

(declare-fun e!686341 () Bool)

(declare-fun e!686347 () Bool)

(assert (=> b!1208446 (= e!686341 e!686347)))

(declare-fun c!118848 () Bool)

(declare-fun e!686345 () Bool)

(assert (=> b!1208446 (= c!118848 e!686345)))

(declare-fun res!803352 () Bool)

(assert (=> b!1208446 (=> (not res!803352) (not e!686345))))

(assert (=> b!1208446 (= res!803352 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 _keys!1208)))))

(declare-fun d!133173 () Bool)

(assert (=> d!133173 e!686341))

(declare-fun res!803355 () Bool)

(assert (=> d!133173 (=> (not res!803355) (not e!686341))))

(assert (=> d!133173 (= res!803355 (not (contains!6960 lt!548419 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133173 (= lt!548419 e!686342)))

(declare-fun c!118851 () Bool)

(assert (=> d!133173 (= c!118851 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 _keys!1208)))))

(assert (=> d!133173 (validMask!0 mask!1564)))

(assert (=> d!133173 (= (getCurrentListMapNoExtraKeys!5362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!548419)))

(declare-fun b!1208447 () Bool)

(assert (=> b!1208447 (= e!686347 e!686346)))

(declare-fun c!118850 () Bool)

(assert (=> b!1208447 (= c!118850 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 _keys!1208)))))

(declare-fun b!1208448 () Bool)

(assert (=> b!1208448 (= e!686346 (isEmpty!993 lt!548419))))

(declare-fun b!1208449 () Bool)

(assert (=> b!1208449 (= e!686345 (validKeyInArray!0 (select (arr!37695 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1208449 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1208450 () Bool)

(assert (=> b!1208450 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 _keys!1208)))))

(assert (=> b!1208450 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38233 _values!996)))))

(declare-fun e!686344 () Bool)

(assert (=> b!1208450 (= e!686344 (= (apply!1001 lt!548419 (select (arr!37695 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19253 (select (arr!37696 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1208451 () Bool)

(declare-fun lt!548421 () Unit!39980)

(declare-fun lt!548418 () Unit!39980)

(assert (=> b!1208451 (= lt!548421 lt!548418)))

(declare-fun lt!548420 () V!46035)

(declare-fun lt!548416 () (_ BitVec 64))

(declare-fun lt!548422 () (_ BitVec 64))

(declare-fun lt!548417 () ListLongMap!17879)

(assert (=> b!1208451 (not (contains!6960 (+!3983 lt!548417 (tuple2!19899 lt!548416 lt!548420)) lt!548422))))

(assert (=> b!1208451 (= lt!548418 (addStillNotContains!296 lt!548417 lt!548416 lt!548420 lt!548422))))

(assert (=> b!1208451 (= lt!548422 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1208451 (= lt!548420 (get!19253 (select (arr!37696 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1208451 (= lt!548416 (select (arr!37695 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1208451 (= lt!548417 call!59161)))

(assert (=> b!1208451 (= e!686343 (+!3983 call!59161 (tuple2!19899 (select (arr!37695 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19253 (select (arr!37696 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1208452 () Bool)

(declare-fun res!803353 () Bool)

(assert (=> b!1208452 (=> (not res!803353) (not e!686341))))

(assert (=> b!1208452 (= res!803353 (not (contains!6960 lt!548419 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1208453 () Bool)

(assert (=> b!1208453 (= e!686347 e!686344)))

(assert (=> b!1208453 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 _keys!1208)))))

(declare-fun res!803354 () Bool)

(assert (=> b!1208453 (= res!803354 (contains!6960 lt!548419 (select (arr!37695 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1208453 (=> (not res!803354) (not e!686344))))

(declare-fun b!1208454 () Bool)

(assert (=> b!1208454 (= e!686342 (ListLongMap!17880 Nil!26717))))

(assert (= (and d!133173 c!118851) b!1208454))

(assert (= (and d!133173 (not c!118851)) b!1208445))

(assert (= (and b!1208445 c!118849) b!1208451))

(assert (= (and b!1208445 (not c!118849)) b!1208444))

(assert (= (or b!1208451 b!1208444) bm!59158))

(assert (= (and d!133173 res!803355) b!1208452))

(assert (= (and b!1208452 res!803353) b!1208446))

(assert (= (and b!1208446 res!803352) b!1208449))

(assert (= (and b!1208446 c!118848) b!1208453))

(assert (= (and b!1208446 (not c!118848)) b!1208447))

(assert (= (and b!1208453 res!803354) b!1208450))

(assert (= (and b!1208447 c!118850) b!1208443))

(assert (= (and b!1208447 (not c!118850)) b!1208448))

(declare-fun b_lambda!21529 () Bool)

(assert (=> (not b_lambda!21529) (not b!1208450)))

(assert (=> b!1208450 t!39683))

(declare-fun b_and!43029 () Bool)

(assert (= b_and!43027 (and (=> t!39683 result!22151) b_and!43029)))

(declare-fun b_lambda!21531 () Bool)

(assert (=> (not b_lambda!21531) (not b!1208451)))

(assert (=> b!1208451 t!39683))

(declare-fun b_and!43031 () Bool)

(assert (= b_and!43029 (and (=> t!39683 result!22151) b_and!43031)))

(declare-fun m!1114329 () Bool)

(assert (=> b!1208450 m!1114329))

(declare-fun m!1114331 () Bool)

(assert (=> b!1208450 m!1114331))

(declare-fun m!1114333 () Bool)

(assert (=> b!1208450 m!1114333))

(assert (=> b!1208450 m!1114331))

(assert (=> b!1208450 m!1114117))

(assert (=> b!1208450 m!1114329))

(assert (=> b!1208450 m!1114117))

(declare-fun m!1114335 () Bool)

(assert (=> b!1208450 m!1114335))

(declare-fun m!1114337 () Bool)

(assert (=> b!1208448 m!1114337))

(declare-fun m!1114339 () Bool)

(assert (=> b!1208451 m!1114339))

(assert (=> b!1208451 m!1114329))

(declare-fun m!1114341 () Bool)

(assert (=> b!1208451 m!1114341))

(assert (=> b!1208451 m!1114331))

(assert (=> b!1208451 m!1114329))

(assert (=> b!1208451 m!1114117))

(assert (=> b!1208451 m!1114335))

(declare-fun m!1114343 () Bool)

(assert (=> b!1208451 m!1114343))

(assert (=> b!1208451 m!1114339))

(declare-fun m!1114345 () Bool)

(assert (=> b!1208451 m!1114345))

(assert (=> b!1208451 m!1114117))

(assert (=> b!1208449 m!1114331))

(assert (=> b!1208449 m!1114331))

(declare-fun m!1114347 () Bool)

(assert (=> b!1208449 m!1114347))

(declare-fun m!1114349 () Bool)

(assert (=> b!1208443 m!1114349))

(declare-fun m!1114351 () Bool)

(assert (=> b!1208452 m!1114351))

(assert (=> b!1208453 m!1114331))

(assert (=> b!1208453 m!1114331))

(declare-fun m!1114353 () Bool)

(assert (=> b!1208453 m!1114353))

(declare-fun m!1114355 () Bool)

(assert (=> d!133173 m!1114355))

(assert (=> d!133173 m!1114087))

(assert (=> bm!59158 m!1114349))

(assert (=> b!1208445 m!1114331))

(assert (=> b!1208445 m!1114331))

(assert (=> b!1208445 m!1114347))

(assert (=> b!1208229 d!133173))

(declare-fun b!1208463 () Bool)

(declare-fun e!686355 () Bool)

(declare-fun e!686354 () Bool)

(assert (=> b!1208463 (= e!686355 e!686354)))

(declare-fun c!118854 () Bool)

(assert (=> b!1208463 (= c!118854 (validKeyInArray!0 (select (arr!37695 lt!548291) #b00000000000000000000000000000000)))))

(declare-fun b!1208464 () Bool)

(declare-fun e!686356 () Bool)

(assert (=> b!1208464 (= e!686354 e!686356)))

(declare-fun lt!548431 () (_ BitVec 64))

(assert (=> b!1208464 (= lt!548431 (select (arr!37695 lt!548291) #b00000000000000000000000000000000))))

(declare-fun lt!548429 () Unit!39980)

(assert (=> b!1208464 (= lt!548429 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!548291 lt!548431 #b00000000000000000000000000000000))))

(assert (=> b!1208464 (arrayContainsKey!0 lt!548291 lt!548431 #b00000000000000000000000000000000)))

(declare-fun lt!548430 () Unit!39980)

(assert (=> b!1208464 (= lt!548430 lt!548429)))

(declare-fun res!803360 () Bool)

(declare-datatypes ((SeekEntryResult!9936 0))(
  ( (MissingZero!9936 (index!42114 (_ BitVec 32))) (Found!9936 (index!42115 (_ BitVec 32))) (Intermediate!9936 (undefined!10748 Bool) (index!42116 (_ BitVec 32)) (x!106616 (_ BitVec 32))) (Undefined!9936) (MissingVacant!9936 (index!42117 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78120 (_ BitVec 32)) SeekEntryResult!9936)

(assert (=> b!1208464 (= res!803360 (= (seekEntryOrOpen!0 (select (arr!37695 lt!548291) #b00000000000000000000000000000000) lt!548291 mask!1564) (Found!9936 #b00000000000000000000000000000000)))))

(assert (=> b!1208464 (=> (not res!803360) (not e!686356))))

(declare-fun b!1208465 () Bool)

(declare-fun call!59164 () Bool)

(assert (=> b!1208465 (= e!686354 call!59164)))

(declare-fun d!133175 () Bool)

(declare-fun res!803361 () Bool)

(assert (=> d!133175 (=> res!803361 e!686355)))

(assert (=> d!133175 (= res!803361 (bvsge #b00000000000000000000000000000000 (size!38232 lt!548291)))))

(assert (=> d!133175 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548291 mask!1564) e!686355)))

(declare-fun b!1208466 () Bool)

(assert (=> b!1208466 (= e!686356 call!59164)))

(declare-fun bm!59161 () Bool)

(assert (=> bm!59161 (= call!59164 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!548291 mask!1564))))

(assert (= (and d!133175 (not res!803361)) b!1208463))

(assert (= (and b!1208463 c!118854) b!1208464))

(assert (= (and b!1208463 (not c!118854)) b!1208465))

(assert (= (and b!1208464 res!803360) b!1208466))

(assert (= (or b!1208466 b!1208465) bm!59161))

(declare-fun m!1114357 () Bool)

(assert (=> b!1208463 m!1114357))

(assert (=> b!1208463 m!1114357))

(declare-fun m!1114359 () Bool)

(assert (=> b!1208463 m!1114359))

(assert (=> b!1208464 m!1114357))

(declare-fun m!1114361 () Bool)

(assert (=> b!1208464 m!1114361))

(declare-fun m!1114363 () Bool)

(assert (=> b!1208464 m!1114363))

(assert (=> b!1208464 m!1114357))

(declare-fun m!1114365 () Bool)

(assert (=> b!1208464 m!1114365))

(declare-fun m!1114367 () Bool)

(assert (=> bm!59161 m!1114367))

(assert (=> b!1208230 d!133175))

(declare-fun b!1208467 () Bool)

(declare-fun e!686358 () Bool)

(assert (=> b!1208467 (= e!686358 (contains!6962 Nil!26718 (select (arr!37695 _keys!1208) from!1455)))))

(declare-fun b!1208468 () Bool)

(declare-fun e!686357 () Bool)

(declare-fun e!686360 () Bool)

(assert (=> b!1208468 (= e!686357 e!686360)))

(declare-fun c!118855 () Bool)

(assert (=> b!1208468 (= c!118855 (validKeyInArray!0 (select (arr!37695 _keys!1208) from!1455)))))

(declare-fun b!1208469 () Bool)

(declare-fun call!59165 () Bool)

(assert (=> b!1208469 (= e!686360 call!59165)))

(declare-fun bm!59162 () Bool)

(assert (=> bm!59162 (= call!59165 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!118855 (Cons!26717 (select (arr!37695 _keys!1208) from!1455) Nil!26718) Nil!26718)))))

(declare-fun b!1208470 () Bool)

(declare-fun e!686359 () Bool)

(assert (=> b!1208470 (= e!686359 e!686357)))

(declare-fun res!803364 () Bool)

(assert (=> b!1208470 (=> (not res!803364) (not e!686357))))

(assert (=> b!1208470 (= res!803364 (not e!686358))))

(declare-fun res!803362 () Bool)

(assert (=> b!1208470 (=> (not res!803362) (not e!686358))))

(assert (=> b!1208470 (= res!803362 (validKeyInArray!0 (select (arr!37695 _keys!1208) from!1455)))))

(declare-fun d!133177 () Bool)

(declare-fun res!803363 () Bool)

(assert (=> d!133177 (=> res!803363 e!686359)))

(assert (=> d!133177 (= res!803363 (bvsge from!1455 (size!38232 _keys!1208)))))

(assert (=> d!133177 (= (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26718) e!686359)))

(declare-fun b!1208471 () Bool)

(assert (=> b!1208471 (= e!686360 call!59165)))

(assert (= (and d!133177 (not res!803363)) b!1208470))

(assert (= (and b!1208470 res!803362) b!1208467))

(assert (= (and b!1208470 res!803364) b!1208468))

(assert (= (and b!1208468 c!118855) b!1208469))

(assert (= (and b!1208468 (not c!118855)) b!1208471))

(assert (= (or b!1208469 b!1208471) bm!59162))

(assert (=> b!1208467 m!1114131))

(assert (=> b!1208467 m!1114131))

(declare-fun m!1114369 () Bool)

(assert (=> b!1208467 m!1114369))

(assert (=> b!1208468 m!1114131))

(assert (=> b!1208468 m!1114131))

(assert (=> b!1208468 m!1114299))

(assert (=> bm!59162 m!1114131))

(declare-fun m!1114371 () Bool)

(assert (=> bm!59162 m!1114371))

(assert (=> b!1208470 m!1114131))

(assert (=> b!1208470 m!1114131))

(assert (=> b!1208470 m!1114299))

(assert (=> b!1208246 d!133177))

(declare-fun d!133179 () Bool)

(assert (=> d!133179 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26718)))

(declare-fun lt!548434 () Unit!39980)

(declare-fun choose!39 (array!78120 (_ BitVec 32) (_ BitVec 32)) Unit!39980)

(assert (=> d!133179 (= lt!548434 (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> d!133179 (bvslt (size!38232 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133179 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455) lt!548434)))

(declare-fun bs!34153 () Bool)

(assert (= bs!34153 d!133179))

(assert (=> bs!34153 m!1114073))

(declare-fun m!1114373 () Bool)

(assert (=> bs!34153 m!1114373))

(assert (=> b!1208246 d!133179))

(declare-fun d!133181 () Bool)

(declare-fun e!686363 () Bool)

(assert (=> d!133181 e!686363))

(declare-fun c!118858 () Bool)

(assert (=> d!133181 (= c!118858 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548437 () Unit!39980)

(declare-fun choose!1814 (array!78120 array!78122 (_ BitVec 32) (_ BitVec 32) V!46035 V!46035 (_ BitVec 64) (_ BitVec 32) Int) Unit!39980)

(assert (=> d!133181 (= lt!548437 (choose!1814 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133181 (validMask!0 mask!1564)))

(assert (=> d!133181 (= (lemmaListMapContainsThenArrayContainsFrom!585 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!548437)))

(declare-fun b!1208476 () Bool)

(assert (=> b!1208476 (= e!686363 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1208477 () Bool)

(assert (=> b!1208477 (= e!686363 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!133181 c!118858) b!1208476))

(assert (= (and d!133181 (not c!118858)) b!1208477))

(declare-fun m!1114375 () Bool)

(assert (=> d!133181 m!1114375))

(assert (=> d!133181 m!1114087))

(assert (=> b!1208476 m!1114071))

(assert (=> b!1208246 d!133181))

(declare-fun d!133183 () Bool)

(declare-fun res!803369 () Bool)

(declare-fun e!686368 () Bool)

(assert (=> d!133183 (=> res!803369 e!686368)))

(assert (=> d!133183 (= res!803369 (= (select (arr!37695 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133183 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!686368)))

(declare-fun b!1208482 () Bool)

(declare-fun e!686369 () Bool)

(assert (=> b!1208482 (= e!686368 e!686369)))

(declare-fun res!803370 () Bool)

(assert (=> b!1208482 (=> (not res!803370) (not e!686369))))

(assert (=> b!1208482 (= res!803370 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38232 _keys!1208)))))

(declare-fun b!1208483 () Bool)

(assert (=> b!1208483 (= e!686369 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133183 (not res!803369)) b!1208482))

(assert (= (and b!1208482 res!803370) b!1208483))

(assert (=> d!133183 m!1114231))

(declare-fun m!1114377 () Bool)

(assert (=> b!1208483 m!1114377))

(assert (=> b!1208234 d!133183))

(declare-fun d!133185 () Bool)

(assert (=> d!133185 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!548440 () Unit!39980)

(declare-fun choose!13 (array!78120 (_ BitVec 64) (_ BitVec 32)) Unit!39980)

(assert (=> d!133185 (= lt!548440 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133185 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133185 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!548440)))

(declare-fun bs!34154 () Bool)

(assert (= bs!34154 d!133185))

(assert (=> bs!34154 m!1114089))

(declare-fun m!1114379 () Bool)

(assert (=> bs!34154 m!1114379))

(assert (=> b!1208234 d!133185))

(declare-fun d!133187 () Bool)

(declare-fun res!803371 () Bool)

(declare-fun e!686370 () Bool)

(assert (=> d!133187 (=> res!803371 e!686370)))

(assert (=> d!133187 (= res!803371 (= (select (arr!37695 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!133187 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!686370)))

(declare-fun b!1208484 () Bool)

(declare-fun e!686371 () Bool)

(assert (=> b!1208484 (= e!686370 e!686371)))

(declare-fun res!803372 () Bool)

(assert (=> b!1208484 (=> (not res!803372) (not e!686371))))

(assert (=> b!1208484 (= res!803372 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38232 _keys!1208)))))

(declare-fun b!1208485 () Bool)

(assert (=> b!1208485 (= e!686371 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!133187 (not res!803371)) b!1208484))

(assert (= (and b!1208484 res!803372) b!1208485))

(assert (=> d!133187 m!1114331))

(declare-fun m!1114381 () Bool)

(assert (=> b!1208485 m!1114381))

(assert (=> b!1208250 d!133187))

(declare-fun d!133189 () Bool)

(assert (=> d!133189 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1208227 d!133189))

(assert (=> b!1208242 d!133187))

(assert (=> bm!59118 d!133173))

(declare-fun b!1208486 () Bool)

(declare-fun e!686373 () Bool)

(assert (=> b!1208486 (= e!686373 (contains!6962 Nil!26718 (select (arr!37695 lt!548291) #b00000000000000000000000000000000)))))

(declare-fun b!1208487 () Bool)

(declare-fun e!686372 () Bool)

(declare-fun e!686375 () Bool)

(assert (=> b!1208487 (= e!686372 e!686375)))

(declare-fun c!118859 () Bool)

(assert (=> b!1208487 (= c!118859 (validKeyInArray!0 (select (arr!37695 lt!548291) #b00000000000000000000000000000000)))))

(declare-fun b!1208488 () Bool)

(declare-fun call!59166 () Bool)

(assert (=> b!1208488 (= e!686375 call!59166)))

(declare-fun bm!59163 () Bool)

(assert (=> bm!59163 (= call!59166 (arrayNoDuplicates!0 lt!548291 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118859 (Cons!26717 (select (arr!37695 lt!548291) #b00000000000000000000000000000000) Nil!26718) Nil!26718)))))

(declare-fun b!1208489 () Bool)

(declare-fun e!686374 () Bool)

(assert (=> b!1208489 (= e!686374 e!686372)))

(declare-fun res!803375 () Bool)

(assert (=> b!1208489 (=> (not res!803375) (not e!686372))))

(assert (=> b!1208489 (= res!803375 (not e!686373))))

(declare-fun res!803373 () Bool)

(assert (=> b!1208489 (=> (not res!803373) (not e!686373))))

(assert (=> b!1208489 (= res!803373 (validKeyInArray!0 (select (arr!37695 lt!548291) #b00000000000000000000000000000000)))))

(declare-fun d!133191 () Bool)

(declare-fun res!803374 () Bool)

(assert (=> d!133191 (=> res!803374 e!686374)))

(assert (=> d!133191 (= res!803374 (bvsge #b00000000000000000000000000000000 (size!38232 lt!548291)))))

(assert (=> d!133191 (= (arrayNoDuplicates!0 lt!548291 #b00000000000000000000000000000000 Nil!26718) e!686374)))

(declare-fun b!1208490 () Bool)

(assert (=> b!1208490 (= e!686375 call!59166)))

(assert (= (and d!133191 (not res!803374)) b!1208489))

(assert (= (and b!1208489 res!803373) b!1208486))

(assert (= (and b!1208489 res!803375) b!1208487))

(assert (= (and b!1208487 c!118859) b!1208488))

(assert (= (and b!1208487 (not c!118859)) b!1208490))

(assert (= (or b!1208488 b!1208490) bm!59163))

(assert (=> b!1208486 m!1114357))

(assert (=> b!1208486 m!1114357))

(declare-fun m!1114383 () Bool)

(assert (=> b!1208486 m!1114383))

(assert (=> b!1208487 m!1114357))

(assert (=> b!1208487 m!1114357))

(assert (=> b!1208487 m!1114359))

(assert (=> bm!59163 m!1114357))

(declare-fun m!1114385 () Bool)

(assert (=> bm!59163 m!1114385))

(assert (=> b!1208489 m!1114357))

(assert (=> b!1208489 m!1114357))

(assert (=> b!1208489 m!1114359))

(assert (=> b!1208251 d!133191))

(declare-fun d!133193 () Bool)

(assert (=> d!133193 (contains!6960 (+!3983 lt!548299 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!548443 () Unit!39980)

(declare-fun choose!1815 (ListLongMap!17879 (_ BitVec 64) V!46035 (_ BitVec 64)) Unit!39980)

(assert (=> d!133193 (= lt!548443 (choose!1815 lt!548299 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> d!133193 (contains!6960 lt!548299 k0!934)))

(assert (=> d!133193 (= (addStillContains!1048 lt!548299 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934) lt!548443)))

(declare-fun bs!34155 () Bool)

(assert (= bs!34155 d!133193))

(assert (=> bs!34155 m!1114095))

(assert (=> bs!34155 m!1114095))

(assert (=> bs!34155 m!1114097))

(declare-fun m!1114387 () Bool)

(assert (=> bs!34155 m!1114387))

(declare-fun m!1114389 () Bool)

(assert (=> bs!34155 m!1114389))

(assert (=> b!1208240 d!133193))

(declare-fun d!133195 () Bool)

(declare-fun e!686376 () Bool)

(assert (=> d!133195 e!686376))

(declare-fun res!803376 () Bool)

(assert (=> d!133195 (=> res!803376 e!686376)))

(declare-fun lt!548447 () Bool)

(assert (=> d!133195 (= res!803376 (not lt!548447))))

(declare-fun lt!548445 () Bool)

(assert (=> d!133195 (= lt!548447 lt!548445)))

(declare-fun lt!548444 () Unit!39980)

(declare-fun e!686377 () Unit!39980)

(assert (=> d!133195 (= lt!548444 e!686377)))

(declare-fun c!118860 () Bool)

(assert (=> d!133195 (= c!118860 lt!548445)))

(assert (=> d!133195 (= lt!548445 (containsKey!594 (toList!8955 (+!3983 lt!548299 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> d!133195 (= (contains!6960 (+!3983 lt!548299 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934) lt!548447)))

(declare-fun b!1208492 () Bool)

(declare-fun lt!548446 () Unit!39980)

(assert (=> b!1208492 (= e!686377 lt!548446)))

(assert (=> b!1208492 (= lt!548446 (lemmaContainsKeyImpliesGetValueByKeyDefined!423 (toList!8955 (+!3983 lt!548299 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> b!1208492 (isDefined!463 (getValueByKey!640 (toList!8955 (+!3983 lt!548299 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun b!1208493 () Bool)

(declare-fun Unit!39988 () Unit!39980)

(assert (=> b!1208493 (= e!686377 Unit!39988)))

(declare-fun b!1208494 () Bool)

(assert (=> b!1208494 (= e!686376 (isDefined!463 (getValueByKey!640 (toList!8955 (+!3983 lt!548299 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934)))))

(assert (= (and d!133195 c!118860) b!1208492))

(assert (= (and d!133195 (not c!118860)) b!1208493))

(assert (= (and d!133195 (not res!803376)) b!1208494))

(declare-fun m!1114391 () Bool)

(assert (=> d!133195 m!1114391))

(declare-fun m!1114393 () Bool)

(assert (=> b!1208492 m!1114393))

(declare-fun m!1114395 () Bool)

(assert (=> b!1208492 m!1114395))

(assert (=> b!1208492 m!1114395))

(declare-fun m!1114397 () Bool)

(assert (=> b!1208492 m!1114397))

(assert (=> b!1208494 m!1114395))

(assert (=> b!1208494 m!1114395))

(assert (=> b!1208494 m!1114397))

(assert (=> b!1208240 d!133195))

(declare-fun d!133197 () Bool)

(declare-fun e!686378 () Bool)

(assert (=> d!133197 e!686378))

(declare-fun res!803377 () Bool)

(assert (=> d!133197 (=> (not res!803377) (not e!686378))))

(declare-fun lt!548449 () ListLongMap!17879)

(assert (=> d!133197 (= res!803377 (contains!6960 lt!548449 (_1!9959 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!548450 () List!26720)

(assert (=> d!133197 (= lt!548449 (ListLongMap!17880 lt!548450))))

(declare-fun lt!548451 () Unit!39980)

(declare-fun lt!548448 () Unit!39980)

(assert (=> d!133197 (= lt!548451 lt!548448)))

(assert (=> d!133197 (= (getValueByKey!640 lt!548450 (_1!9959 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!690 (_2!9959 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!133197 (= lt!548448 (lemmaContainsTupThenGetReturnValue!315 lt!548450 (_1!9959 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9959 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!133197 (= lt!548450 (insertStrictlySorted!407 (toList!8955 lt!548299) (_1!9959 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9959 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!133197 (= (+!3983 lt!548299 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) lt!548449)))

(declare-fun b!1208495 () Bool)

(declare-fun res!803378 () Bool)

(assert (=> b!1208495 (=> (not res!803378) (not e!686378))))

(assert (=> b!1208495 (= res!803378 (= (getValueByKey!640 (toList!8955 lt!548449) (_1!9959 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!690 (_2!9959 (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1208496 () Bool)

(assert (=> b!1208496 (= e!686378 (contains!6963 (toList!8955 lt!548449) (tuple2!19899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(assert (= (and d!133197 res!803377) b!1208495))

(assert (= (and b!1208495 res!803378) b!1208496))

(declare-fun m!1114399 () Bool)

(assert (=> d!133197 m!1114399))

(declare-fun m!1114401 () Bool)

(assert (=> d!133197 m!1114401))

(declare-fun m!1114403 () Bool)

(assert (=> d!133197 m!1114403))

(declare-fun m!1114405 () Bool)

(assert (=> d!133197 m!1114405))

(declare-fun m!1114407 () Bool)

(assert (=> b!1208495 m!1114407))

(declare-fun m!1114409 () Bool)

(assert (=> b!1208496 m!1114409))

(assert (=> b!1208240 d!133197))

(declare-fun b!1208497 () Bool)

(declare-fun e!686380 () Bool)

(declare-fun e!686379 () Bool)

(assert (=> b!1208497 (= e!686380 e!686379)))

(declare-fun c!118861 () Bool)

(assert (=> b!1208497 (= c!118861 (validKeyInArray!0 (select (arr!37695 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1208498 () Bool)

(declare-fun e!686381 () Bool)

(assert (=> b!1208498 (= e!686379 e!686381)))

(declare-fun lt!548454 () (_ BitVec 64))

(assert (=> b!1208498 (= lt!548454 (select (arr!37695 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!548452 () Unit!39980)

(assert (=> b!1208498 (= lt!548452 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!548454 #b00000000000000000000000000000000))))

(assert (=> b!1208498 (arrayContainsKey!0 _keys!1208 lt!548454 #b00000000000000000000000000000000)))

(declare-fun lt!548453 () Unit!39980)

(assert (=> b!1208498 (= lt!548453 lt!548452)))

(declare-fun res!803379 () Bool)

(assert (=> b!1208498 (= res!803379 (= (seekEntryOrOpen!0 (select (arr!37695 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9936 #b00000000000000000000000000000000)))))

(assert (=> b!1208498 (=> (not res!803379) (not e!686381))))

(declare-fun b!1208499 () Bool)

(declare-fun call!59167 () Bool)

(assert (=> b!1208499 (= e!686379 call!59167)))

(declare-fun d!133199 () Bool)

(declare-fun res!803380 () Bool)

(assert (=> d!133199 (=> res!803380 e!686380)))

(assert (=> d!133199 (= res!803380 (bvsge #b00000000000000000000000000000000 (size!38232 _keys!1208)))))

(assert (=> d!133199 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!686380)))

(declare-fun b!1208500 () Bool)

(assert (=> b!1208500 (= e!686381 call!59167)))

(declare-fun bm!59164 () Bool)

(assert (=> bm!59164 (= call!59167 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(assert (= (and d!133199 (not res!803380)) b!1208497))

(assert (= (and b!1208497 c!118861) b!1208498))

(assert (= (and b!1208497 (not c!118861)) b!1208499))

(assert (= (and b!1208498 res!803379) b!1208500))

(assert (= (or b!1208500 b!1208499) bm!59164))

(assert (=> b!1208497 m!1114231))

(assert (=> b!1208497 m!1114231))

(assert (=> b!1208497 m!1114235))

(assert (=> b!1208498 m!1114231))

(declare-fun m!1114411 () Bool)

(assert (=> b!1208498 m!1114411))

(declare-fun m!1114413 () Bool)

(assert (=> b!1208498 m!1114413))

(assert (=> b!1208498 m!1114231))

(declare-fun m!1114415 () Bool)

(assert (=> b!1208498 m!1114415))

(declare-fun m!1114417 () Bool)

(assert (=> bm!59164 m!1114417))

(assert (=> b!1208224 d!133199))

(declare-fun d!133201 () Bool)

(declare-fun e!686386 () Bool)

(assert (=> d!133201 e!686386))

(declare-fun res!803383 () Bool)

(assert (=> d!133201 (=> (not res!803383) (not e!686386))))

(assert (=> d!133201 (= res!803383 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38232 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38232 _keys!1208))))))))

(declare-fun lt!548457 () Unit!39980)

(declare-fun choose!1816 (array!78120 array!78122 (_ BitVec 32) (_ BitVec 32) V!46035 V!46035 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39980)

(assert (=> d!133201 (= lt!548457 (choose!1816 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133201 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38232 _keys!1208)))))

(assert (=> d!133201 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1065 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!548457)))

(declare-fun b!1208507 () Bool)

(declare-fun e!686387 () Bool)

(assert (=> b!1208507 (= e!686386 e!686387)))

(declare-fun c!118864 () Bool)

(assert (=> b!1208507 (= c!118864 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun bm!59169 () Bool)

(declare-fun call!59172 () ListLongMap!17879)

(assert (=> bm!59169 (= call!59172 (getCurrentListMapNoExtraKeys!5362 (array!78121 (store (arr!37695 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38232 _keys!1208)) (array!78123 (store (arr!37696 _values!996) i!673 (ValueCellFull!14631 (dynLambda!3280 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38233 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59170 () Bool)

(declare-fun call!59173 () ListLongMap!17879)

(assert (=> bm!59170 (= call!59173 (getCurrentListMapNoExtraKeys!5362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208508 () Bool)

(assert (=> b!1208508 (= e!686387 (= call!59172 call!59173))))

(assert (=> b!1208508 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38233 _values!996)))))

(declare-fun b!1208509 () Bool)

(assert (=> b!1208509 (= e!686387 (= call!59172 (-!1861 call!59173 k0!934)))))

(assert (=> b!1208509 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38233 _values!996)))))

(assert (= (and d!133201 res!803383) b!1208507))

(assert (= (and b!1208507 c!118864) b!1208509))

(assert (= (and b!1208507 (not c!118864)) b!1208508))

(assert (= (or b!1208509 b!1208508) bm!59170))

(assert (= (or b!1208509 b!1208508) bm!59169))

(declare-fun b_lambda!21533 () Bool)

(assert (=> (not b_lambda!21533) (not bm!59169)))

(assert (=> bm!59169 t!39683))

(declare-fun b_and!43033 () Bool)

(assert (= b_and!43031 (and (=> t!39683 result!22151) b_and!43033)))

(declare-fun m!1114419 () Bool)

(assert (=> d!133201 m!1114419))

(assert (=> bm!59169 m!1114129))

(assert (=> bm!59169 m!1114117))

(assert (=> bm!59169 m!1114119))

(declare-fun m!1114421 () Bool)

(assert (=> bm!59169 m!1114421))

(assert (=> bm!59170 m!1114081))

(declare-fun m!1114423 () Bool)

(assert (=> b!1208509 m!1114423))

(assert (=> b!1208225 d!133201))

(declare-fun d!133203 () Bool)

(assert (=> d!133203 (contains!6960 (+!3983 lt!548295 (tuple2!19899 (ite (or c!118802 c!118805) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118802 c!118805) zeroValue!944 minValue!944))) k0!934)))

(declare-fun lt!548458 () Unit!39980)

(assert (=> d!133203 (= lt!548458 (choose!1815 lt!548295 (ite (or c!118802 c!118805) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118802 c!118805) zeroValue!944 minValue!944) k0!934))))

(assert (=> d!133203 (contains!6960 lt!548295 k0!934)))

(assert (=> d!133203 (= (addStillContains!1048 lt!548295 (ite (or c!118802 c!118805) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118802 c!118805) zeroValue!944 minValue!944) k0!934) lt!548458)))

(declare-fun bs!34156 () Bool)

(assert (= bs!34156 d!133203))

(declare-fun m!1114425 () Bool)

(assert (=> bs!34156 m!1114425))

(assert (=> bs!34156 m!1114425))

(declare-fun m!1114427 () Bool)

(assert (=> bs!34156 m!1114427))

(declare-fun m!1114429 () Bool)

(assert (=> bs!34156 m!1114429))

(assert (=> bs!34156 m!1114079))

(assert (=> bm!59120 d!133203))

(declare-fun b!1208517 () Bool)

(declare-fun e!686392 () Bool)

(assert (=> b!1208517 (= e!686392 tp_is_empty!30681)))

(declare-fun mapIsEmpty!47890 () Bool)

(declare-fun mapRes!47890 () Bool)

(assert (=> mapIsEmpty!47890 mapRes!47890))

(declare-fun b!1208516 () Bool)

(declare-fun e!686393 () Bool)

(assert (=> b!1208516 (= e!686393 tp_is_empty!30681)))

(declare-fun condMapEmpty!47890 () Bool)

(declare-fun mapDefault!47890 () ValueCell!14631)

(assert (=> mapNonEmpty!47884 (= condMapEmpty!47890 (= mapRest!47884 ((as const (Array (_ BitVec 32) ValueCell!14631)) mapDefault!47890)))))

(assert (=> mapNonEmpty!47884 (= tp!90942 (and e!686392 mapRes!47890))))

(declare-fun mapNonEmpty!47890 () Bool)

(declare-fun tp!90951 () Bool)

(assert (=> mapNonEmpty!47890 (= mapRes!47890 (and tp!90951 e!686393))))

(declare-fun mapRest!47890 () (Array (_ BitVec 32) ValueCell!14631))

(declare-fun mapKey!47890 () (_ BitVec 32))

(declare-fun mapValue!47890 () ValueCell!14631)

(assert (=> mapNonEmpty!47890 (= mapRest!47884 (store mapRest!47890 mapKey!47890 mapValue!47890))))

(assert (= (and mapNonEmpty!47884 condMapEmpty!47890) mapIsEmpty!47890))

(assert (= (and mapNonEmpty!47884 (not condMapEmpty!47890)) mapNonEmpty!47890))

(assert (= (and mapNonEmpty!47890 ((_ is ValueCellFull!14631) mapValue!47890)) b!1208516))

(assert (= (and mapNonEmpty!47884 ((_ is ValueCellFull!14631) mapDefault!47890)) b!1208517))

(declare-fun m!1114431 () Bool)

(assert (=> mapNonEmpty!47890 m!1114431))

(declare-fun b_lambda!21535 () Bool)

(assert (= b_lambda!21529 (or (and start!100944 b_free!25977) b_lambda!21535)))

(declare-fun b_lambda!21537 () Bool)

(assert (= b_lambda!21523 (or (and start!100944 b_free!25977) b_lambda!21537)))

(declare-fun b_lambda!21539 () Bool)

(assert (= b_lambda!21517 (or (and start!100944 b_free!25977) b_lambda!21539)))

(declare-fun b_lambda!21541 () Bool)

(assert (= b_lambda!21531 (or (and start!100944 b_free!25977) b_lambda!21541)))

(declare-fun b_lambda!21543 () Bool)

(assert (= b_lambda!21533 (or (and start!100944 b_free!25977) b_lambda!21543)))

(declare-fun b_lambda!21545 () Bool)

(assert (= b_lambda!21521 (or (and start!100944 b_free!25977) b_lambda!21545)))

(declare-fun b_lambda!21547 () Bool)

(assert (= b_lambda!21525 (or (and start!100944 b_free!25977) b_lambda!21547)))

(declare-fun b_lambda!21549 () Bool)

(assert (= b_lambda!21527 (or (and start!100944 b_free!25977) b_lambda!21549)))

(declare-fun b_lambda!21551 () Bool)

(assert (= b_lambda!21519 (or (and start!100944 b_free!25977) b_lambda!21551)))

(check-sat (not b!1208368) (not b!1208438) (not b!1208400) (not bm!59169) (not b!1208497) (not b!1208451) (not b!1208420) (not b!1208407) (not bm!59158) (not b!1208509) (not b!1208476) (not b!1208370) (not b!1208423) (not d!133195) (not d!133203) (not b!1208450) (not d!133163) (not b!1208485) (not b!1208374) (not bm!59161) (not b_lambda!21539) (not b!1208415) (not b_next!25977) (not b!1208413) (not bm!59164) (not bm!59163) (not b!1208431) (not d!133179) (not b!1208492) (not b!1208464) (not b!1208399) (not b!1208486) (not d!133185) (not b!1208442) (not b!1208433) (not b!1208373) (not b!1208489) b_and!43033 (not b!1208449) (not b!1208390) (not b!1208403) (not d!133197) (not b!1208393) (not d!133173) (not b!1208494) (not d!133153) (not b!1208453) (not b!1208443) (not d!133171) (not b_lambda!21535) (not d!133157) (not b_lambda!21541) (not b!1208377) (not b!1208409) (not d!133193) (not b!1208408) (not b_lambda!21547) (not d!133165) (not b_lambda!21549) (not bm!59170) (not b!1208496) (not b!1208419) (not b!1208498) (not d!133201) (not bm!59155) (not mapNonEmpty!47890) (not b!1208495) (not b_lambda!21537) (not b!1208421) (not b!1208470) (not bm!59157) (not d!133159) (not b_lambda!21515) (not d!133161) (not b!1208468) (not b!1208418) (not bm!59162) (not b!1208463) (not b!1208401) (not b!1208375) (not b!1208376) (not b!1208452) (not b_lambda!21551) (not b!1208445) (not b!1208422) (not b!1208410) (not d!133181) (not b!1208406) (not b!1208378) (not b!1208391) (not bm!59152) (not b!1208467) (not b!1208440) (not b!1208483) (not b!1208448) (not b_lambda!21545) (not b!1208487) (not bm!59156) (not b_lambda!21543) (not b!1208439) tp_is_empty!30681 (not b!1208411))
(check-sat b_and!43033 (not b_next!25977))
