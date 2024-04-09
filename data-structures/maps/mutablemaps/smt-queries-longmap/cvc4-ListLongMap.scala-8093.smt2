; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99464 () Bool)

(assert start!99464)

(declare-fun b_free!25007 () Bool)

(declare-fun b_next!25007 () Bool)

(assert (=> start!99464 (= b_free!25007 (not b_next!25007))))

(declare-fun tp!87736 () Bool)

(declare-fun b_and!40895 () Bool)

(assert (=> start!99464 (= tp!87736 b_and!40895)))

(declare-fun b!1174097 () Bool)

(declare-fun e!667409 () Bool)

(declare-fun e!667413 () Bool)

(assert (=> b!1174097 (= e!667409 e!667413)))

(declare-fun res!779769 () Bool)

(assert (=> b!1174097 (=> (not res!779769) (not e!667413))))

(declare-datatypes ((array!75850 0))(
  ( (array!75851 (arr!36571 (Array (_ BitVec 32) (_ BitVec 64))) (size!37108 (_ BitVec 32))) )
))
(declare-fun lt!529374 () array!75850)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75850 (_ BitVec 32)) Bool)

(assert (=> b!1174097 (= res!779769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529374 mask!1564))))

(declare-fun _keys!1208 () array!75850)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1174097 (= lt!529374 (array!75851 (store (arr!36571 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37108 _keys!1208)))))

(declare-fun b!1174098 () Bool)

(declare-fun e!667416 () Bool)

(declare-fun tp_is_empty!29537 () Bool)

(assert (=> b!1174098 (= e!667416 tp_is_empty!29537)))

(declare-fun b!1174099 () Bool)

(declare-fun res!779774 () Bool)

(assert (=> b!1174099 (=> (not res!779774) (not e!667409))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174099 (= res!779774 (validKeyInArray!0 k!934))))

(declare-fun b!1174100 () Bool)

(declare-fun e!667411 () Bool)

(assert (=> b!1174100 (= e!667411 true)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1174100 (not (= (select (arr!36571 _keys!1208) from!1455) k!934))))

(declare-datatypes ((Unit!38637 0))(
  ( (Unit!38638) )
))
(declare-fun lt!529373 () Unit!38637)

(declare-fun e!667414 () Unit!38637)

(assert (=> b!1174100 (= lt!529373 e!667414)))

(declare-fun c!116582 () Bool)

(assert (=> b!1174100 (= c!116582 (= (select (arr!36571 _keys!1208) from!1455) k!934))))

(declare-fun e!667406 () Bool)

(assert (=> b!1174100 e!667406))

(declare-fun res!779767 () Bool)

(assert (=> b!1174100 (=> (not res!779767) (not e!667406))))

(declare-datatypes ((V!44509 0))(
  ( (V!44510 (val!14825 Int)) )
))
(declare-datatypes ((tuple2!19050 0))(
  ( (tuple2!19051 (_1!9535 (_ BitVec 64)) (_2!9535 V!44509)) )
))
(declare-datatypes ((List!25821 0))(
  ( (Nil!25818) (Cons!25817 (h!27026 tuple2!19050) (t!37827 List!25821)) )
))
(declare-datatypes ((ListLongMap!17031 0))(
  ( (ListLongMap!17032 (toList!8531 List!25821)) )
))
(declare-fun lt!529367 () ListLongMap!17031)

(declare-fun lt!529371 () ListLongMap!17031)

