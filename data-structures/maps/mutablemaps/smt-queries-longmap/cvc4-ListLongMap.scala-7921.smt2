; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98406 () Bool)

(assert start!98406)

(declare-fun b_free!23975 () Bool)

(declare-fun b_next!23975 () Bool)

(assert (=> start!98406 (= b_free!23975 (not b_next!23975))))

(declare-fun tp!84637 () Bool)

(declare-fun b_and!38813 () Bool)

(assert (=> start!98406 (= tp!84637 b_and!38813)))

(declare-fun b!1133971 () Bool)

(declare-fun e!645409 () Bool)

(declare-fun e!645412 () Bool)

(assert (=> b!1133971 (= e!645409 e!645412)))

(declare-fun res!757162 () Bool)

(assert (=> b!1133971 (=> res!757162 e!645412)))

(declare-datatypes ((array!73832 0))(
  ( (array!73833 (arr!35563 (Array (_ BitVec 32) (_ BitVec 64))) (size!36100 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73832)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1133971 (= res!757162 (not (= (select (arr!35563 _keys!1208) from!1455) k!934)))))

(declare-fun e!645413 () Bool)

(assert (=> b!1133971 e!645413))

(declare-fun c!110666 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133971 (= c!110666 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43133 0))(
  ( (V!43134 (val!14309 Int)) )
))
(declare-fun zeroValue!944 () V!43133)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!37098 0))(
  ( (Unit!37099) )
))
(declare-fun lt!503948 () Unit!37098)

