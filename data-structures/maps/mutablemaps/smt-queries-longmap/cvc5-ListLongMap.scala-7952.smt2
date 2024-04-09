; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98588 () Bool)

(assert start!98588)

(declare-fun b_free!24157 () Bool)

(declare-fun b_next!24157 () Bool)

(assert (=> start!98588 (= b_free!24157 (not b_next!24157))))

(declare-fun tp!85182 () Bool)

(declare-fun b_and!39177 () Bool)

(assert (=> start!98588 (= tp!85182 b_and!39177)))

(declare-fun b!1142231 () Bool)

(declare-fun e!649864 () Bool)

(assert (=> b!1142231 (= e!649864 true)))

(declare-datatypes ((array!74184 0))(
  ( (array!74185 (arr!35739 (Array (_ BitVec 32) (_ BitVec 64))) (size!36276 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74184)

(declare-datatypes ((V!43377 0))(
  ( (V!43378 (val!14400 Int)) )
))
(declare-fun lt!509094 () V!43377)

(declare-datatypes ((tuple2!18306 0))(
  ( (tuple2!18307 (_1!9163 (_ BitVec 64)) (_2!9163 V!43377)) )
))
(declare-datatypes ((List!25106 0))(
  ( (Nil!25103) (Cons!25102 (h!26311 tuple2!18306) (t!36262 List!25106)) )
))
(declare-datatypes ((ListLongMap!16287 0))(
  ( (ListLongMap!16288 (toList!8159 List!25106)) )
))
(declare-fun lt!509085 () ListLongMap!16287)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun -!1253 (ListLongMap!16287 (_ BitVec 64)) ListLongMap!16287)

(declare-fun +!3503 (ListLongMap!16287 tuple2!18306) ListLongMap!16287)

(assert (=> b!1142231 (= (-!1253 (+!3503 lt!509085 (tuple2!18307 (select (arr!35739 _keys!1208) from!1455) lt!509094)) (select (arr!35739 _keys!1208) from!1455)) lt!509085)))

(declare-datatypes ((Unit!37396 0))(
  ( (Unit!37397) )
))
(declare-fun lt!509098 () Unit!37396)

(declare-fun addThenRemoveForNewKeyIsSame!108 (ListLongMap!16287 (_ BitVec 64) V!43377) Unit!37396)

(assert (=> b!1142231 (= lt!509098 (addThenRemoveForNewKeyIsSame!108 lt!509085 (select (arr!35739 _keys!1208) from!1455) lt!509094))))

(declare-fun lt!509084 () V!43377)

(declare-datatypes ((ValueCell!13634 0))(
  ( (ValueCellFull!13634 (v!17038 V!43377)) (EmptyCell!13634) )
))
(declare-datatypes ((array!74186 0))(
  ( (array!74187 (arr!35740 (Array (_ BitVec 32) ValueCell!13634)) (size!36277 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74186)

(declare-fun get!18182 (ValueCell!13634 V!43377) V!43377)

(assert (=> b!1142231 (= lt!509094 (get!18182 (select (arr!35740 _values!996) from!1455) lt!509084))))

(declare-fun lt!509086 () Unit!37396)

(declare-fun e!649865 () Unit!37396)

(assert (=> b!1142231 (= lt!509086 e!649865)))

(declare-fun c!112219 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6662 (ListLongMap!16287 (_ BitVec 64)) Bool)

(assert (=> b!1142231 (= c!112219 (contains!6662 lt!509085 k!934))))

(declare-fun zeroValue!944 () V!43377)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43377)

(declare-fun getCurrentListMapNoExtraKeys!4602 (array!74184 array!74186 (_ BitVec 32) (_ BitVec 32) V!43377 V!43377 (_ BitVec 32) Int) ListLongMap!16287)

(assert (=> b!1142231 (= lt!509085 (getCurrentListMapNoExtraKeys!4602 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142232 () Bool)

(declare-fun res!761306 () Bool)

(declare-fun e!649855 () Bool)

(assert (=> b!1142232 (=> (not res!761306) (not e!649855))))

(declare-fun lt!509101 () array!74184)

(declare-datatypes ((List!25107 0))(
  ( (Nil!25104) (Cons!25103 (h!26312 (_ BitVec 64)) (t!36263 List!25107)) )
))
(declare-fun arrayNoDuplicates!0 (array!74184 (_ BitVec 32) List!25107) Bool)

(assert (=> b!1142232 (= res!761306 (arrayNoDuplicates!0 lt!509101 #b00000000000000000000000000000000 Nil!25104))))

(declare-fun call!51431 () ListLongMap!16287)

(declare-fun call!51429 () ListLongMap!16287)

(declare-fun e!649862 () Bool)

(declare-fun b!1142233 () Bool)

(assert (=> b!1142233 (= e!649862 (= call!51429 (-!1253 call!51431 k!934)))))

(declare-fun b!1142234 () Bool)

(declare-fun e!649863 () Unit!37396)

(declare-fun lt!509092 () Unit!37396)

(assert (=> b!1142234 (= e!649863 lt!509092)))

(declare-fun call!51428 () Unit!37396)

(assert (=> b!1142234 (= lt!509092 call!51428)))

(declare-fun call!51425 () Bool)

(assert (=> b!1142234 call!51425))

(declare-fun bm!51422 () Bool)

(declare-fun call!51430 () ListLongMap!16287)

(declare-fun call!51432 () ListLongMap!16287)

(assert (=> bm!51422 (= call!51430 call!51432)))

(declare-fun e!649857 () Bool)

(declare-fun lt!509087 () Bool)

(declare-fun b!1142235 () Bool)

(assert (=> b!1142235 (= e!649857 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!509087) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun c!112220 () Bool)

(declare-fun bm!51423 () Bool)

(declare-fun lt!509091 () ListLongMap!16287)

(declare-fun c!112221 () Bool)

(assert (=> bm!51423 (= call!51432 (+!3503 (ite c!112220 lt!509091 lt!509085) (ite c!112220 (tuple2!18307 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112221 (tuple2!18307 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18307 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1142236 () Bool)

(declare-fun e!649854 () Bool)

(assert (=> b!1142236 (= e!649855 (not e!649854))))

(declare-fun res!761308 () Bool)

(assert (=> b!1142236 (=> res!761308 e!649854)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1142236 (= res!761308 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1142236 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!509090 () Unit!37396)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74184 (_ BitVec 64) (_ BitVec 32)) Unit!37396)

(assert (=> b!1142236 (= lt!509090 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1142237 () Bool)

(assert (=> b!1142237 (= e!649857 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142238 () Bool)

(declare-fun e!649861 () Bool)

(assert (=> b!1142238 (= e!649854 e!649861)))

(declare-fun res!761309 () Bool)

(assert (=> b!1142238 (=> res!761309 e!649861)))

(assert (=> b!1142238 (= res!761309 (not (= from!1455 i!673)))))

(declare-fun lt!509089 () ListLongMap!16287)

(declare-fun lt!509099 () array!74186)

(assert (=> b!1142238 (= lt!509089 (getCurrentListMapNoExtraKeys!4602 lt!509101 lt!509099 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1142238 (= lt!509099 (array!74187 (store (arr!35740 _values!996) i!673 (ValueCellFull!13634 lt!509084)) (size!36277 _values!996)))))

(declare-fun dynLambda!2651 (Int (_ BitVec 64)) V!43377)

(assert (=> b!1142238 (= lt!509084 (dynLambda!2651 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!509096 () ListLongMap!16287)

(assert (=> b!1142238 (= lt!509096 (getCurrentListMapNoExtraKeys!4602 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1142239 () Bool)

(declare-fun e!649856 () Bool)

(declare-fun tp_is_empty!28687 () Bool)

(assert (=> b!1142239 (= e!649856 tp_is_empty!28687)))

(declare-fun b!1142240 () Bool)

(assert (=> b!1142240 (= c!112221 (and (not lt!509087) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!649859 () Unit!37396)

(assert (=> b!1142240 (= e!649859 e!649863)))

(declare-fun b!1142241 () Bool)

(assert (=> b!1142241 call!51425))

(declare-fun lt!509103 () Unit!37396)

(assert (=> b!1142241 (= lt!509103 call!51428)))

(declare-fun e!649858 () Unit!37396)

(assert (=> b!1142241 (= e!649858 lt!509103)))

(declare-fun b!1142242 () Bool)

(declare-fun res!761305 () Bool)

(declare-fun e!649851 () Bool)

(assert (=> b!1142242 (=> (not res!761305) (not e!649851))))

(assert (=> b!1142242 (= res!761305 (= (select (arr!35739 _keys!1208) i!673) k!934))))

(declare-fun b!1142243 () Bool)

(assert (=> b!1142243 (= e!649863 e!649858)))

(declare-fun c!112222 () Bool)

(assert (=> b!1142243 (= c!112222 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509087))))

(declare-fun b!1142244 () Bool)

(declare-fun Unit!37398 () Unit!37396)

(assert (=> b!1142244 (= e!649865 Unit!37398)))

(assert (=> b!1142244 (= lt!509087 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1142244 (= c!112220 (and (not lt!509087) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!509083 () Unit!37396)

(assert (=> b!1142244 (= lt!509083 e!649859)))

(declare-fun lt!509102 () Unit!37396)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!399 (array!74184 array!74186 (_ BitVec 32) (_ BitVec 32) V!43377 V!43377 (_ BitVec 64) (_ BitVec 32) Int) Unit!37396)

(assert (=> b!1142244 (= lt!509102 (lemmaListMapContainsThenArrayContainsFrom!399 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112224 () Bool)

(assert (=> b!1142244 (= c!112224 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761314 () Bool)

(assert (=> b!1142244 (= res!761314 e!649857)))

(declare-fun e!649866 () Bool)

(assert (=> b!1142244 (=> (not res!761314) (not e!649866))))

(assert (=> b!1142244 e!649866))

(declare-fun lt!509100 () Unit!37396)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74184 (_ BitVec 32) (_ BitVec 32)) Unit!37396)

(assert (=> b!1142244 (= lt!509100 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1142244 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25104)))

(declare-fun lt!509093 () Unit!37396)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74184 (_ BitVec 64) (_ BitVec 32) List!25107) Unit!37396)

(assert (=> b!1142244 (= lt!509093 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25104))))

(assert (=> b!1142244 false))

(declare-fun b!1142245 () Bool)

(declare-fun res!761317 () Bool)

(assert (=> b!1142245 (=> (not res!761317) (not e!649851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74184 (_ BitVec 32)) Bool)

(assert (=> b!1142245 (= res!761317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1142246 () Bool)

(declare-fun res!761318 () Bool)

(assert (=> b!1142246 (=> (not res!761318) (not e!649851))))

(assert (=> b!1142246 (= res!761318 (and (= (size!36277 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36276 _keys!1208) (size!36277 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1142247 () Bool)

(assert (=> b!1142247 (contains!6662 call!51432 k!934)))

(declare-fun lt!509088 () Unit!37396)

(declare-fun call!51427 () Unit!37396)

(assert (=> b!1142247 (= lt!509088 call!51427)))

(declare-fun call!51426 () Bool)

(assert (=> b!1142247 call!51426))

(assert (=> b!1142247 (= lt!509091 (+!3503 lt!509085 (tuple2!18307 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!509095 () Unit!37396)

(declare-fun addStillContains!802 (ListLongMap!16287 (_ BitVec 64) V!43377 (_ BitVec 64)) Unit!37396)

(assert (=> b!1142247 (= lt!509095 (addStillContains!802 lt!509085 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1142247 (= e!649859 lt!509088)))

(declare-fun b!1142248 () Bool)

(declare-fun res!761313 () Bool)

(assert (=> b!1142248 (=> (not res!761313) (not e!649851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1142248 (= res!761313 (validKeyInArray!0 k!934))))

(declare-fun b!1142249 () Bool)

(assert (=> b!1142249 (= e!649862 (= call!51429 call!51431))))

(declare-fun b!1142250 () Bool)

(declare-fun e!649860 () Bool)

(assert (=> b!1142250 (= e!649860 tp_is_empty!28687)))

(declare-fun bm!51425 () Bool)

(assert (=> bm!51425 (= call!51431 (getCurrentListMapNoExtraKeys!4602 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142251 () Bool)

(declare-fun e!649853 () Bool)

(declare-fun mapRes!44855 () Bool)

(assert (=> b!1142251 (= e!649853 (and e!649860 mapRes!44855))))

(declare-fun condMapEmpty!44855 () Bool)

(declare-fun mapDefault!44855 () ValueCell!13634)

