; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99406 () Bool)

(assert start!99406)

(declare-fun b_free!24949 () Bool)

(declare-fun b_next!24949 () Bool)

(assert (=> start!99406 (= b_free!24949 (not b_next!24949))))

(declare-fun tp!87561 () Bool)

(declare-fun b_and!40779 () Bool)

(assert (=> start!99406 (= tp!87561 b_and!40779)))

(declare-fun mapIsEmpty!46046 () Bool)

(declare-fun mapRes!46046 () Bool)

(assert (=> mapIsEmpty!46046 mapRes!46046))

(declare-fun res!778407 () Bool)

(declare-fun e!666346 () Bool)

(assert (=> start!99406 (=> (not res!778407) (not e!666346))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75734 0))(
  ( (array!75735 (arr!36513 (Array (_ BitVec 32) (_ BitVec 64))) (size!37050 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75734)

(assert (=> start!99406 (= res!778407 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37050 _keys!1208))))))

(assert (=> start!99406 e!666346))

(declare-fun tp_is_empty!29479 () Bool)

(assert (=> start!99406 tp_is_empty!29479))

(declare-fun array_inv!27784 (array!75734) Bool)

(assert (=> start!99406 (array_inv!27784 _keys!1208)))

(assert (=> start!99406 true))

(assert (=> start!99406 tp!87561))

