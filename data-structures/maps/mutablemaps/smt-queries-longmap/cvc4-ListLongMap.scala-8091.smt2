; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99452 () Bool)

(assert start!99452)

(declare-fun b_free!24995 () Bool)

(declare-fun b_next!24995 () Bool)

(assert (=> start!99452 (= b_free!24995 (not b_next!24995))))

(declare-fun tp!87700 () Bool)

(declare-fun b_and!40871 () Bool)

(assert (=> start!99452 (= tp!87700 b_and!40871)))

(declare-fun b!1173725 () Bool)

(declare-fun res!779504 () Bool)

(declare-fun e!667194 () Bool)

(assert (=> b!1173725 (=> (not res!779504) (not e!667194))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173725 (= res!779504 (validMask!0 mask!1564))))

(declare-fun b!1173726 () Bool)

(declare-fun e!667196 () Bool)

(declare-fun e!667192 () Bool)

(assert (=> b!1173726 (= e!667196 e!667192)))

(declare-fun res!779503 () Bool)

(assert (=> b!1173726 (=> res!779503 e!667192)))

(declare-datatypes ((array!75826 0))(
  ( (array!75827 (arr!36559 (Array (_ BitVec 32) (_ BitVec 64))) (size!37096 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75826)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173726 (= res!779503 (not (validKeyInArray!0 (select (arr!36559 _keys!1208) from!1455))))))

(declare-datatypes ((V!44493 0))(
  ( (V!44494 (val!14819 Int)) )
))
(declare-datatypes ((tuple2!19040 0))(
  ( (tuple2!19041 (_1!9530 (_ BitVec 64)) (_2!9530 V!44493)) )
))
(declare-datatypes ((List!25813 0))(
  ( (Nil!25810) (Cons!25809 (h!27018 tuple2!19040) (t!37807 List!25813)) )
))
(declare-datatypes ((ListLongMap!17021 0))(
  ( (ListLongMap!17022 (toList!8526 List!25813)) )
))
(declare-fun lt!529112 () ListLongMap!17021)

(declare-fun lt!529122 () ListLongMap!17021)

(assert (=> b!1173726 (= lt!529112 lt!529122)))

(declare-fun lt!529119 () ListLongMap!17021)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1538 (ListLongMap!17021 (_ BitVec 64)) ListLongMap!17021)

(assert (=> b!1173726 (= lt!529122 (-!1538 lt!529119 k!934))))

(declare-fun zeroValue!944 () V!44493)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!529114 () array!75826)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14053 0))(
  ( (ValueCellFull!14053 (v!17458 V!44493)) (EmptyCell!14053) )
))
(declare-datatypes ((array!75828 0))(
  ( (array!75829 (arr!36560 (Array (_ BitVec 32) ValueCell!14053)) (size!37097 (_ BitVec 32))) )
))
(declare-fun lt!529116 () array!75828)

(declare-fun minValue!944 () V!44493)

(declare-fun getCurrentListMapNoExtraKeys!4958 (array!75826 array!75828 (_ BitVec 32) (_ BitVec 32) V!44493 V!44493 (_ BitVec 32) Int) ListLongMap!17021)

