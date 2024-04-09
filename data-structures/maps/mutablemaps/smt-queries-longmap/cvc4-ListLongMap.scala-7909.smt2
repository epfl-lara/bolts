; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98238 () Bool)

(assert start!98238)

(declare-fun b_free!23903 () Bool)

(declare-fun b_next!23903 () Bool)

(assert (=> start!98238 (= b_free!23903 (not b_next!23903))))

(declare-fun tp!84413 () Bool)

(declare-fun b_and!38611 () Bool)

(assert (=> start!98238 (= tp!84413 b_and!38611)))

(declare-fun b!1130290 () Bool)

(declare-fun res!755306 () Bool)

(declare-fun e!643313 () Bool)

(assert (=> b!1130290 (=> (not res!755306) (not e!643313))))

(declare-datatypes ((array!73684 0))(
  ( (array!73685 (arr!35491 (Array (_ BitVec 32) (_ BitVec 64))) (size!36028 (_ BitVec 32))) )
))
(declare-fun lt!501905 () array!73684)

(declare-datatypes ((List!24889 0))(
  ( (Nil!24886) (Cons!24885 (h!26094 (_ BitVec 64)) (t!35791 List!24889)) )
))
(declare-fun arrayNoDuplicates!0 (array!73684 (_ BitVec 32) List!24889) Bool)

