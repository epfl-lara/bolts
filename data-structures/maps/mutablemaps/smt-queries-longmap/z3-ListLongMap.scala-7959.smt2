; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98632 () Bool)

(assert start!98632)

(declare-fun b_free!24201 () Bool)

(declare-fun b_next!24201 () Bool)

(assert (=> start!98632 (= b_free!24201 (not b_next!24201))))

(declare-fun tp!85315 () Bool)

(declare-fun b_and!39265 () Bool)

(assert (=> start!98632 (= tp!85315 b_and!39265)))

(declare-fun b!1144194 () Bool)

(declare-fun res!762247 () Bool)

(declare-fun e!650920 () Bool)

(assert (=> b!1144194 (=> (not res!762247) (not e!650920))))

(declare-datatypes ((array!74270 0))(
  ( (array!74271 (arr!35782 (Array (_ BitVec 32) (_ BitVec 64))) (size!36319 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74270)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1144194 (= res!762247 (= (select (arr!35782 _keys!1208) i!673) k0!934))))

(declare-fun b!1144195 () Bool)

(declare-fun res!762246 () Bool)

(assert (=> b!1144195 (=> (not res!762246) (not e!650920))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43435 0))(
  ( (V!43436 (val!14422 Int)) )
))
(declare-datatypes ((ValueCell!13656 0))(
  ( (ValueCellFull!13656 (v!17060 V!43435)) (EmptyCell!13656) )
))
(declare-datatypes ((array!74272 0))(
  ( (array!74273 (arr!35783 (Array (_ BitVec 32) ValueCell!13656)) (size!36320 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74272)

(assert (=> b!1144195 (= res!762246 (and (= (size!36320 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36319 _keys!1208) (size!36320 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1144196 () Bool)

(declare-datatypes ((Unit!37483 0))(
  ( (Unit!37484) )
))
(declare-fun e!650928 () Unit!37483)

(declare-fun Unit!37485 () Unit!37483)

(assert (=> b!1144196 (= e!650928 Unit!37485)))

(declare-fun call!51960 () Bool)

(declare-fun bm!51950 () Bool)

(declare-datatypes ((tuple2!18344 0))(
  ( (tuple2!18345 (_1!9182 (_ BitVec 64)) (_2!9182 V!43435)) )
))
(declare-datatypes ((List!25144 0))(
  ( (Nil!25141) (Cons!25140 (h!26349 tuple2!18344) (t!36344 List!25144)) )
))
(declare-datatypes ((ListLongMap!16325 0))(
  ( (ListLongMap!16326 (toList!8178 List!25144)) )
))
(declare-fun call!51957 () ListLongMap!16325)

(declare-fun lt!510485 () ListLongMap!16325)

(declare-fun c!112616 () Bool)

(declare-fun contains!6680 (ListLongMap!16325 (_ BitVec 64)) Bool)

(assert (=> bm!51950 (= call!51960 (contains!6680 (ite c!112616 lt!510485 call!51957) k0!934))))

(declare-fun b!1144197 () Bool)

(declare-fun res!762244 () Bool)

(assert (=> b!1144197 (=> (not res!762244) (not e!650920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1144197 (= res!762244 (validMask!0 mask!1564))))

(declare-fun b!1144198 () Bool)

(declare-fun e!650923 () Bool)

(assert (=> b!1144198 (= e!650920 e!650923)))

(declare-fun res!762239 () Bool)

(assert (=> b!1144198 (=> (not res!762239) (not e!650923))))

(declare-fun lt!510470 () array!74270)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74270 (_ BitVec 32)) Bool)

(assert (=> b!1144198 (= res!762239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510470 mask!1564))))

(assert (=> b!1144198 (= lt!510470 (array!74271 (store (arr!35782 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36319 _keys!1208)))))

(declare-fun b!1144199 () Bool)

(declare-fun e!650915 () Bool)

(declare-fun e!650918 () Bool)

(declare-fun mapRes!44921 () Bool)

(assert (=> b!1144199 (= e!650915 (and e!650918 mapRes!44921))))

(declare-fun condMapEmpty!44921 () Bool)

(declare-fun mapDefault!44921 () ValueCell!13656)

(assert (=> b!1144199 (= condMapEmpty!44921 (= (arr!35783 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13656)) mapDefault!44921)))))

(declare-fun b!1144200 () Bool)

(declare-fun e!650925 () Bool)

(declare-fun e!650916 () Bool)

(assert (=> b!1144200 (= e!650925 e!650916)))

(declare-fun res!762236 () Bool)

(assert (=> b!1144200 (=> res!762236 e!650916)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1144200 (= res!762236 (not (= (select (arr!35782 _keys!1208) from!1455) k0!934)))))

(declare-fun e!650922 () Bool)

(assert (=> b!1144200 e!650922))

(declare-fun c!112615 () Bool)

(assert (=> b!1144200 (= c!112615 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43435)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43435)

(declare-fun lt!510469 () Unit!37483)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!526 (array!74270 array!74272 (_ BitVec 32) (_ BitVec 32) V!43435 V!43435 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37483)

(assert (=> b!1144200 (= lt!510469 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!526 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144201 () Bool)

(declare-fun res!762240 () Bool)

(assert (=> b!1144201 (=> (not res!762240) (not e!650920))))

(assert (=> b!1144201 (= res!762240 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36319 _keys!1208))))))

(declare-fun b!1144202 () Bool)

(declare-fun e!650913 () Bool)

(assert (=> b!1144202 (= e!650923 (not e!650913))))

(declare-fun res!762237 () Bool)

(assert (=> b!1144202 (=> res!762237 e!650913)))

(assert (=> b!1144202 (= res!762237 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1144202 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!510478 () Unit!37483)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74270 (_ BitVec 64) (_ BitVec 32)) Unit!37483)

(assert (=> b!1144202 (= lt!510478 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun c!112618 () Bool)

(declare-fun lt!510475 () ListLongMap!16325)

(declare-fun call!51953 () ListLongMap!16325)

(declare-fun bm!51951 () Bool)

(declare-fun +!3522 (ListLongMap!16325 tuple2!18344) ListLongMap!16325)

(assert (=> bm!51951 (= call!51953 (+!3522 lt!510475 (ite (or c!112616 c!112618) (tuple2!18345 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18345 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!51952 () Bool)

(assert (=> bm!51952 (= call!51957 call!51953)))

(declare-fun b!1144203 () Bool)

(declare-fun res!762243 () Bool)

(assert (=> b!1144203 (=> (not res!762243) (not e!650920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1144203 (= res!762243 (validKeyInArray!0 k0!934))))

(declare-fun bm!51953 () Bool)

(declare-fun lt!510481 () array!74272)

(declare-fun call!51956 () ListLongMap!16325)

(declare-fun getCurrentListMapNoExtraKeys!4620 (array!74270 array!74272 (_ BitVec 32) (_ BitVec 32) V!43435 V!43435 (_ BitVec 32) Int) ListLongMap!16325)

(assert (=> bm!51953 (= call!51956 (getCurrentListMapNoExtraKeys!4620 lt!510470 lt!510481 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144204 () Bool)

(assert (=> b!1144204 (= e!650913 e!650925)))

(declare-fun res!762245 () Bool)

(assert (=> b!1144204 (=> res!762245 e!650925)))

(assert (=> b!1144204 (= res!762245 (not (= from!1455 i!673)))))

(declare-fun lt!510474 () ListLongMap!16325)

(assert (=> b!1144204 (= lt!510474 (getCurrentListMapNoExtraKeys!4620 lt!510470 lt!510481 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!510477 () V!43435)

(assert (=> b!1144204 (= lt!510481 (array!74273 (store (arr!35783 _values!996) i!673 (ValueCellFull!13656 lt!510477)) (size!36320 _values!996)))))

(declare-fun dynLambda!2665 (Int (_ BitVec 64)) V!43435)

(assert (=> b!1144204 (= lt!510477 (dynLambda!2665 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!510472 () ListLongMap!16325)

(assert (=> b!1144204 (= lt!510472 (getCurrentListMapNoExtraKeys!4620 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1144205 () Bool)

(declare-fun e!650912 () Unit!37483)

(assert (=> b!1144205 (= e!650912 e!650928)))

(declare-fun c!112619 () Bool)

(declare-fun lt!510486 () Bool)

(assert (=> b!1144205 (= c!112619 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510486))))

(declare-fun b!1144206 () Bool)

(declare-fun res!762234 () Bool)

(assert (=> b!1144206 (=> (not res!762234) (not e!650920))))

(assert (=> b!1144206 (= res!762234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1144207 () Bool)

(declare-fun call!51959 () ListLongMap!16325)

(declare-fun -!1271 (ListLongMap!16325 (_ BitVec 64)) ListLongMap!16325)

(assert (=> b!1144207 (= e!650922 (= call!51956 (-!1271 call!51959 k0!934)))))

(declare-fun bm!51954 () Bool)

(assert (=> bm!51954 (= call!51959 (getCurrentListMapNoExtraKeys!4620 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144208 () Bool)

(declare-fun e!650919 () Bool)

(assert (=> b!1144208 (= e!650919 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1144209 () Bool)

(assert (=> b!1144209 (= e!650922 (= call!51956 call!51959))))

(declare-fun mapIsEmpty!44921 () Bool)

(assert (=> mapIsEmpty!44921 mapRes!44921))

(declare-fun b!1144210 () Bool)

(assert (=> b!1144210 (= c!112618 (and (not lt!510486) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!650921 () Unit!37483)

(assert (=> b!1144210 (= e!650921 e!650912)))

(declare-fun b!1144211 () Bool)

(declare-fun e!650924 () Bool)

(declare-fun tp_is_empty!28731 () Bool)

(assert (=> b!1144211 (= e!650924 tp_is_empty!28731)))

(declare-fun e!650927 () Bool)

(declare-fun b!1144212 () Bool)

(assert (=> b!1144212 (= e!650927 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1144213 () Bool)

(declare-fun lt!510473 () Unit!37483)

(assert (=> b!1144213 (= e!650912 lt!510473)))

(declare-fun call!51958 () Unit!37483)

(assert (=> b!1144213 (= lt!510473 call!51958)))

(declare-fun call!51955 () Bool)

(assert (=> b!1144213 call!51955))

(declare-fun b!1144214 () Bool)

(declare-fun res!762235 () Bool)

(assert (=> b!1144214 (=> (not res!762235) (not e!650923))))

(declare-datatypes ((List!25145 0))(
  ( (Nil!25142) (Cons!25141 (h!26350 (_ BitVec 64)) (t!36345 List!25145)) )
))
(declare-fun arrayNoDuplicates!0 (array!74270 (_ BitVec 32) List!25145) Bool)

(assert (=> b!1144214 (= res!762235 (arrayNoDuplicates!0 lt!510470 #b00000000000000000000000000000000 Nil!25142))))

(declare-fun call!51954 () Unit!37483)

(declare-fun bm!51955 () Bool)

(declare-fun addStillContains!819 (ListLongMap!16325 (_ BitVec 64) V!43435 (_ BitVec 64)) Unit!37483)

(assert (=> bm!51955 (= call!51954 (addStillContains!819 (ite c!112616 lt!510485 lt!510475) (ite c!112616 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112618 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112616 minValue!944 (ite c!112618 zeroValue!944 minValue!944)) k0!934))))

(declare-fun bm!51956 () Bool)

(assert (=> bm!51956 (= call!51955 call!51960)))

(declare-fun b!1144215 () Bool)

(assert (=> b!1144215 (= e!650919 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!510486) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1144216 () Bool)

(assert (=> b!1144216 (contains!6680 (+!3522 lt!510485 (tuple2!18345 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!510487 () Unit!37483)

(assert (=> b!1144216 (= lt!510487 call!51954)))

(assert (=> b!1144216 call!51960))

(assert (=> b!1144216 (= lt!510485 call!51953)))

(declare-fun lt!510489 () Unit!37483)

(assert (=> b!1144216 (= lt!510489 (addStillContains!819 lt!510475 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1144216 (= e!650921 lt!510487)))

(declare-fun b!1144217 () Bool)

(declare-fun e!650926 () Unit!37483)

(declare-fun Unit!37486 () Unit!37483)

(assert (=> b!1144217 (= e!650926 Unit!37486)))

(assert (=> b!1144217 (= lt!510486 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1144217 (= c!112616 (and (not lt!510486) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510471 () Unit!37483)

(assert (=> b!1144217 (= lt!510471 e!650921)))

(declare-fun lt!510476 () Unit!37483)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!414 (array!74270 array!74272 (_ BitVec 32) (_ BitVec 32) V!43435 V!43435 (_ BitVec 64) (_ BitVec 32) Int) Unit!37483)

(assert (=> b!1144217 (= lt!510476 (lemmaListMapContainsThenArrayContainsFrom!414 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112620 () Bool)

(assert (=> b!1144217 (= c!112620 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762242 () Bool)

(assert (=> b!1144217 (= res!762242 e!650919)))

(assert (=> b!1144217 (=> (not res!762242) (not e!650927))))

(assert (=> b!1144217 e!650927))

(declare-fun lt!510479 () Unit!37483)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74270 (_ BitVec 32) (_ BitVec 32)) Unit!37483)

(assert (=> b!1144217 (= lt!510479 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1144217 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25142)))

(declare-fun lt!510488 () Unit!37483)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74270 (_ BitVec 64) (_ BitVec 32) List!25145) Unit!37483)

(assert (=> b!1144217 (= lt!510488 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25142))))

(assert (=> b!1144217 false))

(declare-fun b!1144218 () Bool)

(declare-fun e!650917 () Bool)

(assert (=> b!1144218 (= e!650917 (= (-!1271 lt!510472 k0!934) lt!510475))))

(declare-fun b!1144219 () Bool)

(assert (=> b!1144219 (= e!650916 true)))

(assert (=> b!1144219 e!650917))

(declare-fun res!762238 () Bool)

(assert (=> b!1144219 (=> (not res!762238) (not e!650917))))

(declare-fun lt!510483 () V!43435)

(assert (=> b!1144219 (= res!762238 (= (-!1271 (+!3522 lt!510475 (tuple2!18345 (select (arr!35782 _keys!1208) from!1455) lt!510483)) (select (arr!35782 _keys!1208) from!1455)) lt!510475))))

(declare-fun lt!510482 () Unit!37483)

(declare-fun addThenRemoveForNewKeyIsSame!126 (ListLongMap!16325 (_ BitVec 64) V!43435) Unit!37483)

(assert (=> b!1144219 (= lt!510482 (addThenRemoveForNewKeyIsSame!126 lt!510475 (select (arr!35782 _keys!1208) from!1455) lt!510483))))

(declare-fun get!18214 (ValueCell!13656 V!43435) V!43435)

(assert (=> b!1144219 (= lt!510483 (get!18214 (select (arr!35783 _values!996) from!1455) lt!510477))))

(declare-fun lt!510480 () Unit!37483)

(assert (=> b!1144219 (= lt!510480 e!650926)))

(declare-fun c!112617 () Bool)

(assert (=> b!1144219 (= c!112617 (contains!6680 lt!510475 k0!934))))

(assert (=> b!1144219 (= lt!510475 (getCurrentListMapNoExtraKeys!4620 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44921 () Bool)

(declare-fun tp!85314 () Bool)

(assert (=> mapNonEmpty!44921 (= mapRes!44921 (and tp!85314 e!650924))))

(declare-fun mapKey!44921 () (_ BitVec 32))

(declare-fun mapRest!44921 () (Array (_ BitVec 32) ValueCell!13656))

(declare-fun mapValue!44921 () ValueCell!13656)

(assert (=> mapNonEmpty!44921 (= (arr!35783 _values!996) (store mapRest!44921 mapKey!44921 mapValue!44921))))

(declare-fun b!1144220 () Bool)

(declare-fun Unit!37487 () Unit!37483)

(assert (=> b!1144220 (= e!650926 Unit!37487)))

(declare-fun b!1144221 () Bool)

(assert (=> b!1144221 call!51955))

(declare-fun lt!510484 () Unit!37483)

(assert (=> b!1144221 (= lt!510484 call!51958)))

(assert (=> b!1144221 (= e!650928 lt!510484)))

(declare-fun b!1144223 () Bool)

(assert (=> b!1144223 (= e!650918 tp_is_empty!28731)))

(declare-fun bm!51957 () Bool)

(assert (=> bm!51957 (= call!51958 call!51954)))

(declare-fun b!1144222 () Bool)

(declare-fun res!762241 () Bool)

(assert (=> b!1144222 (=> (not res!762241) (not e!650920))))

(assert (=> b!1144222 (= res!762241 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25142))))

(declare-fun res!762248 () Bool)

(assert (=> start!98632 (=> (not res!762248) (not e!650920))))

(assert (=> start!98632 (= res!762248 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36319 _keys!1208))))))

(assert (=> start!98632 e!650920))

(assert (=> start!98632 tp_is_empty!28731))

(declare-fun array_inv!27294 (array!74270) Bool)

(assert (=> start!98632 (array_inv!27294 _keys!1208)))

(assert (=> start!98632 true))

(assert (=> start!98632 tp!85315))

(declare-fun array_inv!27295 (array!74272) Bool)

(assert (=> start!98632 (and (array_inv!27295 _values!996) e!650915)))

(assert (= (and start!98632 res!762248) b!1144197))

(assert (= (and b!1144197 res!762244) b!1144195))

(assert (= (and b!1144195 res!762246) b!1144206))

(assert (= (and b!1144206 res!762234) b!1144222))

(assert (= (and b!1144222 res!762241) b!1144201))

(assert (= (and b!1144201 res!762240) b!1144203))

(assert (= (and b!1144203 res!762243) b!1144194))

(assert (= (and b!1144194 res!762247) b!1144198))

(assert (= (and b!1144198 res!762239) b!1144214))

(assert (= (and b!1144214 res!762235) b!1144202))

(assert (= (and b!1144202 (not res!762237)) b!1144204))

(assert (= (and b!1144204 (not res!762245)) b!1144200))

(assert (= (and b!1144200 c!112615) b!1144207))

(assert (= (and b!1144200 (not c!112615)) b!1144209))

(assert (= (or b!1144207 b!1144209) bm!51953))

(assert (= (or b!1144207 b!1144209) bm!51954))

(assert (= (and b!1144200 (not res!762236)) b!1144219))

(assert (= (and b!1144219 c!112617) b!1144217))

(assert (= (and b!1144219 (not c!112617)) b!1144220))

(assert (= (and b!1144217 c!112616) b!1144216))

(assert (= (and b!1144217 (not c!112616)) b!1144210))

(assert (= (and b!1144210 c!112618) b!1144213))

(assert (= (and b!1144210 (not c!112618)) b!1144205))

(assert (= (and b!1144205 c!112619) b!1144221))

(assert (= (and b!1144205 (not c!112619)) b!1144196))

(assert (= (or b!1144213 b!1144221) bm!51957))

(assert (= (or b!1144213 b!1144221) bm!51952))

(assert (= (or b!1144213 b!1144221) bm!51956))

(assert (= (or b!1144216 bm!51956) bm!51950))

(assert (= (or b!1144216 bm!51957) bm!51955))

(assert (= (or b!1144216 bm!51952) bm!51951))

(assert (= (and b!1144217 c!112620) b!1144208))

(assert (= (and b!1144217 (not c!112620)) b!1144215))

(assert (= (and b!1144217 res!762242) b!1144212))

(assert (= (and b!1144219 res!762238) b!1144218))

(assert (= (and b!1144199 condMapEmpty!44921) mapIsEmpty!44921))

(assert (= (and b!1144199 (not condMapEmpty!44921)) mapNonEmpty!44921))

(get-info :version)

(assert (= (and mapNonEmpty!44921 ((_ is ValueCellFull!13656) mapValue!44921)) b!1144211))

(assert (= (and b!1144199 ((_ is ValueCellFull!13656) mapDefault!44921)) b!1144223))

(assert (= start!98632 b!1144199))

(declare-fun b_lambda!19325 () Bool)

(assert (=> (not b_lambda!19325) (not b!1144204)))

(declare-fun t!36343 () Bool)

(declare-fun tb!9021 () Bool)

(assert (=> (and start!98632 (= defaultEntry!1004 defaultEntry!1004) t!36343) tb!9021))

(declare-fun result!18599 () Bool)

(assert (=> tb!9021 (= result!18599 tp_is_empty!28731)))

(assert (=> b!1144204 t!36343))

(declare-fun b_and!39267 () Bool)

(assert (= b_and!39265 (and (=> t!36343 result!18599) b_and!39267)))

(declare-fun m!1055289 () Bool)

(assert (=> b!1144208 m!1055289))

(declare-fun m!1055291 () Bool)

(assert (=> bm!51950 m!1055291))

(declare-fun m!1055293 () Bool)

(assert (=> start!98632 m!1055293))

(declare-fun m!1055295 () Bool)

(assert (=> start!98632 m!1055295))

(declare-fun m!1055297 () Bool)

(assert (=> b!1144206 m!1055297))

(declare-fun m!1055299 () Bool)

(assert (=> b!1144204 m!1055299))

(declare-fun m!1055301 () Bool)

(assert (=> b!1144204 m!1055301))

(declare-fun m!1055303 () Bool)

(assert (=> b!1144204 m!1055303))

(declare-fun m!1055305 () Bool)

(assert (=> b!1144204 m!1055305))

(declare-fun m!1055307 () Bool)

(assert (=> b!1144222 m!1055307))

(declare-fun m!1055309 () Bool)

(assert (=> bm!51954 m!1055309))

(declare-fun m!1055311 () Bool)

(assert (=> b!1144200 m!1055311))

(declare-fun m!1055313 () Bool)

(assert (=> b!1144200 m!1055313))

(declare-fun m!1055315 () Bool)

(assert (=> b!1144197 m!1055315))

(declare-fun m!1055317 () Bool)

(assert (=> b!1144202 m!1055317))

(declare-fun m!1055319 () Bool)

(assert (=> b!1144202 m!1055319))

(declare-fun m!1055321 () Bool)

(assert (=> b!1144203 m!1055321))

(declare-fun m!1055323 () Bool)

(assert (=> b!1144198 m!1055323))

(declare-fun m!1055325 () Bool)

(assert (=> b!1144198 m!1055325))

(declare-fun m!1055327 () Bool)

(assert (=> bm!51951 m!1055327))

(assert (=> b!1144219 m!1055309))

(declare-fun m!1055329 () Bool)

(assert (=> b!1144219 m!1055329))

(declare-fun m!1055331 () Bool)

(assert (=> b!1144219 m!1055331))

(assert (=> b!1144219 m!1055311))

(declare-fun m!1055333 () Bool)

(assert (=> b!1144219 m!1055333))

(assert (=> b!1144219 m!1055329))

(declare-fun m!1055335 () Bool)

(assert (=> b!1144219 m!1055335))

(assert (=> b!1144219 m!1055311))

(assert (=> b!1144219 m!1055311))

(declare-fun m!1055337 () Bool)

(assert (=> b!1144219 m!1055337))

(assert (=> b!1144219 m!1055331))

(declare-fun m!1055339 () Bool)

(assert (=> b!1144219 m!1055339))

(assert (=> b!1144212 m!1055289))

(declare-fun m!1055341 () Bool)

(assert (=> mapNonEmpty!44921 m!1055341))

(declare-fun m!1055343 () Bool)

(assert (=> bm!51955 m!1055343))

(declare-fun m!1055345 () Bool)

(assert (=> b!1144207 m!1055345))

(declare-fun m!1055347 () Bool)

(assert (=> b!1144214 m!1055347))

(declare-fun m!1055349 () Bool)

(assert (=> b!1144194 m!1055349))

(declare-fun m!1055351 () Bool)

(assert (=> bm!51953 m!1055351))

(declare-fun m!1055353 () Bool)

(assert (=> b!1144217 m!1055353))

(declare-fun m!1055355 () Bool)

(assert (=> b!1144217 m!1055355))

(declare-fun m!1055357 () Bool)

(assert (=> b!1144217 m!1055357))

(declare-fun m!1055359 () Bool)

(assert (=> b!1144217 m!1055359))

(declare-fun m!1055361 () Bool)

(assert (=> b!1144216 m!1055361))

(assert (=> b!1144216 m!1055361))

(declare-fun m!1055363 () Bool)

(assert (=> b!1144216 m!1055363))

(declare-fun m!1055365 () Bool)

(assert (=> b!1144216 m!1055365))

(declare-fun m!1055367 () Bool)

(assert (=> b!1144218 m!1055367))

(check-sat (not b!1144208) (not bm!51951) (not b!1144214) (not b_next!24201) (not b!1144204) (not b!1144218) (not bm!51955) (not bm!51953) (not bm!51954) (not b!1144216) (not b!1144219) (not start!98632) (not b!1144206) (not mapNonEmpty!44921) (not b!1144202) (not b!1144217) (not b!1144198) (not b!1144200) tp_is_empty!28731 (not b!1144197) b_and!39267 (not b_lambda!19325) (not b!1144203) (not b!1144222) (not b!1144207) (not bm!51950) (not b!1144212))
(check-sat b_and!39267 (not b_next!24201))
