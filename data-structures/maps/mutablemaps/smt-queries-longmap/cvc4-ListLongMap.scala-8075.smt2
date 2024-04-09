; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99356 () Bool)

(assert start!99356)

(declare-fun b_free!24899 () Bool)

(declare-fun b_next!24899 () Bool)

(assert (=> start!99356 (= b_free!24899 (not b_next!24899))))

(declare-fun tp!87412 () Bool)

(declare-fun b_and!40679 () Bool)

(assert (=> start!99356 (= tp!87412 b_and!40679)))

(declare-fun b!1170597 () Bool)

(declare-fun e!665391 () Bool)

(declare-fun e!665385 () Bool)

(assert (=> b!1170597 (= e!665391 e!665385)))

(declare-fun res!777003 () Bool)

(assert (=> b!1170597 (=> res!777003 e!665385)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1170597 (= res!777003 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44365 0))(
  ( (V!44366 (val!14771 Int)) )
))
(declare-fun zeroValue!944 () V!44365)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18956 0))(
  ( (tuple2!18957 (_1!9488 (_ BitVec 64)) (_2!9488 V!44365)) )
))
(declare-datatypes ((List!25727 0))(
  ( (Nil!25724) (Cons!25723 (h!26932 tuple2!18956) (t!37625 List!25727)) )
))
(declare-datatypes ((ListLongMap!16937 0))(
  ( (ListLongMap!16938 (toList!8484 List!25727)) )
))
(declare-fun lt!527206 () ListLongMap!16937)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14005 0))(
  ( (ValueCellFull!14005 (v!17410 V!44365)) (EmptyCell!14005) )
))
(declare-datatypes ((array!75634 0))(
  ( (array!75635 (arr!36463 (Array (_ BitVec 32) ValueCell!14005)) (size!37000 (_ BitVec 32))) )
))
(declare-fun lt!527208 () array!75634)

(declare-fun minValue!944 () V!44365)

(declare-datatypes ((array!75636 0))(
  ( (array!75637 (arr!36464 (Array (_ BitVec 32) (_ BitVec 64))) (size!37001 (_ BitVec 32))) )
))
(declare-fun lt!527205 () array!75636)

(declare-fun getCurrentListMapNoExtraKeys!4916 (array!75636 array!75634 (_ BitVec 32) (_ BitVec 32) V!44365 V!44365 (_ BitVec 32) Int) ListLongMap!16937)