(assert (=> b!1130290 (= res!755306 (arrayNoDuplicates!0 lt!501905 #b00000000000000000000000000000000 Nil!24886))))

(declare-fun b!1130291 () Bool)

(declare-fun e!643306 () Bool)

(declare-fun tp_is_empty!28433 () Bool)

(assert (=> b!1130291 (= e!643306 tp_is_empty!28433)))

(declare-fun b!1130292 () Bool)

(declare-fun e!643302 () Bool)

(declare-datatypes ((V!43037 0))(
  ( (V!43038 (val!14273 Int)) )
))
(declare-datatypes ((tuple2!18070 0))(
  ( (tuple2!18071 (_1!9045 (_ BitVec 64)) (_2!9045 V!43037)) )
))
(declare-datatypes ((List!24890 0))(
  ( (Nil!24887) (Cons!24886 (h!26095 tuple2!18070) (t!35792 List!24890)) )
))
(declare-datatypes ((ListLongMap!16051 0))(
  ( (ListLongMap!16052 (toList!8041 List!24890)) )
))
(declare-fun call!48314 () ListLongMap!16051)

(declare-fun call!48315 () ListLongMap!16051)

(assert (=> b!1130292 (= e!643302 (= call!48314 call!48315))))

(declare-fun b!1130293 () Bool)

(declare-fun e!643310 () Bool)

(assert (=> b!1130293 (= e!643310 true)))

(declare-fun _keys!1208 () array!73684)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13507 0))(
  ( (ValueCellFull!13507 (v!16907 V!43037)) (EmptyCell!13507) )
))
(declare-datatypes ((array!73686 0))(
  ( (array!73687 (arr!35492 (Array (_ BitVec 32) ValueCell!13507)) (size!36029 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73686)

(declare-fun minValue!944 () V!43037)

(declare-fun lt!501900 () Bool)

(declare-fun zeroValue!944 () V!43037)

(declare-fun contains!6535 (ListLongMap!16051 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4445 (array!73684 array!73686 (_ BitVec 32) (_ BitVec 32) V!43037 V!43037 (_ BitVec 32) Int) ListLongMap!16051)

(assert (=> b!1130293 (= lt!501900 (contains!6535 (getCurrentListMap!4445 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1130294 () Bool)

(declare-datatypes ((Unit!36980 0))(
  ( (Unit!36981) )
))
(declare-fun e!643303 () Unit!36980)

(declare-fun lt!501901 () Unit!36980)

(assert (=> b!1130294 (= e!643303 lt!501901)))

(declare-fun lt!501896 () ListLongMap!16051)

(declare-fun lt!501897 () Unit!36980)

(declare-fun addStillContains!708 (ListLongMap!16051 (_ BitVec 64) V!43037 (_ BitVec 64)) Unit!36980)

(assert (=> b!1130294 (= lt!501897 (addStillContains!708 lt!501896 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!501907 () ListLongMap!16051)

(declare-fun +!3408 (ListLongMap!16051 tuple2!18070) ListLongMap!16051)

(assert (=> b!1130294 (= lt!501907 (+!3408 lt!501896 (tuple2!18071 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!48312 () Bool)

(assert (=> b!1130294 call!48312))

(declare-fun call!48313 () Unit!36980)

(assert (=> b!1130294 (= lt!501901 call!48313)))

(declare-fun call!48311 () ListLongMap!16051)

(assert (=> b!1130294 (contains!6535 call!48311 k!934)))

(declare-fun c!109967 () Bool)

(declare-fun bm!48307 () Bool)

(declare-fun c!109965 () Bool)

(assert (=> bm!48307 (= call!48311 (+!3408 (ite c!109965 lt!501907 lt!501896) (ite c!109965 (tuple2!18071 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!109967 (tuple2!18071 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18071 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun res!755294 () Bool)

(declare-fun e!643312 () Bool)

(assert (=> start!98238 (=> (not res!755294) (not e!643312))))

(assert (=> start!98238 (= res!755294 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36028 _keys!1208))))))

(assert (=> start!98238 e!643312))

(assert (=> start!98238 tp_is_empty!28433))

(declare-fun array_inv!27094 (array!73684) Bool)

(assert (=> start!98238 (array_inv!27094 _keys!1208)))

(assert (=> start!98238 true))

(assert (=> start!98238 tp!84413))

(declare-fun e!643304 () Bool)

(declare-fun array_inv!27095 (array!73686) Bool)

(assert (=> start!98238 (and (array_inv!27095 _values!996) e!643304)))

(declare-fun b!1130295 () Bool)

(declare-fun e!643311 () Unit!36980)

(assert (=> b!1130295 (= e!643303 e!643311)))

(declare-fun lt!501899 () Bool)

(assert (=> b!1130295 (= c!109967 (and (not lt!501899) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1130296 () Bool)

(declare-fun res!755305 () Bool)

(assert (=> b!1130296 (=> (not res!755305) (not e!643312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130296 (= res!755305 (validKeyInArray!0 k!934))))

(declare-fun bm!48308 () Bool)

(declare-fun call!48316 () ListLongMap!16051)

(assert (=> bm!48308 (= call!48316 call!48311)))

(declare-fun b!1130297 () Bool)

(declare-fun e!643309 () Unit!36980)

(declare-fun Unit!36982 () Unit!36980)

(assert (=> b!1130297 (= e!643309 Unit!36982)))

(declare-fun b!1130298 () Bool)

(declare-fun res!755307 () Bool)

(assert (=> b!1130298 (=> (not res!755307) (not e!643312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1130298 (= res!755307 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!44467 () Bool)

(declare-fun mapRes!44467 () Bool)

(declare-fun tp!84414 () Bool)

(assert (=> mapNonEmpty!44467 (= mapRes!44467 (and tp!84414 e!643306))))

(declare-fun mapRest!44467 () (Array (_ BitVec 32) ValueCell!13507))

(declare-fun mapKey!44467 () (_ BitVec 32))

(declare-fun mapValue!44467 () ValueCell!13507)

(assert (=> mapNonEmpty!44467 (= (arr!35492 _values!996) (store mapRest!44467 mapKey!44467 mapValue!44467))))

(declare-fun b!1130299 () Bool)

(declare-fun e!643307 () Bool)

(declare-fun e!643305 () Bool)

(assert (=> b!1130299 (= e!643307 e!643305)))

(declare-fun res!755302 () Bool)

(assert (=> b!1130299 (=> res!755302 e!643305)))

(assert (=> b!1130299 (= res!755302 (not (contains!6535 lt!501896 k!934)))))

(declare-fun getCurrentListMapNoExtraKeys!4494 (array!73684 array!73686 (_ BitVec 32) (_ BitVec 32) V!43037 V!43037 (_ BitVec 32) Int) ListLongMap!16051)

(assert (=> b!1130299 (= lt!501896 (getCurrentListMapNoExtraKeys!4494 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130300 () Bool)

(declare-fun e!643301 () Bool)

(assert (=> b!1130300 (= e!643301 e!643307)))

(declare-fun res!755293 () Bool)

(assert (=> b!1130300 (=> res!755293 e!643307)))

(assert (=> b!1130300 (= res!755293 (not (= (select (arr!35491 _keys!1208) from!1455) k!934)))))

(assert (=> b!1130300 e!643302))

(declare-fun c!109964 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1130300 (= c!109964 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501898 () Unit!36980)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!424 (array!73684 array!73686 (_ BitVec 32) (_ BitVec 32) V!43037 V!43037 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36980)

(assert (=> b!1130300 (= lt!501898 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!424 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130301 () Bool)

(declare-fun call!48317 () Bool)

(assert (=> b!1130301 call!48317))

(declare-fun lt!501902 () Unit!36980)

(declare-fun call!48310 () Unit!36980)

(assert (=> b!1130301 (= lt!501902 call!48310)))

(assert (=> b!1130301 (= e!643311 lt!501902)))

(declare-fun bm!48309 () Bool)

(assert (=> bm!48309 (= call!48313 (addStillContains!708 (ite c!109965 lt!501907 lt!501896) (ite c!109965 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!109967 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!109965 minValue!944 (ite c!109967 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!48310 () Bool)

(assert (=> bm!48310 (= call!48310 call!48313)))

(declare-fun b!1130302 () Bool)

(declare-fun e!643299 () Bool)

(assert (=> b!1130302 (= e!643313 (not e!643299))))

(declare-fun res!755295 () Bool)

(assert (=> b!1130302 (=> res!755295 e!643299)))

(assert (=> b!1130302 (= res!755295 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1130302 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!501895 () Unit!36980)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73684 (_ BitVec 64) (_ BitVec 32)) Unit!36980)

(assert (=> b!1130302 (= lt!501895 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1130303 () Bool)

(declare-fun c!109966 () Bool)

(assert (=> b!1130303 (= c!109966 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501899))))

(assert (=> b!1130303 (= e!643311 e!643309)))

(declare-fun b!1130304 () Bool)

(assert (=> b!1130304 (= e!643299 e!643301)))

(declare-fun res!755298 () Bool)

(assert (=> b!1130304 (=> res!755298 e!643301)))

(assert (=> b!1130304 (= res!755298 (not (= from!1455 i!673)))))

(declare-fun lt!501909 () array!73686)

(declare-fun lt!501904 () ListLongMap!16051)

(assert (=> b!1130304 (= lt!501904 (getCurrentListMapNoExtraKeys!4494 lt!501905 lt!501909 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2570 (Int (_ BitVec 64)) V!43037)

(assert (=> b!1130304 (= lt!501909 (array!73687 (store (arr!35492 _values!996) i!673 (ValueCellFull!13507 (dynLambda!2570 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36029 _values!996)))))

(declare-fun lt!501903 () ListLongMap!16051)

(assert (=> b!1130304 (= lt!501903 (getCurrentListMapNoExtraKeys!4494 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1130305 () Bool)

(declare-fun -!1169 (ListLongMap!16051 (_ BitVec 64)) ListLongMap!16051)

(assert (=> b!1130305 (= e!643302 (= call!48314 (-!1169 call!48315 k!934)))))

(declare-fun b!1130306 () Bool)

(assert (=> b!1130306 (= e!643312 e!643313)))

(declare-fun res!755303 () Bool)

(assert (=> b!1130306 (=> (not res!755303) (not e!643313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73684 (_ BitVec 32)) Bool)

(assert (=> b!1130306 (= res!755303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501905 mask!1564))))

(assert (=> b!1130306 (= lt!501905 (array!73685 (store (arr!35491 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36028 _keys!1208)))))

(declare-fun b!1130307 () Bool)

(declare-fun res!755301 () Bool)

(assert (=> b!1130307 (=> (not res!755301) (not e!643312))))

(assert (=> b!1130307 (= res!755301 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36028 _keys!1208))))))

(declare-fun b!1130308 () Bool)

(declare-fun lt!501906 () Unit!36980)

(assert (=> b!1130308 (= e!643309 lt!501906)))

(assert (=> b!1130308 (= lt!501906 call!48310)))

(assert (=> b!1130308 call!48317))

(declare-fun b!1130309 () Bool)

(declare-fun res!755300 () Bool)

(assert (=> b!1130309 (=> (not res!755300) (not e!643312))))

(assert (=> b!1130309 (= res!755300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1130310 () Bool)

(declare-fun e!643308 () Bool)

(assert (=> b!1130310 (= e!643308 tp_is_empty!28433)))

(declare-fun b!1130311 () Bool)

(assert (=> b!1130311 (= e!643305 e!643310)))

(declare-fun res!755296 () Bool)

(assert (=> b!1130311 (=> res!755296 e!643310)))

(assert (=> b!1130311 (= res!755296 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36028 _keys!1208))))))

(declare-fun lt!501908 () Unit!36980)

(assert (=> b!1130311 (= lt!501908 e!643303)))

(assert (=> b!1130311 (= c!109965 (and (not lt!501899) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1130311 (= lt!501899 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1130312 () Bool)

(assert (=> b!1130312 (= e!643304 (and e!643308 mapRes!44467))))

(declare-fun condMapEmpty!44467 () Bool)

(declare-fun mapDefault!44467 () ValueCell!13507)

