; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99602 () Bool)

(assert start!99602)

(declare-fun b_free!25145 () Bool)

(declare-fun b_next!25145 () Bool)

(assert (=> start!99602 (= b_free!25145 (not b_next!25145))))

(declare-fun tp!88149 () Bool)

(declare-fun b_and!41171 () Bool)

(assert (=> start!99602 (= tp!88149 b_and!41171)))

(declare-fun b!1178491 () Bool)

(declare-fun e!670017 () Bool)

(declare-fun e!670013 () Bool)

(assert (=> b!1178491 (= e!670017 e!670013)))

(declare-fun res!782997 () Bool)

(assert (=> b!1178491 (=> (not res!782997) (not e!670013))))

(declare-datatypes ((array!76122 0))(
  ( (array!76123 (arr!36707 (Array (_ BitVec 32) (_ BitVec 64))) (size!37244 (_ BitVec 32))) )
))
(declare-fun lt!532380 () array!76122)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76122 (_ BitVec 32)) Bool)

(assert (=> b!1178491 (= res!782997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532380 mask!1564))))

(declare-fun _keys!1208 () array!76122)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1178491 (= lt!532380 (array!76123 (store (arr!36707 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37244 _keys!1208)))))

(declare-fun b!1178492 () Bool)

(declare-fun e!670008 () Bool)

(declare-fun e!670007 () Bool)

(assert (=> b!1178492 (= e!670008 e!670007)))

(declare-fun res!782989 () Bool)

(assert (=> b!1178492 (=> res!782989 e!670007)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1178492 (= res!782989 (not (= (select (arr!36707 _keys!1208) from!1455) k!934)))))

(declare-fun b!1178493 () Bool)

(declare-fun res!782994 () Bool)

(assert (=> b!1178493 (=> (not res!782994) (not e!670017))))

(declare-datatypes ((List!25946 0))(
  ( (Nil!25943) (Cons!25942 (h!27151 (_ BitVec 64)) (t!38090 List!25946)) )
))
(declare-fun arrayNoDuplicates!0 (array!76122 (_ BitVec 32) List!25946) Bool)

(assert (=> b!1178493 (= res!782994 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25943))))

(declare-datatypes ((V!44693 0))(
  ( (V!44694 (val!14894 Int)) )
))
(declare-datatypes ((tuple2!19182 0))(
  ( (tuple2!19183 (_1!9601 (_ BitVec 64)) (_2!9601 V!44693)) )
))
(declare-datatypes ((List!25947 0))(
  ( (Nil!25944) (Cons!25943 (h!27152 tuple2!19182) (t!38091 List!25947)) )
))
(declare-datatypes ((ListLongMap!17163 0))(
  ( (ListLongMap!17164 (toList!8597 List!25947)) )
))
(declare-fun lt!532382 () ListLongMap!17163)

(declare-fun b!1178494 () Bool)

(declare-fun lt!532389 () ListLongMap!17163)

(declare-fun lt!532384 () tuple2!19182)

(declare-fun e!670015 () Bool)

(declare-fun +!3818 (ListLongMap!17163 tuple2!19182) ListLongMap!17163)

(assert (=> b!1178494 (= e!670015 (= lt!532389 (+!3818 lt!532382 lt!532384)))))

(declare-fun b!1178495 () Bool)

(declare-fun res!782986 () Bool)