(assert (=> b!1173726 (= lt!529112 (getCurrentListMapNoExtraKeys!4958 lt!529114 lt!529116 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75828)

(assert (=> b!1173726 (= lt!529119 (getCurrentListMapNoExtraKeys!4958 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38623 0))(
  ( (Unit!38624) )
))
(declare-fun lt!529120 () Unit!38623)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!762 (array!75826 array!75828 (_ BitVec 32) (_ BitVec 32) V!44493 V!44493 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38623)

(assert (=> b!1173726 (= lt!529120 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!762 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1173727 () Bool)

(declare-fun res!779492 () Bool)

(assert (=> b!1173727 (=> (not res!779492) (not e!667194))))

(assert (=> b!1173727 (= res!779492 (= (select (arr!36559 _keys!1208) i!673) k!934))))

(declare-fun b!1173728 () Bool)

(declare-fun e!667197 () Bool)

(declare-fun e!667193 () Bool)

(assert (=> b!1173728 (= e!667197 (not e!667193))))

(declare-fun res!779498 () Bool)

(assert (=> b!1173728 (=> res!779498 e!667193)))

(assert (=> b!1173728 (= res!779498 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173728 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!529115 () Unit!38623)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75826 (_ BitVec 64) (_ BitVec 32)) Unit!38623)

(assert (=> b!1173728 (= lt!529115 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173729 () Bool)

(declare-fun e!667198 () Bool)

(assert (=> b!1173729 (= e!667198 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!46115 () Bool)

(declare-fun mapRes!46115 () Bool)

(assert (=> mapIsEmpty!46115 mapRes!46115))

(declare-fun b!1173730 () Bool)

(assert (=> b!1173730 (= e!667193 e!667196)))

(declare-fun res!779497 () Bool)

(assert (=> b!1173730 (=> res!779497 e!667196)))

(assert (=> b!1173730 (= res!779497 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!529113 () ListLongMap!17021)

(assert (=> b!1173730 (= lt!529113 (getCurrentListMapNoExtraKeys!4958 lt!529114 lt!529116 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!529117 () V!44493)

(assert (=> b!1173730 (= lt!529116 (array!75829 (store (arr!36560 _values!996) i!673 (ValueCellFull!14053 lt!529117)) (size!37097 _values!996)))))

(declare-fun dynLambda!2942 (Int (_ BitVec 64)) V!44493)

(assert (=> b!1173730 (= lt!529117 (dynLambda!2942 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529111 () ListLongMap!17021)

(assert (=> b!1173730 (= lt!529111 (getCurrentListMapNoExtraKeys!4958 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46115 () Bool)

(declare-fun tp!87699 () Bool)

(declare-fun e!667195 () Bool)

(assert (=> mapNonEmpty!46115 (= mapRes!46115 (and tp!87699 e!667195))))

(declare-fun mapKey!46115 () (_ BitVec 32))

(declare-fun mapValue!46115 () ValueCell!14053)

(declare-fun mapRest!46115 () (Array (_ BitVec 32) ValueCell!14053))

(assert (=> mapNonEmpty!46115 (= (arr!36560 _values!996) (store mapRest!46115 mapKey!46115 mapValue!46115))))

(declare-fun b!1173731 () Bool)

(declare-fun res!779502 () Bool)

(assert (=> b!1173731 (=> (not res!779502) (not e!667194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75826 (_ BitVec 32)) Bool)

(assert (=> b!1173731 (= res!779502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1173732 () Bool)

(declare-fun tp_is_empty!29525 () Bool)

(assert (=> b!1173732 (= e!667195 tp_is_empty!29525)))

(declare-fun b!1173734 () Bool)

(assert (=> b!1173734 (= e!667192 true)))

(assert (=> b!1173734 (not (= (select (arr!36559 _keys!1208) from!1455) k!934))))

(declare-fun lt!529110 () Unit!38623)

(declare-fun e!667190 () Unit!38623)

(assert (=> b!1173734 (= lt!529110 e!667190)))

(declare-fun c!116564 () Bool)

(assert (=> b!1173734 (= c!116564 (= (select (arr!36559 _keys!1208) from!1455) k!934))))

(declare-fun e!667191 () Bool)

(assert (=> b!1173734 e!667191))

(declare-fun res!779495 () Bool)

(assert (=> b!1173734 (=> (not res!779495) (not e!667191))))

(declare-fun +!3760 (ListLongMap!17021 tuple2!19040) ListLongMap!17021)

(declare-fun get!18691 (ValueCell!14053 V!44493) V!44493)

(assert (=> b!1173734 (= res!779495 (= lt!529113 (+!3760 lt!529122 (tuple2!19041 (select (arr!36559 _keys!1208) from!1455) (get!18691 (select (arr!36560 _values!996) from!1455) lt!529117)))))))

(declare-fun b!1173735 () Bool)

(assert (=> b!1173735 (= e!667194 e!667197)))

(declare-fun res!779494 () Bool)

(assert (=> b!1173735 (=> (not res!779494) (not e!667197))))

(assert (=> b!1173735 (= res!779494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529114 mask!1564))))

(assert (=> b!1173735 (= lt!529114 (array!75827 (store (arr!36559 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37096 _keys!1208)))))

(declare-fun b!1173736 () Bool)

(declare-fun e!667199 () Bool)

(declare-fun e!667201 () Bool)

(assert (=> b!1173736 (= e!667199 (and e!667201 mapRes!46115))))

(declare-fun condMapEmpty!46115 () Bool)

(declare-fun mapDefault!46115 () ValueCell!14053)