(declare-datatypes ((V!44433 0))(
  ( (V!44434 (val!14796 Int)) )
))
(declare-datatypes ((ValueCell!14030 0))(
  ( (ValueCellFull!14030 (v!17435 V!44433)) (EmptyCell!14030) )
))
(declare-datatypes ((array!75736 0))(
  ( (array!75737 (arr!36514 (Array (_ BitVec 32) ValueCell!14030)) (size!37051 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75736)

(declare-fun e!666354 () Bool)

(declare-fun array_inv!27785 (array!75736) Bool)

(assert (=> start!99406 (and (array_inv!27785 _values!996) e!666354)))

(declare-fun b!1172267 () Bool)

(declare-fun res!778400 () Bool)

(declare-fun e!666350 () Bool)

(assert (=> b!1172267 (=> (not res!778400) (not e!666350))))

(declare-fun lt!528162 () array!75734)

(declare-datatypes ((List!25773 0))(
  ( (Nil!25770) (Cons!25769 (h!26978 (_ BitVec 64)) (t!37721 List!25773)) )
))
(declare-fun arrayNoDuplicates!0 (array!75734 (_ BitVec 32) List!25773) Bool)

(assert (=> b!1172267 (= res!778400 (arrayNoDuplicates!0 lt!528162 #b00000000000000000000000000000000 Nil!25770))))

(declare-fun b!1172268 () Bool)

(declare-fun res!778394 () Bool)

(assert (=> b!1172268 (=> (not res!778394) (not e!666346))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172268 (= res!778394 (validKeyInArray!0 k!934))))

(declare-fun e!666355 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun b!1172269 () Bool)

(declare-fun arrayContainsKey!0 (array!75734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172269 (= e!666355 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172270 () Bool)

(declare-fun e!666352 () Bool)

(assert (=> b!1172270 (= e!666352 tp_is_empty!29479)))

(declare-fun b!1172271 () Bool)

(declare-fun res!778409 () Bool)

(assert (=> b!1172271 (=> (not res!778409) (not e!666346))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1172271 (= res!778409 (and (= (size!37051 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37050 _keys!1208) (size!37051 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172272 () Bool)

(declare-fun e!666347 () Bool)

(assert (=> b!1172272 (= e!666347 true)))

(declare-fun lt!528163 () Bool)

(declare-fun contains!6875 (List!25773 (_ BitVec 64)) Bool)

(assert (=> b!1172272 (= lt!528163 (contains!6875 Nil!25770 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172273 () Bool)

(declare-fun res!778393 () Bool)

(assert (=> b!1172273 (=> (not res!778393) (not e!666346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75734 (_ BitVec 32)) Bool)

(assert (=> b!1172273 (= res!778393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1172274 () Bool)

(declare-fun e!666358 () Bool)

(assert (=> b!1172274 (= e!666358 tp_is_empty!29479)))

(declare-fun b!1172275 () Bool)

(declare-fun e!666353 () Bool)

(assert (=> b!1172275 (= e!666353 e!666347)))

(declare-fun res!778397 () Bool)

(assert (=> b!1172275 (=> res!778397 e!666347)))

(assert (=> b!1172275 (= res!778397 (or (bvsge (size!37050 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37050 _keys!1208)) (bvsge from!1455 (size!37050 _keys!1208))))))

(assert (=> b!1172275 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25770)))

(declare-datatypes ((Unit!38558 0))(
  ( (Unit!38559) )
))
(declare-fun lt!528164 () Unit!38558)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75734 (_ BitVec 32) (_ BitVec 32)) Unit!38558)

(assert (=> b!1172275 (= lt!528164 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1172275 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528160 () Unit!38558)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75734 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38558)

(assert (=> b!1172275 (= lt!528160 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1172276 () Bool)

(declare-fun res!778401 () Bool)

(assert (=> b!1172276 (=> res!778401 e!666347)))

(assert (=> b!1172276 (= res!778401 (contains!6875 Nil!25770 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172277 () Bool)

(declare-fun e!666356 () Bool)

(assert (=> b!1172277 (= e!666350 (not e!666356))))

(declare-fun res!778406 () Bool)

(assert (=> b!1172277 (=> res!778406 e!666356)))

(assert (=> b!1172277 (= res!778406 (bvsgt from!1455 i!673))))

(assert (=> b!1172277 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!528166 () Unit!38558)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75734 (_ BitVec 64) (_ BitVec 32)) Unit!38558)

(assert (=> b!1172277 (= lt!528166 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172278 () Bool)

(declare-fun res!778395 () Bool)

(assert (=> b!1172278 (=> (not res!778395) (not e!666346))))

(assert (=> b!1172278 (= res!778395 (= (select (arr!36513 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46046 () Bool)

(declare-fun tp!87562 () Bool)

(assert (=> mapNonEmpty!46046 (= mapRes!46046 (and tp!87562 e!666352))))

(declare-fun mapKey!46046 () (_ BitVec 32))

(declare-fun mapRest!46046 () (Array (_ BitVec 32) ValueCell!14030))

(declare-fun mapValue!46046 () ValueCell!14030)

(assert (=> mapNonEmpty!46046 (= (arr!36514 _values!996) (store mapRest!46046 mapKey!46046 mapValue!46046))))

(declare-fun b!1172279 () Bool)

(declare-fun res!778411 () Bool)

(assert (=> b!1172279 (=> (not res!778411) (not e!666346))))

(assert (=> b!1172279 (= res!778411 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25770))))

(declare-fun b!1172280 () Bool)

(declare-fun e!666348 () Bool)

(assert (=> b!1172280 (= e!666356 e!666348)))

(declare-fun res!778410 () Bool)

(assert (=> b!1172280 (=> res!778410 e!666348)))

(assert (=> b!1172280 (= res!778410 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44433)

(declare-fun lt!528165 () array!75736)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19000 0))(
  ( (tuple2!19001 (_1!9510 (_ BitVec 64)) (_2!9510 V!44433)) )
))
(declare-datatypes ((List!25774 0))(
  ( (Nil!25771) (Cons!25770 (h!26979 tuple2!19000) (t!37722 List!25774)) )
))
(declare-datatypes ((ListLongMap!16981 0))(
  ( (ListLongMap!16982 (toList!8506 List!25774)) )
))
(declare-fun lt!528167 () ListLongMap!16981)

(declare-fun minValue!944 () V!44433)

(declare-fun getCurrentListMapNoExtraKeys!4938 (array!75734 array!75736 (_ BitVec 32) (_ BitVec 32) V!44433 V!44433 (_ BitVec 32) Int) ListLongMap!16981)

(assert (=> b!1172280 (= lt!528167 (getCurrentListMapNoExtraKeys!4938 lt!528162 lt!528165 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!528168 () V!44433)

(assert (=> b!1172280 (= lt!528165 (array!75737 (store (arr!36514 _values!996) i!673 (ValueCellFull!14030 lt!528168)) (size!37051 _values!996)))))

(declare-fun dynLambda!2926 (Int (_ BitVec 64)) V!44433)

(assert (=> b!1172280 (= lt!528168 (dynLambda!2926 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528169 () ListLongMap!16981)

(assert (=> b!1172280 (= lt!528169 (getCurrentListMapNoExtraKeys!4938 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1172281 () Bool)

(declare-fun res!778408 () Bool)

(assert (=> b!1172281 (=> res!778408 e!666347)))

(declare-fun noDuplicate!1639 (List!25773) Bool)

(assert (=> b!1172281 (= res!778408 (not (noDuplicate!1639 Nil!25770)))))

(declare-fun b!1172282 () Bool)

(declare-fun res!778404 () Bool)

(assert (=> b!1172282 (=> (not res!778404) (not e!666346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172282 (= res!778404 (validMask!0 mask!1564))))

(declare-fun b!1172283 () Bool)

(assert (=> b!1172283 (= e!666354 (and e!666358 mapRes!46046))))

(declare-fun condMapEmpty!46046 () Bool)

(declare-fun mapDefault!46046 () ValueCell!14030)

