; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99722 () Bool)

(assert start!99722)

(declare-fun b_free!25265 () Bool)

(declare-fun b_next!25265 () Bool)

(assert (=> start!99722 (= b_free!25265 (not b_next!25265))))

(declare-fun tp!88509 () Bool)

(declare-fun b_and!41411 () Bool)

(assert (=> start!99722 (= tp!88509 b_and!41411)))

(declare-fun b!1182437 () Bool)

(declare-fun e!672304 () Bool)

(declare-fun e!672306 () Bool)

(assert (=> b!1182437 (= e!672304 e!672306)))

(declare-fun res!785909 () Bool)

(assert (=> b!1182437 (=> res!785909 e!672306)))

(declare-datatypes ((array!76358 0))(
  ( (array!76359 (arr!36825 (Array (_ BitVec 32) (_ BitVec 64))) (size!37362 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76358)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1182437 (= res!785909 (not (= (select (arr!36825 _keys!1208) from!1455) k!934)))))

(declare-fun b!1182438 () Bool)

(declare-fun e!672311 () Bool)

(declare-fun e!672312 () Bool)

(assert (=> b!1182438 (= e!672311 (not e!672312))))

(declare-fun res!785912 () Bool)

(assert (=> b!1182438 (=> res!785912 e!672312)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1182438 (= res!785912 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182438 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39047 0))(
  ( (Unit!39048) )
))
(declare-fun lt!535264 () Unit!39047)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76358 (_ BitVec 64) (_ BitVec 32)) Unit!39047)

(assert (=> b!1182438 (= lt!535264 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1182439 () Bool)

(declare-fun res!785921 () Bool)

(declare-fun e!672313 () Bool)

(assert (=> b!1182439 (=> (not res!785921) (not e!672313))))

(assert (=> b!1182439 (= res!785921 (= (select (arr!36825 _keys!1208) i!673) k!934))))

(declare-fun b!1182440 () Bool)

(declare-fun res!785911 () Bool)

(assert (=> b!1182440 (=> (not res!785911) (not e!672311))))

(declare-fun lt!535265 () array!76358)

(declare-datatypes ((List!26046 0))(
  ( (Nil!26043) (Cons!26042 (h!27251 (_ BitVec 64)) (t!38310 List!26046)) )
))
(declare-fun arrayNoDuplicates!0 (array!76358 (_ BitVec 32) List!26046) Bool)

(assert (=> b!1182440 (= res!785911 (arrayNoDuplicates!0 lt!535265 #b00000000000000000000000000000000 Nil!26043))))

(declare-fun b!1182441 () Bool)

(declare-fun res!785916 () Bool)

(assert (=> b!1182441 (=> (not res!785916) (not e!672313))))

(assert (=> b!1182441 (= res!785916 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26043))))

(declare-fun b!1182442 () Bool)

(declare-fun res!785919 () Bool)

(assert (=> b!1182442 (=> (not res!785919) (not e!672313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182442 (= res!785919 (validKeyInArray!0 k!934))))

(declare-fun b!1182443 () Bool)

(declare-fun e!672303 () Unit!39047)

(declare-fun Unit!39049 () Unit!39047)

(assert (=> b!1182443 (= e!672303 Unit!39049)))

(declare-fun lt!535256 () Unit!39047)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76358 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39047)

(assert (=> b!1182443 (= lt!535256 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1182443 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535266 () Unit!39047)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76358 (_ BitVec 32) (_ BitVec 32)) Unit!39047)

(assert (=> b!1182443 (= lt!535266 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1182443 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26043)))

(declare-fun lt!535268 () Unit!39047)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76358 (_ BitVec 64) (_ BitVec 32) List!26046) Unit!39047)

(assert (=> b!1182443 (= lt!535268 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26043))))

(assert (=> b!1182443 false))

(declare-fun mapIsEmpty!46520 () Bool)

(declare-fun mapRes!46520 () Bool)

(assert (=> mapIsEmpty!46520 mapRes!46520))

(declare-fun b!1182445 () Bool)

(declare-fun res!785914 () Bool)

(assert (=> b!1182445 (=> (not res!785914) (not e!672313))))

(assert (=> b!1182445 (= res!785914 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37362 _keys!1208))))))

(declare-fun b!1182446 () Bool)

(declare-fun e!672309 () Bool)

(assert (=> b!1182446 (= e!672312 e!672309)))

(declare-fun res!785918 () Bool)

