; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99506 () Bool)

(assert start!99506)

(declare-fun b_free!25049 () Bool)

(declare-fun b_next!25049 () Bool)

(assert (=> start!99506 (= b_free!25049 (not b_next!25049))))

(declare-fun tp!87861 () Bool)

(declare-fun b_and!40979 () Bool)

(assert (=> start!99506 (= tp!87861 b_and!40979)))

(declare-fun b!1175399 () Bool)

(declare-fun res!780720 () Bool)

(declare-fun e!668170 () Bool)

(assert (=> b!1175399 (=> (not res!780720) (not e!668170))))

(declare-datatypes ((array!75934 0))(
  ( (array!75935 (arr!36613 (Array (_ BitVec 32) (_ BitVec 64))) (size!37150 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75934)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1175399 (= res!780720 (= (select (arr!36613 _keys!1208) i!673) k!934))))

(declare-fun b!1175400 () Bool)

(declare-datatypes ((Unit!38711 0))(
  ( (Unit!38712) )
))
(declare-fun e!668171 () Unit!38711)

(declare-fun Unit!38713 () Unit!38711)

(assert (=> b!1175400 (= e!668171 Unit!38713)))

(declare-fun mapIsEmpty!46196 () Bool)

(declare-fun mapRes!46196 () Bool)

(assert (=> mapIsEmpty!46196 mapRes!46196))

(declare-fun b!1175401 () Bool)

(declare-fun res!780719 () Bool)

(assert (=> b!1175401 (=> (not res!780719) (not e!668170))))

(declare-datatypes ((List!25858 0))(
  ( (Nil!25855) (Cons!25854 (h!27063 (_ BitVec 64)) (t!37906 List!25858)) )
))
(declare-fun arrayNoDuplicates!0 (array!75934 (_ BitVec 32) List!25858) Bool)

(assert (=> b!1175401 (= res!780719 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25855))))

(declare-fun b!1175402 () Bool)

(declare-fun e!668162 () Bool)

(assert (=> b!1175402 (= e!668162 true)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1175402 (not (= (select (arr!36613 _keys!1208) from!1455) k!934))))

(declare-fun lt!530253 () Unit!38711)

(assert (=> b!1175402 (= lt!530253 e!668171)))

(declare-fun c!116645 () Bool)

(assert (=> b!1175402 (= c!116645 (= (select (arr!36613 _keys!1208) from!1455) k!934))))

(declare-fun e!668165 () Bool)

(assert (=> b!1175402 e!668165))

(declare-fun res!780708 () Bool)

(assert (=> b!1175402 (=> (not res!780708) (not e!668165))))

(declare-datatypes ((V!44565 0))(
  ( (V!44566 (val!14846 Int)) )
))
(declare-fun lt!530246 () V!44565)

(declare-datatypes ((tuple2!19090 0))(
  ( (tuple2!19091 (_1!9555 (_ BitVec 64)) (_2!9555 V!44565)) )
))
(declare-datatypes ((List!25859 0))(
  ( (Nil!25856) (Cons!25855 (h!27064 tuple2!19090) (t!37907 List!25859)) )
))
(declare-datatypes ((ListLongMap!17071 0))(
  ( (ListLongMap!17072 (toList!8551 List!25859)) )
))
(declare-fun lt!530256 () ListLongMap!17071)

(declare-fun lt!530249 () ListLongMap!17071)

(declare-datatypes ((ValueCell!14080 0))(
  ( (ValueCellFull!14080 (v!17485 V!44565)) (EmptyCell!14080) )
))
(declare-datatypes ((array!75936 0))(
  ( (array!75937 (arr!36614 (Array (_ BitVec 32) ValueCell!14080)) (size!37151 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75936)

(declare-fun +!3777 (ListLongMap!17071 tuple2!19090) ListLongMap!17071)

(declare-fun get!18726 (ValueCell!14080 V!44565) V!44565)

(assert (=> b!1175402 (= res!780708 (= lt!530256 (+!3777 lt!530249 (tuple2!19091 (select (arr!36613 _keys!1208) from!1455) (get!18726 (select (arr!36614 _values!996) from!1455) lt!530246)))))))

(declare-fun b!1175403 () Bool)

(declare-fun e!668163 () Bool)

(declare-fun arrayContainsKey!0 (array!75934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175403 (= e!668163 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1175404 () Bool)

(declare-fun e!668173 () Bool)

(assert (=> b!1175404 (= e!668173 e!668162)))

(declare-fun res!780718 () Bool)

(assert (=> b!1175404 (=> res!780718 e!668162)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175404 (= res!780718 (not (validKeyInArray!0 (select (arr!36613 _keys!1208) from!1455))))))

(declare-fun lt!530250 () ListLongMap!17071)

(assert (=> b!1175404 (= lt!530250 lt!530249)))

(declare-fun lt!530254 () ListLongMap!17071)

(declare-fun -!1558 (ListLongMap!17071 (_ BitVec 64)) ListLongMap!17071)

(assert (=> b!1175404 (= lt!530249 (-!1558 lt!530254 k!934))))

(declare-fun zeroValue!944 () V!44565)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!530251 () array!75934)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!530248 () array!75936)

(declare-fun minValue!944 () V!44565)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4982 (array!75934 array!75936 (_ BitVec 32) (_ BitVec 32) V!44565 V!44565 (_ BitVec 32) Int) ListLongMap!17071)

(assert (=> b!1175404 (= lt!530250 (getCurrentListMapNoExtraKeys!4982 lt!530251 lt!530248 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1175404 (= lt!530254 (getCurrentListMapNoExtraKeys!4982 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530247 () Unit!38711)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!782 (array!75934 array!75936 (_ BitVec 32) (_ BitVec 32) V!44565 V!44565 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38711)

(assert (=> b!1175404 (= lt!530247 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!782 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175405 () Bool)

(assert (=> b!1175405 (= e!668165 e!668163)))

(declare-fun res!780713 () Bool)

(assert (=> b!1175405 (=> res!780713 e!668163)))

(assert (=> b!1175405 (= res!780713 (not (= (select (arr!36613 _keys!1208) from!1455) k!934)))))

(declare-fun b!1175406 () Bool)

(declare-fun res!780717 () Bool)

(assert (=> b!1175406 (=> (not res!780717) (not e!668170))))

(assert (=> b!1175406 (= res!780717 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37150 _keys!1208))))))

(declare-fun b!1175407 () Bool)

(declare-fun res!780714 () Bool)

(assert (=> b!1175407 (=> (not res!780714) (not e!668170))))

(assert (=> b!1175407 (= res!780714 (validKeyInArray!0 k!934))))

(declare-fun res!780710 () Bool)

(assert (=> start!99506 (=> (not res!780710) (not e!668170))))

(assert (=> start!99506 (= res!780710 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37150 _keys!1208))))))

(assert (=> start!99506 e!668170))

(declare-fun tp_is_empty!29579 () Bool)

(assert (=> start!99506 tp_is_empty!29579))

(declare-fun array_inv!27850 (array!75934) Bool)

(assert (=> start!99506 (array_inv!27850 _keys!1208)))

(assert (=> start!99506 true))

(assert (=> start!99506 tp!87861))

(declare-fun e!668164 () Bool)

(declare-fun array_inv!27851 (array!75936) Bool)

(assert (=> start!99506 (and (array_inv!27851 _values!996) e!668164)))

(declare-fun b!1175408 () Bool)

(declare-fun e!668172 () Bool)

(declare-fun e!668169 () Bool)

(assert (=> b!1175408 (= e!668172 (not e!668169))))

(declare-fun res!780707 () Bool)

(assert (=> b!1175408 (=> res!780707 e!668169)))

(assert (=> b!1175408 (= res!780707 (bvsgt from!1455 i!673))))

(assert (=> b!1175408 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!530245 () Unit!38711)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75934 (_ BitVec 64) (_ BitVec 32)) Unit!38711)

(assert (=> b!1175408 (= lt!530245 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1175409 () Bool)

(assert (=> b!1175409 (= e!668169 e!668173)))

(declare-fun res!780709 () Bool)

(assert (=> b!1175409 (=> res!780709 e!668173)))

(assert (=> b!1175409 (= res!780709 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1175409 (= lt!530256 (getCurrentListMapNoExtraKeys!4982 lt!530251 lt!530248 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1175409 (= lt!530248 (array!75937 (store (arr!36614 _values!996) i!673 (ValueCellFull!14080 lt!530246)) (size!37151 _values!996)))))

(declare-fun dynLambda!2962 (Int (_ BitVec 64)) V!44565)

(assert (=> b!1175409 (= lt!530246 (dynLambda!2962 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530255 () ListLongMap!17071)

(assert (=> b!1175409 (= lt!530255 (getCurrentListMapNoExtraKeys!4982 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175410 () Bool)

(declare-fun res!780712 () Bool)

(assert (=> b!1175410 (=> (not res!780712) (not e!668170))))

(assert (=> b!1175410 (= res!780712 (and (= (size!37151 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37150 _keys!1208) (size!37151 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175411 () Bool)

(declare-fun res!780721 () Bool)

(assert (=> b!1175411 (=> (not res!780721) (not e!668170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75934 (_ BitVec 32)) Bool)

(assert (=> b!1175411 (= res!780721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175412 () Bool)

(declare-fun Unit!38714 () Unit!38711)

(assert (=> b!1175412 (= e!668171 Unit!38714)))

(declare-fun lt!530244 () Unit!38711)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75934 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38711)

(assert (=> b!1175412 (= lt!530244 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1175412 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530243 () Unit!38711)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75934 (_ BitVec 32) (_ BitVec 32)) Unit!38711)

(assert (=> b!1175412 (= lt!530243 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1175412 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25855)))

(declare-fun lt!530252 () Unit!38711)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75934 (_ BitVec 64) (_ BitVec 32) List!25858) Unit!38711)

(assert (=> b!1175412 (= lt!530252 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25855))))

(assert (=> b!1175412 false))

(declare-fun b!1175413 () Bool)

(assert (=> b!1175413 (= e!668170 e!668172)))

(declare-fun res!780716 () Bool)

(assert (=> b!1175413 (=> (not res!780716) (not e!668172))))

(assert (=> b!1175413 (= res!780716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530251 mask!1564))))

(assert (=> b!1175413 (= lt!530251 (array!75935 (store (arr!36613 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37150 _keys!1208)))))

(declare-fun b!1175414 () Bool)

(declare-fun e!668166 () Bool)

(assert (=> b!1175414 (= e!668166 tp_is_empty!29579)))

(declare-fun b!1175415 () Bool)

(declare-fun res!780711 () Bool)

(assert (=> b!1175415 (=> (not res!780711) (not e!668172))))

(assert (=> b!1175415 (= res!780711 (arrayNoDuplicates!0 lt!530251 #b00000000000000000000000000000000 Nil!25855))))

(declare-fun b!1175416 () Bool)

(declare-fun e!668168 () Bool)

(assert (=> b!1175416 (= e!668168 tp_is_empty!29579)))

(declare-fun mapNonEmpty!46196 () Bool)

(declare-fun tp!87862 () Bool)

(assert (=> mapNonEmpty!46196 (= mapRes!46196 (and tp!87862 e!668168))))

(declare-fun mapValue!46196 () ValueCell!14080)

(declare-fun mapKey!46196 () (_ BitVec 32))

(declare-fun mapRest!46196 () (Array (_ BitVec 32) ValueCell!14080))

(assert (=> mapNonEmpty!46196 (= (arr!36614 _values!996) (store mapRest!46196 mapKey!46196 mapValue!46196))))

(declare-fun b!1175417 () Bool)

(assert (=> b!1175417 (= e!668164 (and e!668166 mapRes!46196))))

(declare-fun condMapEmpty!46196 () Bool)

(declare-fun mapDefault!46196 () ValueCell!14080)