(declare-datatypes ((ValueCell!14059 0))(
  ( (ValueCellFull!14059 (v!17464 V!44509)) (EmptyCell!14059) )
))
(declare-datatypes ((array!75852 0))(
  ( (array!75853 (arr!36572 (Array (_ BitVec 32) ValueCell!14059)) (size!37109 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75852)

(declare-fun lt!529365 () V!44509)

(declare-fun +!3765 (ListLongMap!17031 tuple2!19050) ListLongMap!17031)

(declare-fun get!18700 (ValueCell!14059 V!44509) V!44509)

(assert (=> b!1174100 (= res!779767 (= lt!529367 (+!3765 lt!529371 (tuple2!19051 (select (arr!36571 _keys!1208) from!1455) (get!18700 (select (arr!36572 _values!996) from!1455) lt!529365)))))))

(declare-fun b!1174101 () Bool)

(declare-fun e!667408 () Bool)

(declare-fun arrayContainsKey!0 (array!75850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174101 (= e!667408 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1174102 () Bool)

(declare-fun Unit!38639 () Unit!38637)

(assert (=> b!1174102 (= e!667414 Unit!38639)))

(declare-fun lt!529369 () Unit!38637)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75850 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38637)

(assert (=> b!1174102 (= lt!529369 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1174102 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529364 () Unit!38637)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75850 (_ BitVec 32) (_ BitVec 32)) Unit!38637)

(assert (=> b!1174102 (= lt!529364 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25822 0))(
  ( (Nil!25819) (Cons!25818 (h!27027 (_ BitVec 64)) (t!37828 List!25822)) )
))
(declare-fun arrayNoDuplicates!0 (array!75850 (_ BitVec 32) List!25822) Bool)

(assert (=> b!1174102 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25819)))

(declare-fun lt!529362 () Unit!38637)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75850 (_ BitVec 64) (_ BitVec 32) List!25822) Unit!38637)

(assert (=> b!1174102 (= lt!529362 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25819))))

(assert (=> b!1174102 false))

(declare-fun b!1174103 () Bool)

(declare-fun e!667407 () Bool)

(assert (=> b!1174103 (= e!667413 (not e!667407))))

(declare-fun res!779772 () Bool)

(assert (=> b!1174103 (=> res!779772 e!667407)))

(assert (=> b!1174103 (= res!779772 (bvsgt from!1455 i!673))))

(assert (=> b!1174103 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!529366 () Unit!38637)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75850 (_ BitVec 64) (_ BitVec 32)) Unit!38637)