(assert (=> b!1170597 (= lt!527206 (getCurrentListMapNoExtraKeys!4916 lt!527205 lt!527208 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527209 () V!44365)

(declare-fun _values!996 () array!75634)

(assert (=> b!1170597 (= lt!527208 (array!75635 (store (arr!36463 _values!996) i!673 (ValueCellFull!14005 lt!527209)) (size!37000 _values!996)))))

(declare-fun dynLambda!2905 (Int (_ BitVec 64)) V!44365)

(assert (=> b!1170597 (= lt!527209 (dynLambda!2905 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75636)

(declare-fun lt!527213 () ListLongMap!16937)

(assert (=> b!1170597 (= lt!527213 (getCurrentListMapNoExtraKeys!4916 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!45971 () Bool)

(declare-fun mapRes!45971 () Bool)

(assert (=> mapIsEmpty!45971 mapRes!45971))

(declare-fun b!1170598 () Bool)

(declare-fun e!665383 () Bool)

(declare-fun tp_is_empty!29429 () Bool)

(assert (=> b!1170598 (= e!665383 tp_is_empty!29429)))

(declare-fun b!1170600 () Bool)

(declare-fun res!777010 () Bool)

(declare-fun e!665389 () Bool)

(assert (=> b!1170600 (=> (not res!777010) (not e!665389))))

(assert (=> b!1170600 (= res!777010 (and (= (size!37000 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37001 _keys!1208) (size!37000 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170601 () Bool)

(declare-fun e!665388 () Bool)

(assert (=> b!1170601 (= e!665388 true)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170601 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-datatypes ((Unit!38512 0))(
  ( (Unit!38513) )
))
(declare-fun lt!527212 () Unit!38512)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75636 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38512)

(assert (=> b!1170601 (= lt!527212 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170602 () Bool)

(declare-fun e!665392 () Bool)

(assert (=> b!1170602 (= e!665389 e!665392)))

(declare-fun res!777012 () Bool)

(assert (=> b!1170602 (=> (not res!777012) (not e!665392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75636 (_ BitVec 32)) Bool)

(assert (=> b!1170602 (= res!777012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527205 mask!1564))))

(assert (=> b!1170602 (= lt!527205 (array!75637 (store (arr!36464 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37001 _keys!1208)))))

(declare-fun e!665381 () Bool)

(declare-fun b!1170603 () Bool)

(assert (=> b!1170603 (= e!665381 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170604 () Bool)

(declare-fun e!665390 () Bool)

(assert (=> b!1170604 (= e!665390 e!665381)))

(declare-fun res!777007 () Bool)

(assert (=> b!1170604 (=> res!777007 e!665381)))

(assert (=> b!1170604 (= res!777007 (not (= (select (arr!36464 _keys!1208) from!1455) k!934)))))

(declare-fun b!1170605 () Bool)

(declare-fun res!776998 () Bool)

(assert (=> b!1170605 (=> (not res!776998) (not e!665389))))

(assert (=> b!1170605 (= res!776998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170606 () Bool)

(declare-fun e!665382 () Bool)

(assert (=> b!1170606 (= e!665382 tp_is_empty!29429)))

(declare-fun b!1170607 () Bool)

(declare-fun res!777000 () Bool)

(assert (=> b!1170607 (=> (not res!777000) (not e!665389))))

(declare-datatypes ((List!25728 0))(
  ( (Nil!25725) (Cons!25724 (h!26933 (_ BitVec 64)) (t!37626 List!25728)) )
))
(declare-fun arrayNoDuplicates!0 (array!75636 (_ BitVec 32) List!25728) Bool)

(assert (=> b!1170607 (= res!777000 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25725))))

(declare-fun b!1170608 () Bool)

(declare-fun res!777002 () Bool)

(assert (=> b!1170608 (=> (not res!777002) (not e!665389))))

(assert (=> b!1170608 (= res!777002 (= (select (arr!36464 _keys!1208) i!673) k!934))))

(declare-fun b!1170609 () Bool)

(declare-fun res!777009 () Bool)

(assert (=> b!1170609 (=> (not res!777009) (not e!665389))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170609 (= res!777009 (validKeyInArray!0 k!934))))

(declare-fun b!1170610 () Bool)

(declare-fun res!776999 () Bool)

(assert (=> b!1170610 (=> (not res!776999) (not e!665389))))

(assert (=> b!1170610 (= res!776999 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37001 _keys!1208))))))

(declare-fun res!777001 () Bool)

(assert (=> start!99356 (=> (not res!777001) (not e!665389))))

(assert (=> start!99356 (= res!777001 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37001 _keys!1208))))))

(assert (=> start!99356 e!665389))

(assert (=> start!99356 tp_is_empty!29429))

(declare-fun array_inv!27748 (array!75636) Bool)

(assert (=> start!99356 (array_inv!27748 _keys!1208)))

(assert (=> start!99356 true))

(assert (=> start!99356 tp!87412))

(declare-fun e!665384 () Bool)

(declare-fun array_inv!27749 (array!75634) Bool)

(assert (=> start!99356 (and (array_inv!27749 _values!996) e!665384)))

(declare-fun b!1170599 () Bool)

(declare-fun e!665387 () Bool)

(assert (=> b!1170599 (= e!665385 e!665387)))

(declare-fun res!777006 () Bool)

(assert (=> b!1170599 (=> res!777006 e!665387)))

(assert (=> b!1170599 (= res!777006 (not (validKeyInArray!0 (select (arr!36464 _keys!1208) from!1455))))))

(declare-fun lt!527204 () ListLongMap!16937)

(declare-fun lt!527210 () ListLongMap!16937)

(assert (=> b!1170599 (= lt!527204 lt!527210)))

(declare-fun lt!527214 () ListLongMap!16937)

(declare-fun -!1503 (ListLongMap!16937 (_ BitVec 64)) ListLongMap!16937)

(assert (=> b!1170599 (= lt!527210 (-!1503 lt!527214 k!934))))

(assert (=> b!1170599 (= lt!527204 (getCurrentListMapNoExtraKeys!4916 lt!527205 lt!527208 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170599 (= lt!527214 (getCurrentListMapNoExtraKeys!4916 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527207 () Unit!38512)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!727 (array!75636 array!75634 (_ BitVec 32) (_ BitVec 32) V!44365 V!44365 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38512)

(assert (=> b!1170599 (= lt!527207 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!727 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45971 () Bool)

(declare-fun tp!87411 () Bool)

(assert (=> mapNonEmpty!45971 (= mapRes!45971 (and tp!87411 e!665382))))

(declare-fun mapKey!45971 () (_ BitVec 32))

(declare-fun mapRest!45971 () (Array (_ BitVec 32) ValueCell!14005))

(declare-fun mapValue!45971 () ValueCell!14005)

(assert (=> mapNonEmpty!45971 (= (arr!36463 _values!996) (store mapRest!45971 mapKey!45971 mapValue!45971))))

(declare-fun b!1170611 () Bool)

(assert (=> b!1170611 (= e!665384 (and e!665383 mapRes!45971))))

(declare-fun condMapEmpty!45971 () Bool)

(declare-fun mapDefault!45971 () ValueCell!14005)