(assert (=> b!1182446 (=> res!785918 e!672309)))

(assert (=> b!1182446 (= res!785918 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44853 0))(
  ( (V!44854 (val!14954 Int)) )
))
(declare-fun zeroValue!944 () V!44853)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14188 0))(
  ( (ValueCellFull!14188 (v!17593 V!44853)) (EmptyCell!14188) )
))
(declare-datatypes ((array!76360 0))(
  ( (array!76361 (arr!36826 (Array (_ BitVec 32) ValueCell!14188)) (size!37363 (_ BitVec 32))) )
))
(declare-fun lt!535263 () array!76360)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44853)

(declare-datatypes ((tuple2!19284 0))(
  ( (tuple2!19285 (_1!9652 (_ BitVec 64)) (_2!9652 V!44853)) )
))
(declare-datatypes ((List!26047 0))(
  ( (Nil!26044) (Cons!26043 (h!27252 tuple2!19284) (t!38311 List!26047)) )
))
(declare-datatypes ((ListLongMap!17265 0))(
  ( (ListLongMap!17266 (toList!8648 List!26047)) )
))
(declare-fun lt!535258 () ListLongMap!17265)

(declare-fun getCurrentListMapNoExtraKeys!5070 (array!76358 array!76360 (_ BitVec 32) (_ BitVec 32) V!44853 V!44853 (_ BitVec 32) Int) ListLongMap!17265)