(declare-datatypes ((ValueCell!13543 0))(
  ( (ValueCellFull!13543 (v!16947 V!43133)) (EmptyCell!13543) )
))
(declare-datatypes ((array!73834 0))(
  ( (array!73835 (arr!35564 (Array (_ BitVec 32) ValueCell!13543)) (size!36101 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73834)

(declare-fun minValue!944 () V!43133)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!451 (array!73832 array!73834 (_ BitVec 32) (_ BitVec 32) V!43133 V!43133 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37098)

(assert (=> b!1133971 (= lt!503948 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!451 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((tuple2!18140 0))(
  ( (tuple2!18141 (_1!9080 (_ BitVec 64)) (_2!9080 V!43133)) )
))
(declare-datatypes ((List!24952 0))(
  ( (Nil!24949) (Cons!24948 (h!26157 tuple2!18140) (t!35926 List!24952)) )
))
(declare-datatypes ((ListLongMap!16121 0))(
  ( (ListLongMap!16122 (toList!8076 List!24952)) )
))
(declare-fun call!49245 () ListLongMap!16121)

(declare-fun bm!49238 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4525 (array!73832 array!73834 (_ BitVec 32) (_ BitVec 32) V!43133 V!43133 (_ BitVec 32) Int) ListLongMap!16121)

(assert (=> bm!49238 (= call!49245 (getCurrentListMapNoExtraKeys!4525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133972 () Bool)

(declare-fun res!757159 () Bool)

(declare-fun e!645414 () Bool)

(assert (=> b!1133972 (=> (not res!757159) (not e!645414))))

(declare-datatypes ((List!24953 0))(
  ( (Nil!24950) (Cons!24949 (h!26158 (_ BitVec 64)) (t!35927 List!24953)) )
))
(declare-fun arrayNoDuplicates!0 (array!73832 (_ BitVec 32) List!24953) Bool)

(assert (=> b!1133972 (= res!757159 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24950))))

(declare-fun b!1133973 () Bool)

(declare-fun e!645415 () Bool)

(declare-fun tp_is_empty!28505 () Bool)

(assert (=> b!1133973 (= e!645415 tp_is_empty!28505)))

(declare-fun b!1133974 () Bool)

(declare-fun e!645416 () Bool)

(declare-fun arrayContainsKey!0 (array!73832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133974 (= e!645416 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133975 () Bool)

(declare-fun e!645402 () Unit!37098)

(declare-fun Unit!37100 () Unit!37098)

(assert (=> b!1133975 (= e!645402 Unit!37100)))

(declare-fun b!1133976 () Bool)

(declare-fun e!645417 () Bool)

(declare-fun e!645407 () Bool)

(assert (=> b!1133976 (= e!645417 (not e!645407))))

(declare-fun res!757172 () Bool)

(assert (=> b!1133976 (=> res!757172 e!645407)))

(assert (=> b!1133976 (= res!757172 (bvsgt from!1455 i!673))))

(assert (=> b!1133976 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!503943 () Unit!37098)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73832 (_ BitVec 64) (_ BitVec 32)) Unit!37098)

(assert (=> b!1133976 (= lt!503943 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1133977 () Bool)

(assert (=> b!1133977 (= e!645407 e!645409)))

(declare-fun res!757160 () Bool)

(assert (=> b!1133977 (=> res!757160 e!645409)))

(assert (=> b!1133977 (= res!757160 (not (= from!1455 i!673)))))

(declare-fun lt!503945 () ListLongMap!16121)

(declare-fun lt!503949 () array!73834)

(declare-fun lt!503944 () array!73832)

(assert (=> b!1133977 (= lt!503945 (getCurrentListMapNoExtraKeys!4525 lt!503944 lt!503949 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2593 (Int (_ BitVec 64)) V!43133)

(assert (=> b!1133977 (= lt!503949 (array!73835 (store (arr!35564 _values!996) i!673 (ValueCellFull!13543 (dynLambda!2593 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36101 _values!996)))))

(declare-fun lt!503942 () ListLongMap!16121)

(assert (=> b!1133977 (= lt!503942 (getCurrentListMapNoExtraKeys!4525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun c!110667 () Bool)

(declare-fun lt!503941 () ListLongMap!16121)

(declare-fun c!110665 () Bool)

(declare-fun lt!503952 () ListLongMap!16121)

(declare-fun bm!49239 () Bool)

(declare-fun call!49243 () Unit!37098)

(declare-fun addStillContains!734 (ListLongMap!16121 (_ BitVec 64) V!43133 (_ BitVec 64)) Unit!37098)

(assert (=> bm!49239 (= call!49243 (addStillContains!734 (ite c!110665 lt!503952 lt!503941) (ite c!110665 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110667 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110665 minValue!944 (ite c!110667 zeroValue!944 minValue!944)) k!934))))

(declare-fun res!757163 () Bool)

(assert (=> start!98406 (=> (not res!757163) (not e!645414))))

(assert (=> start!98406 (= res!757163 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36100 _keys!1208))))))

(assert (=> start!98406 e!645414))

(assert (=> start!98406 tp_is_empty!28505))

(declare-fun array_inv!27142 (array!73832) Bool)

(assert (=> start!98406 (array_inv!27142 _keys!1208)))

(assert (=> start!98406 true))

(assert (=> start!98406 tp!84637))

(declare-fun e!645410 () Bool)

(declare-fun array_inv!27143 (array!73834) Bool)

(assert (=> start!98406 (and (array_inv!27143 _values!996) e!645410)))

(declare-fun b!1133978 () Bool)

(declare-fun e!645408 () Bool)

(assert (=> b!1133978 (= e!645412 e!645408)))

(declare-fun res!757164 () Bool)

(assert (=> b!1133978 (=> res!757164 e!645408)))

(declare-fun contains!6567 (ListLongMap!16121 (_ BitVec 64)) Bool)

(assert (=> b!1133978 (= res!757164 (not (contains!6567 lt!503941 k!934)))))

(assert (=> b!1133978 (= lt!503941 (getCurrentListMapNoExtraKeys!4525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133979 () Bool)

(declare-fun res!757169 () Bool)

(assert (=> b!1133979 (=> (not res!757169) (not e!645417))))

(assert (=> b!1133979 (= res!757169 (arrayNoDuplicates!0 lt!503944 #b00000000000000000000000000000000 Nil!24950))))

(declare-fun b!1133980 () Bool)

(declare-fun e!645405 () Unit!37098)

(declare-fun lt!503954 () Unit!37098)

(assert (=> b!1133980 (= e!645405 lt!503954)))

(declare-fun lt!503953 () Unit!37098)

(assert (=> b!1133980 (= lt!503953 (addStillContains!734 lt!503941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun call!49241 () ListLongMap!16121)

(assert (=> b!1133980 (= lt!503952 call!49241)))

(declare-fun call!49246 () Bool)

(assert (=> b!1133980 call!49246))

(assert (=> b!1133980 (= lt!503954 call!49243)))

(declare-fun +!3435 (ListLongMap!16121 tuple2!18140) ListLongMap!16121)

(assert (=> b!1133980 (contains!6567 (+!3435 lt!503952 (tuple2!18141 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1133981 () Bool)

(declare-fun res!757161 () Bool)

(assert (=> b!1133981 (=> (not res!757161) (not e!645414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73832 (_ BitVec 32)) Bool)

(assert (=> b!1133981 (= res!757161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1133982 () Bool)

(declare-fun res!757170 () Bool)

(assert (=> b!1133982 (=> (not res!757170) (not e!645414))))

(assert (=> b!1133982 (= res!757170 (and (= (size!36101 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36100 _keys!1208) (size!36101 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1133983 () Bool)

(assert (=> b!1133983 (= e!645414 e!645417)))

(declare-fun res!757166 () Bool)

(assert (=> b!1133983 (=> (not res!757166) (not e!645417))))

(assert (=> b!1133983 (= res!757166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503944 mask!1564))))

(assert (=> b!1133983 (= lt!503944 (array!73833 (store (arr!35563 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36100 _keys!1208)))))

(declare-fun b!1133984 () Bool)

(declare-fun res!757168 () Bool)

(assert (=> b!1133984 (=> (not res!757168) (not e!645414))))

(assert (=> b!1133984 (= res!757168 (= (select (arr!35563 _keys!1208) i!673) k!934))))

(declare-fun bm!49240 () Bool)

(declare-fun call!49242 () Bool)

(assert (=> bm!49240 (= call!49242 call!49246)))

(declare-fun call!49244 () ListLongMap!16121)

(declare-fun b!1133985 () Bool)

(declare-fun -!1193 (ListLongMap!16121 (_ BitVec 64)) ListLongMap!16121)

(assert (=> b!1133985 (= e!645413 (= call!49244 (-!1193 call!49245 k!934)))))

(declare-fun mapNonEmpty!44582 () Bool)

(declare-fun mapRes!44582 () Bool)

(declare-fun tp!84636 () Bool)

(assert (=> mapNonEmpty!44582 (= mapRes!44582 (and tp!84636 e!645415))))

(declare-fun mapValue!44582 () ValueCell!13543)

(declare-fun mapKey!44582 () (_ BitVec 32))

(declare-fun mapRest!44582 () (Array (_ BitVec 32) ValueCell!13543))

(assert (=> mapNonEmpty!44582 (= (arr!35564 _values!996) (store mapRest!44582 mapKey!44582 mapValue!44582))))

(declare-fun b!1133986 () Bool)

(declare-fun res!757158 () Bool)

(assert (=> b!1133986 (=> (not res!757158) (not e!645414))))

(assert (=> b!1133986 (= res!757158 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36100 _keys!1208))))))

(declare-fun lt!503955 () Bool)

(declare-fun b!1133987 () Bool)

(assert (=> b!1133987 (= e!645416 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503955) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!44582 () Bool)

(assert (=> mapIsEmpty!44582 mapRes!44582))

(declare-fun b!1133988 () Bool)

(declare-fun e!645403 () Unit!37098)

(assert (=> b!1133988 (= e!645405 e!645403)))

(assert (=> b!1133988 (= c!110667 (and (not lt!503955) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1133989 () Bool)

(assert (=> b!1133989 (= e!645413 (= call!49244 call!49245))))

(declare-fun bm!49241 () Bool)

(declare-fun call!49247 () ListLongMap!16121)

(assert (=> bm!49241 (= call!49246 (contains!6567 (ite c!110665 lt!503952 call!49247) k!934))))

(declare-fun bm!49242 () Bool)

(assert (=> bm!49242 (= call!49241 (+!3435 lt!503941 (ite (or c!110665 c!110667) (tuple2!18141 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18141 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1133990 () Bool)

(declare-fun e!645406 () Bool)

(assert (=> b!1133990 (= e!645406 tp_is_empty!28505)))

(declare-fun b!1133991 () Bool)

(assert (=> b!1133991 (= e!645408 true)))

(declare-fun e!645404 () Bool)

(assert (=> b!1133991 e!645404))

(declare-fun res!757167 () Bool)

(assert (=> b!1133991 (=> (not res!757167) (not e!645404))))

(assert (=> b!1133991 (= res!757167 e!645416)))

(declare-fun c!110664 () Bool)

(assert (=> b!1133991 (= c!110664 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503946 () Unit!37098)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!344 (array!73832 array!73834 (_ BitVec 32) (_ BitVec 32) V!43133 V!43133 (_ BitVec 64) (_ BitVec 32) Int) Unit!37098)

(assert (=> b!1133991 (= lt!503946 (lemmaListMapContainsThenArrayContainsFrom!344 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503947 () Unit!37098)

(assert (=> b!1133991 (= lt!503947 e!645405)))

(assert (=> b!1133991 (= c!110665 (and (not lt!503955) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1133991 (= lt!503955 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!49243 () Bool)

(assert (=> bm!49243 (= call!49247 call!49241)))

(declare-fun b!1133992 () Bool)

(assert (=> b!1133992 (= e!645404 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133993 () Bool)

(declare-fun c!110663 () Bool)

(assert (=> b!1133993 (= c!110663 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503955))))

(assert (=> b!1133993 (= e!645403 e!645402)))

(declare-fun b!1133994 () Bool)

(declare-fun res!757171 () Bool)

(assert (=> b!1133994 (=> (not res!757171) (not e!645414))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1133994 (= res!757171 (validKeyInArray!0 k!934))))

(declare-fun b!1133995 () Bool)

(declare-fun res!757165 () Bool)

(assert (=> b!1133995 (=> (not res!757165) (not e!645414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1133995 (= res!757165 (validMask!0 mask!1564))))

(declare-fun bm!49244 () Bool)

(assert (=> bm!49244 (= call!49244 (getCurrentListMapNoExtraKeys!4525 lt!503944 lt!503949 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49245 () Bool)

(declare-fun call!49248 () Unit!37098)

(assert (=> bm!49245 (= call!49248 call!49243)))

(declare-fun b!1133996 () Bool)

(assert (=> b!1133996 (= e!645410 (and e!645406 mapRes!44582))))

(declare-fun condMapEmpty!44582 () Bool)

(declare-fun mapDefault!44582 () ValueCell!13543)