(assert (=> b!1174103 (= lt!529366 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1174104 () Bool)

(assert (=> b!1174104 (= e!667406 e!667408)))

(declare-fun res!779763 () Bool)

(assert (=> b!1174104 (=> res!779763 e!667408)))

(assert (=> b!1174104 (= res!779763 (not (= (select (arr!36571 _keys!1208) from!1455) k!934)))))

(declare-fun b!1174105 () Bool)

(declare-fun res!779768 () Bool)

(assert (=> b!1174105 (=> (not res!779768) (not e!667409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174105 (= res!779768 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46133 () Bool)

(declare-fun mapRes!46133 () Bool)

(assert (=> mapIsEmpty!46133 mapRes!46133))

(declare-fun b!1174106 () Bool)

(declare-fun Unit!38640 () Unit!38637)

(assert (=> b!1174106 (= e!667414 Unit!38640)))

(declare-fun b!1174108 () Bool)

(declare-fun res!779776 () Bool)

(assert (=> b!1174108 (=> (not res!779776) (not e!667409))))

(assert (=> b!1174108 (= res!779776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1174109 () Bool)

(declare-fun e!667410 () Bool)

(assert (=> b!1174109 (= e!667410 tp_is_empty!29537)))

(declare-fun b!1174110 () Bool)

(declare-fun res!779773 () Bool)

(assert (=> b!1174110 (=> (not res!779773) (not e!667409))))

(assert (=> b!1174110 (= res!779773 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25819))))

(declare-fun b!1174111 () Bool)

(declare-fun res!779775 () Bool)

(assert (=> b!1174111 (=> (not res!779775) (not e!667409))))

(assert (=> b!1174111 (= res!779775 (= (select (arr!36571 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46133 () Bool)

(declare-fun tp!87735 () Bool)

(assert (=> mapNonEmpty!46133 (= mapRes!46133 (and tp!87735 e!667416))))

(declare-fun mapRest!46133 () (Array (_ BitVec 32) ValueCell!14059))

(declare-fun mapKey!46133 () (_ BitVec 32))

(declare-fun mapValue!46133 () ValueCell!14059)

(assert (=> mapNonEmpty!46133 (= (arr!36572 _values!996) (store mapRest!46133 mapKey!46133 mapValue!46133))))

(declare-fun b!1174112 () Bool)

(declare-fun res!779764 () Bool)

(assert (=> b!1174112 (=> (not res!779764) (not e!667413))))

(assert (=> b!1174112 (= res!779764 (arrayNoDuplicates!0 lt!529374 #b00000000000000000000000000000000 Nil!25819))))

(declare-fun b!1174113 () Bool)

(declare-fun e!667417 () Bool)

(assert (=> b!1174113 (= e!667417 e!667411)))

(declare-fun res!779770 () Bool)

(assert (=> b!1174113 (=> res!779770 e!667411)))

(assert (=> b!1174113 (= res!779770 (not (validKeyInArray!0 (select (arr!36571 _keys!1208) from!1455))))))

(declare-fun lt!529363 () ListLongMap!17031)

(assert (=> b!1174113 (= lt!529363 lt!529371)))

(declare-fun lt!529368 () ListLongMap!17031)

(declare-fun -!1542 (ListLongMap!17031 (_ BitVec 64)) ListLongMap!17031)

(assert (=> b!1174113 (= lt!529371 (-!1542 lt!529368 k!934))))

(declare-fun zeroValue!944 () V!44509)

(declare-fun lt!529370 () array!75852)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44509)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4962 (array!75850 array!75852 (_ BitVec 32) (_ BitVec 32) V!44509 V!44509 (_ BitVec 32) Int) ListLongMap!17031)

(assert (=> b!1174113 (= lt!529363 (getCurrentListMapNoExtraKeys!4962 lt!529374 lt!529370 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1174113 (= lt!529368 (getCurrentListMapNoExtraKeys!4962 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529372 () Unit!38637)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!766 (array!75850 array!75852 (_ BitVec 32) (_ BitVec 32) V!44509 V!44509 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38637)

(assert (=> b!1174113 (= lt!529372 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!766 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1174114 () Bool)

(declare-fun res!779762 () Bool)

(assert (=> b!1174114 (=> (not res!779762) (not e!667409))))

(assert (=> b!1174114 (= res!779762 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37108 _keys!1208))))))

(declare-fun b!1174115 () Bool)

(assert (=> b!1174115 (= e!667407 e!667417)))

(declare-fun res!779766 () Bool)

(assert (=> b!1174115 (=> res!779766 e!667417)))

(assert (=> b!1174115 (= res!779766 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1174115 (= lt!529367 (getCurrentListMapNoExtraKeys!4962 lt!529374 lt!529370 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1174115 (= lt!529370 (array!75853 (store (arr!36572 _values!996) i!673 (ValueCellFull!14059 lt!529365)) (size!37109 _values!996)))))

(declare-fun dynLambda!2946 (Int (_ BitVec 64)) V!44509)

(assert (=> b!1174115 (= lt!529365 (dynLambda!2946 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529361 () ListLongMap!17031)

(assert (=> b!1174115 (= lt!529361 (getCurrentListMapNoExtraKeys!4962 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1174116 () Bool)

(declare-fun res!779771 () Bool)

(assert (=> b!1174116 (=> (not res!779771) (not e!667409))))

(assert (=> b!1174116 (= res!779771 (and (= (size!37109 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37108 _keys!1208) (size!37109 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!779765 () Bool)

(assert (=> start!99464 (=> (not res!779765) (not e!667409))))

(assert (=> start!99464 (= res!779765 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37108 _keys!1208))))))

(assert (=> start!99464 e!667409))

(assert (=> start!99464 tp_is_empty!29537))

(declare-fun array_inv!27824 (array!75850) Bool)

(assert (=> start!99464 (array_inv!27824 _keys!1208)))

(assert (=> start!99464 true))

(assert (=> start!99464 tp!87736))

(declare-fun e!667412 () Bool)

(declare-fun array_inv!27825 (array!75852) Bool)

(assert (=> start!99464 (and (array_inv!27825 _values!996) e!667412)))

(declare-fun b!1174107 () Bool)

(assert (=> b!1174107 (= e!667412 (and e!667410 mapRes!46133))))

(declare-fun condMapEmpty!46133 () Bool)

(declare-fun mapDefault!46133 () ValueCell!14059)

