; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99458 () Bool)

(assert start!99458)

(declare-fun b_free!25001 () Bool)

(declare-fun b_next!25001 () Bool)

(assert (=> start!99458 (= b_free!25001 (not b_next!25001))))

(declare-fun tp!87718 () Bool)

(declare-fun b_and!40883 () Bool)

(assert (=> start!99458 (= tp!87718 b_and!40883)))

(declare-fun mapIsEmpty!46124 () Bool)

(declare-fun mapRes!46124 () Bool)

(assert (=> mapIsEmpty!46124 mapRes!46124))

(declare-fun b!1173911 () Bool)

(declare-fun res!779629 () Bool)

(declare-fun e!667300 () Bool)

(assert (=> b!1173911 (=> (not res!779629) (not e!667300))))

(declare-datatypes ((array!75838 0))(
  ( (array!75839 (arr!36565 (Array (_ BitVec 32) (_ BitVec 64))) (size!37102 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75838)

(declare-datatypes ((List!25816 0))(
  ( (Nil!25813) (Cons!25812 (h!27021 (_ BitVec 64)) (t!37816 List!25816)) )
))
(declare-fun arrayNoDuplicates!0 (array!75838 (_ BitVec 32) List!25816) Bool)

(assert (=> b!1173911 (= res!779629 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25813))))

(declare-fun b!1173912 () Bool)

(declare-fun e!667299 () Bool)

(assert (=> b!1173912 (= e!667299 true)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1173912 (not (= (select (arr!36565 _keys!1208) from!1455) k!934))))

(declare-datatypes ((Unit!38629 0))(
  ( (Unit!38630) )
))
(declare-fun lt!529247 () Unit!38629)

(declare-fun e!667309 () Unit!38629)

(assert (=> b!1173912 (= lt!529247 e!667309)))

(declare-fun c!116573 () Bool)

(assert (=> b!1173912 (= c!116573 (= (select (arr!36565 _keys!1208) from!1455) k!934))))

(declare-fun e!667305 () Bool)

(assert (=> b!1173912 e!667305))

(declare-fun res!779637 () Bool)

(assert (=> b!1173912 (=> (not res!779637) (not e!667305))))

(declare-datatypes ((V!44501 0))(
  ( (V!44502 (val!14822 Int)) )
))
(declare-datatypes ((tuple2!19044 0))(
  ( (tuple2!19045 (_1!9532 (_ BitVec 64)) (_2!9532 V!44501)) )
))
(declare-datatypes ((List!25817 0))(
  ( (Nil!25814) (Cons!25813 (h!27022 tuple2!19044) (t!37817 List!25817)) )
))
(declare-datatypes ((ListLongMap!17025 0))(
  ( (ListLongMap!17026 (toList!8528 List!25817)) )
))
(declare-fun lt!529243 () ListLongMap!17025)

(declare-datatypes ((ValueCell!14056 0))(
  ( (ValueCellFull!14056 (v!17461 V!44501)) (EmptyCell!14056) )
))
(declare-datatypes ((array!75840 0))(
  ( (array!75841 (arr!36566 (Array (_ BitVec 32) ValueCell!14056)) (size!37103 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75840)

(declare-fun lt!529239 () ListLongMap!17025)

(declare-fun lt!529248 () V!44501)

(declare-fun +!3762 (ListLongMap!17025 tuple2!19044) ListLongMap!17025)

(declare-fun get!18695 (ValueCell!14056 V!44501) V!44501)

(assert (=> b!1173912 (= res!779637 (= lt!529243 (+!3762 lt!529239 (tuple2!19045 (select (arr!36565 _keys!1208) from!1455) (get!18695 (select (arr!36566 _values!996) from!1455) lt!529248)))))))

(declare-fun b!1173913 () Bool)

(declare-fun res!779636 () Bool)

(assert (=> b!1173913 (=> (not res!779636) (not e!667300))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1173913 (= res!779636 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37102 _keys!1208))))))

(declare-fun b!1173914 () Bool)

(declare-fun e!667307 () Bool)

(declare-fun tp_is_empty!29531 () Bool)

(assert (=> b!1173914 (= e!667307 tp_is_empty!29531)))

(declare-fun b!1173915 () Bool)

(declare-fun e!667302 () Bool)

(assert (=> b!1173915 (= e!667305 e!667302)))

(declare-fun res!779635 () Bool)

(assert (=> b!1173915 (=> res!779635 e!667302)))

(assert (=> b!1173915 (= res!779635 (not (= (select (arr!36565 _keys!1208) from!1455) k!934)))))

(declare-fun b!1173916 () Bool)

(declare-fun res!779630 () Bool)

(assert (=> b!1173916 (=> (not res!779630) (not e!667300))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173916 (= res!779630 (validMask!0 mask!1564))))

(declare-fun b!1173917 () Bool)

(declare-fun e!667303 () Bool)

(declare-fun e!667306 () Bool)

(assert (=> b!1173917 (= e!667303 e!667306)))

(declare-fun res!779639 () Bool)

(assert (=> b!1173917 (=> res!779639 e!667306)))

(assert (=> b!1173917 (= res!779639 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44501)

(declare-fun lt!529240 () array!75838)

(declare-fun lt!529245 () array!75840)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44501)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4960 (array!75838 array!75840 (_ BitVec 32) (_ BitVec 32) V!44501 V!44501 (_ BitVec 32) Int) ListLongMap!17025)

(assert (=> b!1173917 (= lt!529243 (getCurrentListMapNoExtraKeys!4960 lt!529240 lt!529245 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1173917 (= lt!529245 (array!75841 (store (arr!36566 _values!996) i!673 (ValueCellFull!14056 lt!529248)) (size!37103 _values!996)))))

(declare-fun dynLambda!2944 (Int (_ BitVec 64)) V!44501)

(assert (=> b!1173917 (= lt!529248 (dynLambda!2944 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529236 () ListLongMap!17025)

(assert (=> b!1173917 (= lt!529236 (getCurrentListMapNoExtraKeys!4960 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1173918 () Bool)

(declare-fun res!779632 () Bool)

(assert (=> b!1173918 (=> (not res!779632) (not e!667300))))

(assert (=> b!1173918 (= res!779632 (= (select (arr!36565 _keys!1208) i!673) k!934))))

(declare-fun b!1173919 () Bool)

(declare-fun res!779640 () Bool)

(declare-fun e!667304 () Bool)

(assert (=> b!1173919 (=> (not res!779640) (not e!667304))))

(assert (=> b!1173919 (= res!779640 (arrayNoDuplicates!0 lt!529240 #b00000000000000000000000000000000 Nil!25813))))

(declare-fun b!1173920 () Bool)

(assert (=> b!1173920 (= e!667306 e!667299)))

(declare-fun res!779628 () Bool)

(assert (=> b!1173920 (=> res!779628 e!667299)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173920 (= res!779628 (not (validKeyInArray!0 (select (arr!36565 _keys!1208) from!1455))))))

(declare-fun lt!529235 () ListLongMap!17025)

(assert (=> b!1173920 (= lt!529235 lt!529239)))

(declare-fun lt!529246 () ListLongMap!17025)

(declare-fun -!1540 (ListLongMap!17025 (_ BitVec 64)) ListLongMap!17025)

(assert (=> b!1173920 (= lt!529239 (-!1540 lt!529246 k!934))))

(assert (=> b!1173920 (= lt!529235 (getCurrentListMapNoExtraKeys!4960 lt!529240 lt!529245 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1173920 (= lt!529246 (getCurrentListMapNoExtraKeys!4960 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529238 () Unit!38629)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!764 (array!75838 array!75840 (_ BitVec 32) (_ BitVec 32) V!44501 V!44501 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38629)

(assert (=> b!1173920 (= lt!529238 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!764 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1173921 () Bool)

(assert (=> b!1173921 (= e!667304 (not e!667303))))

(declare-fun res!779638 () Bool)

(assert (=> b!1173921 (=> res!779638 e!667303)))

(assert (=> b!1173921 (= res!779638 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173921 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!529244 () Unit!38629)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75838 (_ BitVec 64) (_ BitVec 32)) Unit!38629)

(assert (=> b!1173921 (= lt!529244 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173922 () Bool)

(declare-fun res!779641 () Bool)

(assert (=> b!1173922 (=> (not res!779641) (not e!667300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75838 (_ BitVec 32)) Bool)

(assert (=> b!1173922 (= res!779641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1173923 () Bool)

(declare-fun e!667308 () Bool)

(assert (=> b!1173923 (= e!667308 tp_is_empty!29531)))

(declare-fun b!1173924 () Bool)

(declare-fun e!667298 () Bool)

(assert (=> b!1173924 (= e!667298 (and e!667308 mapRes!46124))))

(declare-fun condMapEmpty!46124 () Bool)

(declare-fun mapDefault!46124 () ValueCell!14056)