(assert (=> b!1178495 (=> (not res!782986) (not e!670017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1178495 (= res!782986 (validMask!0 mask!1564))))

(declare-fun b!1178496 () Bool)

(declare-fun e!670010 () Bool)

(assert (=> b!1178496 (= e!670010 true)))

(assert (=> b!1178496 e!670015))

(declare-fun res!782983 () Bool)

(assert (=> b!1178496 (=> (not res!782983) (not e!670015))))

(assert (=> b!1178496 (= res!782983 (not (= (select (arr!36707 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38866 0))(
  ( (Unit!38867) )
))
(declare-fun lt!532375 () Unit!38866)

(declare-fun e!670014 () Unit!38866)

(assert (=> b!1178496 (= lt!532375 e!670014)))

(declare-fun c!116789 () Bool)

(assert (=> b!1178496 (= c!116789 (= (select (arr!36707 _keys!1208) from!1455) k!934))))

(assert (=> b!1178496 e!670008))

(declare-fun res!782988 () Bool)

(assert (=> b!1178496 (=> (not res!782988) (not e!670008))))

(declare-fun lt!532387 () ListLongMap!17163)

(declare-fun lt!532379 () ListLongMap!17163)

(assert (=> b!1178496 (= res!782988 (= lt!532379 (+!3818 lt!532387 lt!532384)))))

(declare-datatypes ((ValueCell!14128 0))(
  ( (ValueCellFull!14128 (v!17533 V!44693)) (EmptyCell!14128) )
))
(declare-datatypes ((array!76124 0))(
  ( (array!76125 (arr!36708 (Array (_ BitVec 32) ValueCell!14128)) (size!37245 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76124)

(declare-fun lt!532388 () V!44693)

(declare-fun get!18795 (ValueCell!14128 V!44693) V!44693)

(assert (=> b!1178496 (= lt!532384 (tuple2!19183 (select (arr!36707 _keys!1208) from!1455) (get!18795 (select (arr!36708 _values!996) from!1455) lt!532388)))))

(declare-fun b!1178497 () Bool)

(declare-fun e!670016 () Bool)

(assert (=> b!1178497 (= e!670016 e!670010)))

(declare-fun res!782992 () Bool)

(assert (=> b!1178497 (=> res!782992 e!670010)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178497 (= res!782992 (not (validKeyInArray!0 (select (arr!36707 _keys!1208) from!1455))))))

(declare-fun lt!532378 () ListLongMap!17163)

(assert (=> b!1178497 (= lt!532378 lt!532387)))

(declare-fun -!1595 (ListLongMap!17163 (_ BitVec 64)) ListLongMap!17163)

(assert (=> b!1178497 (= lt!532387 (-!1595 lt!532382 k!934))))

(declare-fun zeroValue!944 () V!44693)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!532377 () array!76124)

(declare-fun minValue!944 () V!44693)

(declare-fun getCurrentListMapNoExtraKeys!5026 (array!76122 array!76124 (_ BitVec 32) (_ BitVec 32) V!44693 V!44693 (_ BitVec 32) Int) ListLongMap!17163)

(assert (=> b!1178497 (= lt!532378 (getCurrentListMapNoExtraKeys!5026 lt!532380 lt!532377 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1178497 (= lt!532382 (getCurrentListMapNoExtraKeys!5026 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!532383 () Unit!38866)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!819 (array!76122 array!76124 (_ BitVec 32) (_ BitVec 32) V!44693 V!44693 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38866)

(assert (=> b!1178497 (= lt!532383 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!819 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1178499 () Bool)

(declare-fun e!670006 () Bool)

(declare-fun tp_is_empty!29675 () Bool)

(assert (=> b!1178499 (= e!670006 tp_is_empty!29675)))

(declare-fun b!1178500 () Bool)

(declare-fun res!782987 () Bool)

(assert (=> b!1178500 (=> (not res!782987) (not e!670017))))

(assert (=> b!1178500 (= res!782987 (= (select (arr!36707 _keys!1208) i!673) k!934))))

(declare-fun b!1178501 () Bool)

(declare-fun res!782998 () Bool)

(assert (=> b!1178501 (=> (not res!782998) (not e!670017))))

(assert (=> b!1178501 (= res!782998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!46340 () Bool)

(declare-fun mapRes!46340 () Bool)

(declare-fun tp!88150 () Bool)

(assert (=> mapNonEmpty!46340 (= mapRes!46340 (and tp!88150 e!670006))))

(declare-fun mapKey!46340 () (_ BitVec 32))

(declare-fun mapRest!46340 () (Array (_ BitVec 32) ValueCell!14128))

(declare-fun mapValue!46340 () ValueCell!14128)

(assert (=> mapNonEmpty!46340 (= (arr!36708 _values!996) (store mapRest!46340 mapKey!46340 mapValue!46340))))

(declare-fun b!1178502 () Bool)

(declare-fun Unit!38868 () Unit!38866)

(assert (=> b!1178502 (= e!670014 Unit!38868)))

(declare-fun lt!532376 () Unit!38866)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76122 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38866)

(assert (=> b!1178502 (= lt!532376 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178502 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532381 () Unit!38866)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76122 (_ BitVec 32) (_ BitVec 32)) Unit!38866)

(assert (=> b!1178502 (= lt!532381 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1178502 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25943)))

(declare-fun lt!532386 () Unit!38866)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76122 (_ BitVec 64) (_ BitVec 32) List!25946) Unit!38866)

(assert (=> b!1178502 (= lt!532386 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25943))))

(assert (=> b!1178502 false))

(declare-fun b!1178503 () Bool)

(declare-fun e!670011 () Bool)

(assert (=> b!1178503 (= e!670011 e!670016)))

(declare-fun res!782995 () Bool)

(assert (=> b!1178503 (=> res!782995 e!670016)))

(assert (=> b!1178503 (= res!782995 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1178503 (= lt!532379 (getCurrentListMapNoExtraKeys!5026 lt!532380 lt!532377 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1178503 (= lt!532377 (array!76125 (store (arr!36708 _values!996) i!673 (ValueCellFull!14128 lt!532388)) (size!37245 _values!996)))))

(declare-fun dynLambda!3000 (Int (_ BitVec 64)) V!44693)

(assert (=> b!1178503 (= lt!532388 (dynLambda!3000 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1178503 (= lt!532389 (getCurrentListMapNoExtraKeys!5026 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1178504 () Bool)

(declare-fun Unit!38869 () Unit!38866)

(assert (=> b!1178504 (= e!670014 Unit!38869)))

(declare-fun b!1178505 () Bool)

(assert (=> b!1178505 (= e!670013 (not e!670011))))

(declare-fun res!782990 () Bool)

(assert (=> b!1178505 (=> res!782990 e!670011)))

(assert (=> b!1178505 (= res!782990 (bvsgt from!1455 i!673))))

(assert (=> b!1178505 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!532385 () Unit!38866)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76122 (_ BitVec 64) (_ BitVec 32)) Unit!38866)

(assert (=> b!1178505 (= lt!532385 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1178506 () Bool)

(declare-fun e!670012 () Bool)

(assert (=> b!1178506 (= e!670012 tp_is_empty!29675)))

(declare-fun b!1178498 () Bool)

(declare-fun e!670018 () Bool)

(assert (=> b!1178498 (= e!670018 (and e!670012 mapRes!46340))))

(declare-fun condMapEmpty!46340 () Bool)

(declare-fun mapDefault!46340 () ValueCell!14128)

