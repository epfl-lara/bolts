; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99186 () Bool)

(assert start!99186)

(declare-fun b_free!24755 () Bool)

(declare-fun b_next!24755 () Bool)

(assert (=> start!99186 (= b_free!24755 (not b_next!24755))))

(declare-fun tp!86977 () Bool)

(declare-fun b_and!40373 () Bool)

(assert (=> start!99186 (= tp!86977 b_and!40373)))

(declare-fun b!1166732 () Bool)

(declare-fun res!774012 () Bool)

(declare-fun e!663221 () Bool)

(assert (=> b!1166732 (=> (not res!774012) (not e!663221))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166732 (= res!774012 (validMask!0 mask!1564))))

(declare-fun b!1166734 () Bool)

(declare-fun e!663225 () Bool)

(assert (=> b!1166734 (= e!663225 true)))

(declare-datatypes ((array!75348 0))(
  ( (array!75349 (arr!36321 (Array (_ BitVec 32) (_ BitVec 64))) (size!36858 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75348)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44173 0))(
  ( (V!44174 (val!14699 Int)) )
))
(declare-datatypes ((ValueCell!13933 0))(
  ( (ValueCellFull!13933 (v!17337 V!44173)) (EmptyCell!13933) )
))
(declare-datatypes ((array!75350 0))(
  ( (array!75351 (arr!36322 (Array (_ BitVec 32) ValueCell!13933)) (size!36859 (_ BitVec 32))) )
))
(declare-fun lt!525336 () array!75350)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525334 () array!75348)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _values!996 () array!75350)

(declare-fun minValue!944 () V!44173)

(declare-fun zeroValue!944 () V!44173)

(declare-datatypes ((tuple2!18828 0))(
  ( (tuple2!18829 (_1!9424 (_ BitVec 64)) (_2!9424 V!44173)) )
))
(declare-datatypes ((List!25604 0))(
  ( (Nil!25601) (Cons!25600 (h!26809 tuple2!18828) (t!37358 List!25604)) )
))
(declare-datatypes ((ListLongMap!16809 0))(
  ( (ListLongMap!16810 (toList!8420 List!25604)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4853 (array!75348 array!75350 (_ BitVec 32) (_ BitVec 32) V!44173 V!44173 (_ BitVec 32) Int) ListLongMap!16809)

(declare-fun -!1456 (ListLongMap!16809 (_ BitVec 64)) ListLongMap!16809)

(assert (=> b!1166734 (= (getCurrentListMapNoExtraKeys!4853 lt!525334 lt!525336 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1456 (getCurrentListMapNoExtraKeys!4853 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38394 0))(
  ( (Unit!38395) )
))
(declare-fun lt!525335 () Unit!38394)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!680 (array!75348 array!75350 (_ BitVec 32) (_ BitVec 32) V!44173 V!44173 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38394)

(assert (=> b!1166734 (= lt!525335 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!680 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166735 () Bool)

(declare-fun res!774014 () Bool)

(assert (=> b!1166735 (=> (not res!774014) (not e!663221))))

(assert (=> b!1166735 (= res!774014 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36858 _keys!1208))))))

(declare-fun b!1166736 () Bool)

(declare-fun e!663222 () Bool)

(declare-fun tp_is_empty!29285 () Bool)

(assert (=> b!1166736 (= e!663222 tp_is_empty!29285)))

(declare-fun mapIsEmpty!45752 () Bool)

(declare-fun mapRes!45752 () Bool)

(assert (=> mapIsEmpty!45752 mapRes!45752))

(declare-fun b!1166737 () Bool)

(declare-fun res!774019 () Bool)

(assert (=> b!1166737 (=> (not res!774019) (not e!663221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166737 (= res!774019 (validKeyInArray!0 k!934))))

(declare-fun b!1166738 () Bool)

(declare-fun res!774009 () Bool)

(assert (=> b!1166738 (=> (not res!774009) (not e!663221))))

(assert (=> b!1166738 (= res!774009 (= (select (arr!36321 _keys!1208) i!673) k!934))))

(declare-fun b!1166739 () Bool)

(declare-fun e!663223 () Bool)

(declare-fun e!663227 () Bool)

(assert (=> b!1166739 (= e!663223 (not e!663227))))

(declare-fun res!774017 () Bool)

(assert (=> b!1166739 (=> res!774017 e!663227)))

(assert (=> b!1166739 (= res!774017 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166739 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!525337 () Unit!38394)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75348 (_ BitVec 64) (_ BitVec 32)) Unit!38394)

(assert (=> b!1166739 (= lt!525337 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1166740 () Bool)

(declare-fun e!663228 () Bool)

(assert (=> b!1166740 (= e!663228 tp_is_empty!29285)))

(declare-fun b!1166741 () Bool)

(declare-fun res!774020 () Bool)

(assert (=> b!1166741 (=> (not res!774020) (not e!663221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75348 (_ BitVec 32)) Bool)

(assert (=> b!1166741 (= res!774020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!45752 () Bool)

(declare-fun tp!86976 () Bool)

(assert (=> mapNonEmpty!45752 (= mapRes!45752 (and tp!86976 e!663228))))

(declare-fun mapValue!45752 () ValueCell!13933)

(declare-fun mapRest!45752 () (Array (_ BitVec 32) ValueCell!13933))

(declare-fun mapKey!45752 () (_ BitVec 32))

(assert (=> mapNonEmpty!45752 (= (arr!36322 _values!996) (store mapRest!45752 mapKey!45752 mapValue!45752))))

(declare-fun res!774010 () Bool)

(assert (=> start!99186 (=> (not res!774010) (not e!663221))))

(assert (=> start!99186 (= res!774010 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36858 _keys!1208))))))

(assert (=> start!99186 e!663221))

(assert (=> start!99186 tp_is_empty!29285))

(declare-fun array_inv!27652 (array!75348) Bool)

(assert (=> start!99186 (array_inv!27652 _keys!1208)))

(assert (=> start!99186 true))

(assert (=> start!99186 tp!86977))

(declare-fun e!663226 () Bool)

(declare-fun array_inv!27653 (array!75350) Bool)

(assert (=> start!99186 (and (array_inv!27653 _values!996) e!663226)))

(declare-fun b!1166733 () Bool)

(assert (=> b!1166733 (= e!663221 e!663223)))

(declare-fun res!774015 () Bool)

(assert (=> b!1166733 (=> (not res!774015) (not e!663223))))

(assert (=> b!1166733 (= res!774015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525334 mask!1564))))

(assert (=> b!1166733 (= lt!525334 (array!75349 (store (arr!36321 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36858 _keys!1208)))))

(declare-fun b!1166742 () Bool)

(assert (=> b!1166742 (= e!663226 (and e!663222 mapRes!45752))))

(declare-fun condMapEmpty!45752 () Bool)

(declare-fun mapDefault!45752 () ValueCell!13933)