(assert (=> b!1182446 (= lt!535258 (getCurrentListMapNoExtraKeys!5070 lt!535265 lt!535263 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!535254 () V!44853)

(declare-fun _values!996 () array!76360)

(assert (=> b!1182446 (= lt!535263 (array!76361 (store (arr!36826 _values!996) i!673 (ValueCellFull!14188 lt!535254)) (size!37363 _values!996)))))

(declare-fun dynLambda!3038 (Int (_ BitVec 64)) V!44853)

(assert (=> b!1182446 (= lt!535254 (dynLambda!3038 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!535259 () ListLongMap!17265)

(assert (=> b!1182446 (= lt!535259 (getCurrentListMapNoExtraKeys!5070 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46520 () Bool)

(declare-fun tp!88510 () Bool)

(declare-fun e!672310 () Bool)

(assert (=> mapNonEmpty!46520 (= mapRes!46520 (and tp!88510 e!672310))))

(declare-fun mapRest!46520 () (Array (_ BitVec 32) ValueCell!14188))

(declare-fun mapKey!46520 () (_ BitVec 32))

(declare-fun mapValue!46520 () ValueCell!14188)

(assert (=> mapNonEmpty!46520 (= (arr!36826 _values!996) (store mapRest!46520 mapKey!46520 mapValue!46520))))

(declare-fun b!1182447 () Bool)

(assert (=> b!1182447 (= e!672306 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1182448 () Bool)

(declare-fun res!785917 () Bool)

(assert (=> b!1182448 (=> (not res!785917) (not e!672313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182448 (= res!785917 (validMask!0 mask!1564))))

(declare-fun b!1182449 () Bool)

(assert (=> b!1182449 (= e!672313 e!672311)))

(declare-fun res!785920 () Bool)

(assert (=> b!1182449 (=> (not res!785920) (not e!672311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76358 (_ BitVec 32)) Bool)

(assert (=> b!1182449 (= res!785920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535265 mask!1564))))

(assert (=> b!1182449 (= lt!535265 (array!76359 (store (arr!36825 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37362 _keys!1208)))))

(declare-fun b!1182450 () Bool)

(declare-fun e!672302 () Bool)

(assert (=> b!1182450 (= e!672302 true)))

(declare-fun lt!535251 () ListLongMap!17265)

(declare-fun lt!535255 () ListLongMap!17265)

(declare-fun -!1637 (ListLongMap!17265 (_ BitVec 64)) ListLongMap!17265)

(assert (=> b!1182450 (= (-!1637 lt!535251 k!934) lt!535255)))

(declare-fun lt!535269 () ListLongMap!17265)

(declare-fun lt!535257 () Unit!39047)

(declare-fun lt!535262 () V!44853)

(declare-fun addRemoveCommutativeForDiffKeys!156 (ListLongMap!17265 (_ BitVec 64) V!44853 (_ BitVec 64)) Unit!39047)

(assert (=> b!1182450 (= lt!535257 (addRemoveCommutativeForDiffKeys!156 lt!535269 (select (arr!36825 _keys!1208) from!1455) lt!535262 k!934))))

(declare-fun lt!535267 () ListLongMap!17265)

(declare-fun lt!535252 () ListLongMap!17265)

(assert (=> b!1182450 (and (= lt!535259 lt!535251) (= lt!535252 lt!535267))))

(declare-fun lt!535253 () tuple2!19284)

(declare-fun +!3866 (ListLongMap!17265 tuple2!19284) ListLongMap!17265)

(assert (=> b!1182450 (= lt!535251 (+!3866 lt!535269 lt!535253))))

(assert (=> b!1182450 (not (= (select (arr!36825 _keys!1208) from!1455) k!934))))

(declare-fun lt!535260 () Unit!39047)

(assert (=> b!1182450 (= lt!535260 e!672303)))

(declare-fun c!116969 () Bool)

(assert (=> b!1182450 (= c!116969 (= (select (arr!36825 _keys!1208) from!1455) k!934))))

(assert (=> b!1182450 e!672304))

(declare-fun res!785922 () Bool)

(assert (=> b!1182450 (=> (not res!785922) (not e!672304))))

(assert (=> b!1182450 (= res!785922 (= lt!535258 lt!535255))))

(assert (=> b!1182450 (= lt!535255 (+!3866 lt!535252 lt!535253))))

(assert (=> b!1182450 (= lt!535253 (tuple2!19285 (select (arr!36825 _keys!1208) from!1455) lt!535262))))

(declare-fun get!18876 (ValueCell!14188 V!44853) V!44853)

(assert (=> b!1182450 (= lt!535262 (get!18876 (select (arr!36826 _values!996) from!1455) lt!535254))))

(declare-fun b!1182451 () Bool)

(assert (=> b!1182451 (= e!672309 e!672302)))

(declare-fun res!785915 () Bool)

(assert (=> b!1182451 (=> res!785915 e!672302)))

(assert (=> b!1182451 (= res!785915 (not (validKeyInArray!0 (select (arr!36825 _keys!1208) from!1455))))))

(assert (=> b!1182451 (= lt!535267 lt!535252)))

(assert (=> b!1182451 (= lt!535252 (-!1637 lt!535269 k!934))))

(assert (=> b!1182451 (= lt!535267 (getCurrentListMapNoExtraKeys!5070 lt!535265 lt!535263 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1182451 (= lt!535269 (getCurrentListMapNoExtraKeys!5070 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!535261 () Unit!39047)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!858 (array!76358 array!76360 (_ BitVec 32) (_ BitVec 32) V!44853 V!44853 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39047)

(assert (=> b!1182451 (= lt!535261 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!858 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1182452 () Bool)

(declare-fun res!785923 () Bool)

(assert (=> b!1182452 (=> (not res!785923) (not e!672313))))

(assert (=> b!1182452 (= res!785923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1182453 () Bool)

(declare-fun res!785910 () Bool)

(assert (=> b!1182453 (=> (not res!785910) (not e!672313))))

(assert (=> b!1182453 (= res!785910 (and (= (size!37363 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37362 _keys!1208) (size!37363 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1182454 () Bool)

(declare-fun Unit!39050 () Unit!39047)

(assert (=> b!1182454 (= e!672303 Unit!39050)))

(declare-fun res!785913 () Bool)

(assert (=> start!99722 (=> (not res!785913) (not e!672313))))

(assert (=> start!99722 (= res!785913 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37362 _keys!1208))))))

(assert (=> start!99722 e!672313))

(declare-fun tp_is_empty!29795 () Bool)

(assert (=> start!99722 tp_is_empty!29795))

(declare-fun array_inv!27994 (array!76358) Bool)

(assert (=> start!99722 (array_inv!27994 _keys!1208)))

(assert (=> start!99722 true))

(assert (=> start!99722 tp!88509))

(declare-fun e!672308 () Bool)

(declare-fun array_inv!27995 (array!76360) Bool)

(assert (=> start!99722 (and (array_inv!27995 _values!996) e!672308)))

(declare-fun b!1182444 () Bool)

(assert (=> b!1182444 (= e!672310 tp_is_empty!29795)))

(declare-fun b!1182455 () Bool)

(declare-fun e!672305 () Bool)

(assert (=> b!1182455 (= e!672308 (and e!672305 mapRes!46520))))

(declare-fun condMapEmpty!46520 () Bool)

(declare-fun mapDefault!46520 () ValueCell!14188)

