; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98476 () Bool)

(assert start!98476)

(declare-fun b_free!24045 () Bool)

(declare-fun b_next!24045 () Bool)

(assert (=> start!98476 (= b_free!24045 (not b_next!24045))))

(declare-fun tp!84847 () Bool)

(declare-fun b_and!38953 () Bool)

(assert (=> start!98476 (= tp!84847 b_and!38953)))

(declare-fun b!1137247 () Bool)

(declare-fun call!50081 () Bool)

(assert (=> b!1137247 call!50081))

(declare-datatypes ((Unit!37197 0))(
  ( (Unit!37198) )
))
(declare-fun lt!505749 () Unit!37197)

(declare-fun call!50084 () Unit!37197)

(assert (=> b!1137247 (= lt!505749 call!50084)))

(declare-fun e!647177 () Unit!37197)

(assert (=> b!1137247 (= e!647177 lt!505749)))

(declare-datatypes ((array!73968 0))(
  ( (array!73969 (arr!35631 (Array (_ BitVec 32) (_ BitVec 64))) (size!36168 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73968)

(declare-fun e!647167 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1137248 () Bool)

(declare-fun arrayContainsKey!0 (array!73968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1137248 (= e!647167 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1137249 () Bool)

(declare-fun e!647170 () Bool)

(declare-fun tp_is_empty!28575 () Bool)

(assert (=> b!1137249 (= e!647170 tp_is_empty!28575)))

(declare-fun b!1137250 () Bool)

(declare-fun e!647174 () Bool)

(assert (=> b!1137250 (= e!647174 true)))

(declare-fun lt!505760 () Unit!37197)

(declare-fun e!647172 () Unit!37197)

(assert (=> b!1137250 (= lt!505760 e!647172)))

(declare-fun c!111215 () Bool)

(declare-datatypes ((V!43227 0))(
  ( (V!43228 (val!14344 Int)) )
))
(declare-datatypes ((tuple2!18204 0))(
  ( (tuple2!18205 (_1!9112 (_ BitVec 64)) (_2!9112 V!43227)) )
))
(declare-datatypes ((List!25013 0))(
  ( (Nil!25010) (Cons!25009 (h!26218 tuple2!18204) (t!36057 List!25013)) )
))
(declare-datatypes ((ListLongMap!16185 0))(
  ( (ListLongMap!16186 (toList!8108 List!25013)) )
))
(declare-fun lt!505761 () ListLongMap!16185)

(declare-fun contains!6619 (ListLongMap!16185 (_ BitVec 64)) Bool)

(assert (=> b!1137250 (= c!111215 (contains!6619 lt!505761 k0!934))))

(declare-fun zeroValue!944 () V!43227)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13578 0))(
  ( (ValueCellFull!13578 (v!16982 V!43227)) (EmptyCell!13578) )
))
(declare-datatypes ((array!73970 0))(
  ( (array!73971 (arr!35632 (Array (_ BitVec 32) ValueCell!13578)) (size!36169 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73970)

(declare-fun minValue!944 () V!43227)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4556 (array!73968 array!73970 (_ BitVec 32) (_ BitVec 32) V!43227 V!43227 (_ BitVec 32) Int) ListLongMap!16185)

(assert (=> b!1137250 (= lt!505761 (getCurrentListMapNoExtraKeys!4556 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!50088 () ListLongMap!16185)

(declare-fun call!50082 () Bool)

(declare-fun c!111214 () Bool)

(declare-fun lt!505764 () ListLongMap!16185)

(declare-fun bm!50078 () Bool)

(assert (=> bm!50078 (= call!50082 (contains!6619 (ite c!111214 lt!505764 call!50088) k0!934))))

(declare-fun b!1137251 () Bool)

(declare-fun e!647175 () Unit!37197)

(assert (=> b!1137251 (= e!647175 e!647177)))

(declare-fun c!111212 () Bool)

(declare-fun lt!505753 () Bool)

(assert (=> b!1137251 (= c!111212 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!505753))))

(declare-fun b!1137252 () Bool)

(declare-fun res!758954 () Bool)

(declare-fun e!647166 () Bool)

(assert (=> b!1137252 (=> (not res!758954) (not e!647166))))

(declare-datatypes ((List!25014 0))(
  ( (Nil!25011) (Cons!25010 (h!26219 (_ BitVec 64)) (t!36058 List!25014)) )
))
(declare-fun arrayNoDuplicates!0 (array!73968 (_ BitVec 32) List!25014) Bool)

(assert (=> b!1137252 (= res!758954 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25011))))

(declare-fun b!1137253 () Bool)

(declare-fun res!758963 () Bool)

(assert (=> b!1137253 (=> (not res!758963) (not e!647166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1137253 (= res!758963 (validMask!0 mask!1564))))

(declare-fun e!647165 () Bool)

(declare-fun b!1137254 () Bool)

(assert (=> b!1137254 (= e!647165 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!50079 () Bool)

(declare-fun lt!505758 () array!73970)

(declare-fun lt!505755 () array!73968)

(declare-fun call!50086 () ListLongMap!16185)

(assert (=> bm!50079 (= call!50086 (getCurrentListMapNoExtraKeys!4556 lt!505755 lt!505758 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44687 () Bool)

(declare-fun mapRes!44687 () Bool)

(assert (=> mapIsEmpty!44687 mapRes!44687))

(declare-fun b!1137255 () Bool)

(declare-fun res!758960 () Bool)

(assert (=> b!1137255 (=> (not res!758960) (not e!647166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73968 (_ BitVec 32)) Bool)

(assert (=> b!1137255 (= res!758960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1137256 () Bool)

(declare-fun Unit!37199 () Unit!37197)

(assert (=> b!1137256 (= e!647172 Unit!37199)))

(declare-fun b!1137257 () Bool)

(declare-fun e!647176 () Bool)

(declare-fun call!50087 () ListLongMap!16185)

(assert (=> b!1137257 (= e!647176 (= call!50086 call!50087))))

(declare-fun b!1137258 () Bool)

(declare-fun c!111216 () Bool)

(assert (=> b!1137258 (= c!111216 (and (not lt!505753) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!647168 () Unit!37197)

(assert (=> b!1137258 (= e!647168 e!647175)))

(declare-fun b!1137259 () Bool)

(assert (=> b!1137259 (= e!647165 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505753) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1137260 () Bool)

(declare-fun Unit!37200 () Unit!37197)

(assert (=> b!1137260 (= e!647177 Unit!37200)))

(declare-fun b!1137261 () Bool)

(declare-fun res!758958 () Bool)

(assert (=> b!1137261 (=> (not res!758958) (not e!647166))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1137261 (= res!758958 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36168 _keys!1208))))))

(declare-fun b!1137262 () Bool)

(declare-fun e!647178 () Bool)

(assert (=> b!1137262 (= e!647178 tp_is_empty!28575)))

(declare-fun b!1137263 () Bool)

(declare-fun lt!505752 () Unit!37197)

(assert (=> b!1137263 (= e!647175 lt!505752)))

(assert (=> b!1137263 (= lt!505752 call!50084)))

(assert (=> b!1137263 call!50081))

(declare-fun b!1137264 () Bool)

(declare-fun e!647164 () Bool)

(declare-fun e!647173 () Bool)

(assert (=> b!1137264 (= e!647164 e!647173)))

(declare-fun res!758964 () Bool)

(assert (=> b!1137264 (=> res!758964 e!647173)))

(assert (=> b!1137264 (= res!758964 (not (= from!1455 i!673)))))

(declare-fun lt!505759 () ListLongMap!16185)

(assert (=> b!1137264 (= lt!505759 (getCurrentListMapNoExtraKeys!4556 lt!505755 lt!505758 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2618 (Int (_ BitVec 64)) V!43227)

(assert (=> b!1137264 (= lt!505758 (array!73971 (store (arr!35632 _values!996) i!673 (ValueCellFull!13578 (dynLambda!2618 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36169 _values!996)))))

(declare-fun lt!505756 () ListLongMap!16185)

(assert (=> b!1137264 (= lt!505756 (getCurrentListMapNoExtraKeys!4556 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!50080 () Bool)

(declare-fun call!50083 () ListLongMap!16185)

(declare-fun +!3461 (ListLongMap!16185 tuple2!18204) ListLongMap!16185)

(assert (=> bm!50080 (= call!50083 (+!3461 lt!505761 (ite (or c!111214 c!111216) (tuple2!18205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1137265 () Bool)

(declare-fun res!758961 () Bool)

(declare-fun e!647171 () Bool)

(assert (=> b!1137265 (=> (not res!758961) (not e!647171))))

(assert (=> b!1137265 (= res!758961 (arrayNoDuplicates!0 lt!505755 #b00000000000000000000000000000000 Nil!25011))))

(declare-fun mapNonEmpty!44687 () Bool)

(declare-fun tp!84846 () Bool)

(assert (=> mapNonEmpty!44687 (= mapRes!44687 (and tp!84846 e!647178))))

(declare-fun mapKey!44687 () (_ BitVec 32))

(declare-fun mapRest!44687 () (Array (_ BitVec 32) ValueCell!13578))

(declare-fun mapValue!44687 () ValueCell!13578)

(assert (=> mapNonEmpty!44687 (= (arr!35632 _values!996) (store mapRest!44687 mapKey!44687 mapValue!44687))))

(declare-fun res!758955 () Bool)

(assert (=> start!98476 (=> (not res!758955) (not e!647166))))

(assert (=> start!98476 (= res!758955 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36168 _keys!1208))))))

(assert (=> start!98476 e!647166))

(assert (=> start!98476 tp_is_empty!28575))

(declare-fun array_inv!27192 (array!73968) Bool)

(assert (=> start!98476 (array_inv!27192 _keys!1208)))

(assert (=> start!98476 true))

(assert (=> start!98476 tp!84847))

(declare-fun e!647163 () Bool)

(declare-fun array_inv!27193 (array!73970) Bool)

(assert (=> start!98476 (and (array_inv!27193 _values!996) e!647163)))

(declare-fun b!1137266 () Bool)

(declare-fun Unit!37201 () Unit!37197)

(assert (=> b!1137266 (= e!647172 Unit!37201)))

(assert (=> b!1137266 (= lt!505753 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1137266 (= c!111214 (and (not lt!505753) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!505747 () Unit!37197)

(assert (=> b!1137266 (= lt!505747 e!647168)))

(declare-fun lt!505751 () Unit!37197)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!367 (array!73968 array!73970 (_ BitVec 32) (_ BitVec 32) V!43227 V!43227 (_ BitVec 64) (_ BitVec 32) Int) Unit!37197)

(assert (=> b!1137266 (= lt!505751 (lemmaListMapContainsThenArrayContainsFrom!367 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111211 () Bool)

(assert (=> b!1137266 (= c!111211 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!758957 () Bool)

(assert (=> b!1137266 (= res!758957 e!647165)))

(assert (=> b!1137266 (=> (not res!758957) (not e!647167))))

(assert (=> b!1137266 e!647167))

(declare-fun lt!505748 () Unit!37197)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73968 (_ BitVec 32) (_ BitVec 32)) Unit!37197)

(assert (=> b!1137266 (= lt!505748 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1137266 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25011)))

(declare-fun lt!505762 () Unit!37197)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!73968 (_ BitVec 64) (_ BitVec 32) List!25014) Unit!37197)

(assert (=> b!1137266 (= lt!505762 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25011))))

(assert (=> b!1137266 false))

(declare-fun bm!50081 () Bool)

(assert (=> bm!50081 (= call!50088 call!50083)))

(declare-fun b!1137267 () Bool)

(assert (=> b!1137267 (= e!647173 e!647174)))

(declare-fun res!758953 () Bool)

(assert (=> b!1137267 (=> res!758953 e!647174)))

(assert (=> b!1137267 (= res!758953 (not (= (select (arr!35631 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1137267 e!647176))

(declare-fun c!111213 () Bool)

(assert (=> b!1137267 (= c!111213 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505750 () Unit!37197)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!474 (array!73968 array!73970 (_ BitVec 32) (_ BitVec 32) V!43227 V!43227 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37197)

(assert (=> b!1137267 (= lt!505750 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!474 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1137268 () Bool)

(declare-fun -!1217 (ListLongMap!16185 (_ BitVec 64)) ListLongMap!16185)

(assert (=> b!1137268 (= e!647176 (= call!50086 (-!1217 call!50087 k0!934)))))

(declare-fun b!1137269 () Bool)

(assert (=> b!1137269 (= e!647163 (and e!647170 mapRes!44687))))

(declare-fun condMapEmpty!44687 () Bool)

(declare-fun mapDefault!44687 () ValueCell!13578)

(assert (=> b!1137269 (= condMapEmpty!44687 (= (arr!35632 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13578)) mapDefault!44687)))))

(declare-fun b!1137270 () Bool)

(declare-fun res!758966 () Bool)

(assert (=> b!1137270 (=> (not res!758966) (not e!647166))))

(assert (=> b!1137270 (= res!758966 (and (= (size!36169 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36168 _keys!1208) (size!36169 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1137271 () Bool)

(declare-fun res!758962 () Bool)

(assert (=> b!1137271 (=> (not res!758962) (not e!647166))))

(assert (=> b!1137271 (= res!758962 (= (select (arr!35631 _keys!1208) i!673) k0!934))))

(declare-fun bm!50082 () Bool)

(assert (=> bm!50082 (= call!50081 call!50082)))

(declare-fun b!1137272 () Bool)

(assert (=> b!1137272 (contains!6619 (+!3461 lt!505764 (tuple2!18205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!505763 () Unit!37197)

(declare-fun addStillContains!762 (ListLongMap!16185 (_ BitVec 64) V!43227 (_ BitVec 64)) Unit!37197)

(assert (=> b!1137272 (= lt!505763 (addStillContains!762 lt!505764 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1137272 call!50082))

(assert (=> b!1137272 (= lt!505764 call!50083)))

(declare-fun lt!505757 () Unit!37197)

(declare-fun call!50085 () Unit!37197)

(assert (=> b!1137272 (= lt!505757 call!50085)))

(assert (=> b!1137272 (= e!647168 lt!505763)))

(declare-fun b!1137273 () Bool)

(assert (=> b!1137273 (= e!647171 (not e!647164))))

(declare-fun res!758965 () Bool)

(assert (=> b!1137273 (=> res!758965 e!647164)))

(assert (=> b!1137273 (= res!758965 (bvsgt from!1455 i!673))))

(assert (=> b!1137273 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!505754 () Unit!37197)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73968 (_ BitVec 64) (_ BitVec 32)) Unit!37197)

(assert (=> b!1137273 (= lt!505754 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!50083 () Bool)

(assert (=> bm!50083 (= call!50087 (getCurrentListMapNoExtraKeys!4556 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50084 () Bool)

(assert (=> bm!50084 (= call!50085 (addStillContains!762 lt!505761 (ite (or c!111214 c!111216) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111214 c!111216) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1137274 () Bool)

(assert (=> b!1137274 (= e!647166 e!647171)))

(declare-fun res!758959 () Bool)

(assert (=> b!1137274 (=> (not res!758959) (not e!647171))))

(assert (=> b!1137274 (= res!758959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505755 mask!1564))))

(assert (=> b!1137274 (= lt!505755 (array!73969 (store (arr!35631 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36168 _keys!1208)))))

(declare-fun b!1137275 () Bool)

(declare-fun res!758956 () Bool)

(assert (=> b!1137275 (=> (not res!758956) (not e!647166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1137275 (= res!758956 (validKeyInArray!0 k0!934))))

(declare-fun bm!50085 () Bool)

(assert (=> bm!50085 (= call!50084 call!50085)))

(assert (= (and start!98476 res!758955) b!1137253))

(assert (= (and b!1137253 res!758963) b!1137270))

(assert (= (and b!1137270 res!758966) b!1137255))

(assert (= (and b!1137255 res!758960) b!1137252))

(assert (= (and b!1137252 res!758954) b!1137261))

(assert (= (and b!1137261 res!758958) b!1137275))

(assert (= (and b!1137275 res!758956) b!1137271))

(assert (= (and b!1137271 res!758962) b!1137274))

(assert (= (and b!1137274 res!758959) b!1137265))

(assert (= (and b!1137265 res!758961) b!1137273))

(assert (= (and b!1137273 (not res!758965)) b!1137264))

(assert (= (and b!1137264 (not res!758964)) b!1137267))

(assert (= (and b!1137267 c!111213) b!1137268))

(assert (= (and b!1137267 (not c!111213)) b!1137257))

(assert (= (or b!1137268 b!1137257) bm!50083))

(assert (= (or b!1137268 b!1137257) bm!50079))

(assert (= (and b!1137267 (not res!758953)) b!1137250))

(assert (= (and b!1137250 c!111215) b!1137266))

(assert (= (and b!1137250 (not c!111215)) b!1137256))

(assert (= (and b!1137266 c!111214) b!1137272))

(assert (= (and b!1137266 (not c!111214)) b!1137258))

(assert (= (and b!1137258 c!111216) b!1137263))

(assert (= (and b!1137258 (not c!111216)) b!1137251))

(assert (= (and b!1137251 c!111212) b!1137247))

(assert (= (and b!1137251 (not c!111212)) b!1137260))

(assert (= (or b!1137263 b!1137247) bm!50085))

(assert (= (or b!1137263 b!1137247) bm!50081))

(assert (= (or b!1137263 b!1137247) bm!50082))

(assert (= (or b!1137272 bm!50082) bm!50078))

(assert (= (or b!1137272 bm!50085) bm!50084))

(assert (= (or b!1137272 bm!50081) bm!50080))

(assert (= (and b!1137266 c!111211) b!1137254))

(assert (= (and b!1137266 (not c!111211)) b!1137259))

(assert (= (and b!1137266 res!758957) b!1137248))

(assert (= (and b!1137269 condMapEmpty!44687) mapIsEmpty!44687))

(assert (= (and b!1137269 (not condMapEmpty!44687)) mapNonEmpty!44687))

(get-info :version)

(assert (= (and mapNonEmpty!44687 ((_ is ValueCellFull!13578) mapValue!44687)) b!1137262))

(assert (= (and b!1137269 ((_ is ValueCellFull!13578) mapDefault!44687)) b!1137249))

(assert (= start!98476 b!1137269))

(declare-fun b_lambda!19169 () Bool)

(assert (=> (not b_lambda!19169) (not b!1137264)))

(declare-fun t!36056 () Bool)

(declare-fun tb!8865 () Bool)

(assert (=> (and start!98476 (= defaultEntry!1004 defaultEntry!1004) t!36056) tb!8865))

(declare-fun result!18287 () Bool)

(assert (=> tb!8865 (= result!18287 tp_is_empty!28575)))

(assert (=> b!1137264 t!36056))

(declare-fun b_and!38955 () Bool)

(assert (= b_and!38953 (and (=> t!36056 result!18287) b_and!38955)))

(declare-fun m!1049423 () Bool)

(assert (=> b!1137266 m!1049423))

(declare-fun m!1049425 () Bool)

(assert (=> b!1137266 m!1049425))

(declare-fun m!1049427 () Bool)

(assert (=> b!1137266 m!1049427))

(declare-fun m!1049429 () Bool)

(assert (=> b!1137266 m!1049429))

(declare-fun m!1049431 () Bool)

(assert (=> b!1137250 m!1049431))

(declare-fun m!1049433 () Bool)

(assert (=> b!1137250 m!1049433))

(declare-fun m!1049435 () Bool)

(assert (=> b!1137274 m!1049435))

(declare-fun m!1049437 () Bool)

(assert (=> b!1137274 m!1049437))

(declare-fun m!1049439 () Bool)

(assert (=> b!1137271 m!1049439))

(declare-fun m!1049441 () Bool)

(assert (=> b!1137272 m!1049441))

(assert (=> b!1137272 m!1049441))

(declare-fun m!1049443 () Bool)

(assert (=> b!1137272 m!1049443))

(declare-fun m!1049445 () Bool)

(assert (=> b!1137272 m!1049445))

(declare-fun m!1049447 () Bool)

(assert (=> b!1137265 m!1049447))

(assert (=> bm!50083 m!1049433))

(declare-fun m!1049449 () Bool)

(assert (=> b!1137252 m!1049449))

(declare-fun m!1049451 () Bool)

(assert (=> b!1137264 m!1049451))

(declare-fun m!1049453 () Bool)

(assert (=> b!1137264 m!1049453))

(declare-fun m!1049455 () Bool)

(assert (=> b!1137264 m!1049455))

(declare-fun m!1049457 () Bool)

(assert (=> b!1137264 m!1049457))

(declare-fun m!1049459 () Bool)

(assert (=> mapNonEmpty!44687 m!1049459))

(declare-fun m!1049461 () Bool)

(assert (=> b!1137253 m!1049461))

(declare-fun m!1049463 () Bool)

(assert (=> b!1137275 m!1049463))

(declare-fun m!1049465 () Bool)

(assert (=> b!1137273 m!1049465))

(declare-fun m!1049467 () Bool)

(assert (=> b!1137273 m!1049467))

(declare-fun m!1049469 () Bool)

(assert (=> b!1137254 m!1049469))

(declare-fun m!1049471 () Bool)

(assert (=> bm!50080 m!1049471))

(declare-fun m!1049473 () Bool)

(assert (=> b!1137255 m!1049473))

(declare-fun m!1049475 () Bool)

(assert (=> start!98476 m!1049475))

(declare-fun m!1049477 () Bool)

(assert (=> start!98476 m!1049477))

(declare-fun m!1049479 () Bool)

(assert (=> b!1137267 m!1049479))

(declare-fun m!1049481 () Bool)

(assert (=> b!1137267 m!1049481))

(assert (=> b!1137248 m!1049469))

(declare-fun m!1049483 () Bool)

(assert (=> b!1137268 m!1049483))

(declare-fun m!1049485 () Bool)

(assert (=> bm!50079 m!1049485))

(declare-fun m!1049487 () Bool)

(assert (=> bm!50084 m!1049487))

(declare-fun m!1049489 () Bool)

(assert (=> bm!50078 m!1049489))

(check-sat (not b!1137255) (not b!1137274) (not b!1137267) (not b!1137275) (not bm!50078) (not mapNonEmpty!44687) (not b_next!24045) (not b!1137273) tp_is_empty!28575 (not b!1137266) (not b!1137265) (not b!1137250) (not bm!50080) (not bm!50084) (not b!1137253) (not b!1137272) (not b!1137248) b_and!38955 (not b!1137268) (not b!1137252) (not b!1137254) (not bm!50079) (not b_lambda!19169) (not start!98476) (not b!1137264) (not bm!50083))
(check-sat b_and!38955 (not b_next!24045))
