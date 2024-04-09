; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99686 () Bool)

(assert start!99686)

(declare-fun b_free!25229 () Bool)

(declare-fun b_next!25229 () Bool)

(assert (=> start!99686 (= b_free!25229 (not b_next!25229))))

(declare-fun tp!88402 () Bool)

(declare-fun b_and!41339 () Bool)

(assert (=> start!99686 (= tp!88402 b_and!41339)))

(declare-fun b!1181301 () Bool)

(declare-datatypes ((Unit!38988 0))(
  ( (Unit!38989) )
))
(declare-fun e!671656 () Unit!38988)

(declare-fun Unit!38990 () Unit!38988)

(assert (=> b!1181301 (= e!671656 Unit!38990)))

(declare-fun res!785086 () Bool)

(declare-fun e!671654 () Bool)

(assert (=> start!99686 (=> (not res!785086) (not e!671654))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76286 0))(
  ( (array!76287 (arr!36789 (Array (_ BitVec 32) (_ BitVec 64))) (size!37326 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76286)

(assert (=> start!99686 (= res!785086 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37326 _keys!1208))))))

(assert (=> start!99686 e!671654))

(declare-fun tp_is_empty!29759 () Bool)

(assert (=> start!99686 tp_is_empty!29759))

(declare-fun array_inv!27970 (array!76286) Bool)

(assert (=> start!99686 (array_inv!27970 _keys!1208)))

(assert (=> start!99686 true))

(assert (=> start!99686 tp!88402))

(declare-datatypes ((V!44805 0))(
  ( (V!44806 (val!14936 Int)) )
))
(declare-datatypes ((ValueCell!14170 0))(
  ( (ValueCellFull!14170 (v!17575 V!44805)) (EmptyCell!14170) )
))
(declare-datatypes ((array!76288 0))(
  ( (array!76289 (arr!36790 (Array (_ BitVec 32) ValueCell!14170)) (size!37327 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76288)

(declare-fun e!671652 () Bool)

(declare-fun array_inv!27971 (array!76288) Bool)

(assert (=> start!99686 (and (array_inv!27971 _values!996) e!671652)))

(declare-fun b!1181302 () Bool)

(declare-fun e!671645 () Bool)

(assert (=> b!1181302 (= e!671654 e!671645)))

(declare-fun res!785087 () Bool)

(assert (=> b!1181302 (=> (not res!785087) (not e!671645))))

(declare-fun lt!534270 () array!76286)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76286 (_ BitVec 32)) Bool)

(assert (=> b!1181302 (= res!785087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534270 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1181302 (= lt!534270 (array!76287 (store (arr!36789 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37326 _keys!1208)))))

(declare-fun b!1181303 () Bool)

(declare-fun res!785081 () Bool)

(assert (=> b!1181303 (=> (not res!785081) (not e!671654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181303 (= res!785081 (validMask!0 mask!1564))))

(declare-fun b!1181304 () Bool)

(declare-fun res!785095 () Bool)

(assert (=> b!1181304 (=> (not res!785095) (not e!671654))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1181304 (= res!785095 (and (= (size!37327 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37326 _keys!1208) (size!37327 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1181305 () Bool)

(declare-fun res!785092 () Bool)

(assert (=> b!1181305 (=> (not res!785092) (not e!671645))))

(declare-datatypes ((List!26016 0))(
  ( (Nil!26013) (Cons!26012 (h!27221 (_ BitVec 64)) (t!38244 List!26016)) )
))
(declare-fun arrayNoDuplicates!0 (array!76286 (_ BitVec 32) List!26016) Bool)

(assert (=> b!1181305 (= res!785092 (arrayNoDuplicates!0 lt!534270 #b00000000000000000000000000000000 Nil!26013))))

(declare-fun b!1181306 () Bool)

(declare-fun e!671649 () Bool)

(assert (=> b!1181306 (= e!671649 tp_is_empty!29759)))

(declare-fun b!1181307 () Bool)

(declare-fun res!785079 () Bool)

(assert (=> b!1181307 (=> (not res!785079) (not e!671654))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1181307 (= res!785079 (= (select (arr!36789 _keys!1208) i!673) k!934))))

(declare-fun b!1181308 () Bool)

(declare-fun e!671646 () Bool)

(declare-fun e!671653 () Bool)

(assert (=> b!1181308 (= e!671646 e!671653)))

(declare-fun res!785093 () Bool)

(assert (=> b!1181308 (=> res!785093 e!671653)))

(assert (=> b!1181308 (= res!785093 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44805)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19256 0))(
  ( (tuple2!19257 (_1!9638 (_ BitVec 64)) (_2!9638 V!44805)) )
))
(declare-datatypes ((List!26017 0))(
  ( (Nil!26014) (Cons!26013 (h!27222 tuple2!19256) (t!38245 List!26017)) )
))
(declare-datatypes ((ListLongMap!17237 0))(
  ( (ListLongMap!17238 (toList!8634 List!26017)) )
))
(declare-fun lt!534276 () ListLongMap!17237)

(declare-fun minValue!944 () V!44805)

(declare-fun lt!534271 () array!76288)

(declare-fun getCurrentListMapNoExtraKeys!5059 (array!76286 array!76288 (_ BitVec 32) (_ BitVec 32) V!44805 V!44805 (_ BitVec 32) Int) ListLongMap!17237)

(assert (=> b!1181308 (= lt!534276 (getCurrentListMapNoExtraKeys!5059 lt!534270 lt!534271 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!534269 () V!44805)

(assert (=> b!1181308 (= lt!534271 (array!76289 (store (arr!36790 _values!996) i!673 (ValueCellFull!14170 lt!534269)) (size!37327 _values!996)))))

(declare-fun dynLambda!3027 (Int (_ BitVec 64)) V!44805)

(assert (=> b!1181308 (= lt!534269 (dynLambda!3027 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!534279 () ListLongMap!17237)

(assert (=> b!1181308 (= lt!534279 (getCurrentListMapNoExtraKeys!5059 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1181309 () Bool)

(assert (=> b!1181309 (= e!671645 (not e!671646))))

(declare-fun res!785094 () Bool)

(assert (=> b!1181309 (=> res!785094 e!671646)))

(assert (=> b!1181309 (= res!785094 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181309 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!534272 () Unit!38988)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76286 (_ BitVec 64) (_ BitVec 32)) Unit!38988)

(assert (=> b!1181309 (= lt!534272 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1181310 () Bool)

(declare-fun res!785085 () Bool)

(assert (=> b!1181310 (=> (not res!785085) (not e!671654))))

(assert (=> b!1181310 (= res!785085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1181311 () Bool)

(declare-fun res!785080 () Bool)

(assert (=> b!1181311 (=> (not res!785080) (not e!671654))))

(assert (=> b!1181311 (= res!785080 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26013))))

(declare-fun b!1181312 () Bool)

(declare-fun e!671650 () Bool)

(assert (=> b!1181312 (= e!671650 tp_is_empty!29759)))

(declare-fun mapIsEmpty!46466 () Bool)

(declare-fun mapRes!46466 () Bool)

(assert (=> mapIsEmpty!46466 mapRes!46466))

(declare-fun b!1181313 () Bool)

(declare-fun e!671647 () Bool)

(assert (=> b!1181313 (= e!671653 e!671647)))

(declare-fun res!785091 () Bool)

(assert (=> b!1181313 (=> res!785091 e!671647)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181313 (= res!785091 (not (validKeyInArray!0 (select (arr!36789 _keys!1208) from!1455))))))

(declare-fun lt!534274 () ListLongMap!17237)

(declare-fun lt!534273 () ListLongMap!17237)

(assert (=> b!1181313 (= lt!534274 lt!534273)))

(declare-fun lt!534266 () ListLongMap!17237)

(declare-fun -!1623 (ListLongMap!17237 (_ BitVec 64)) ListLongMap!17237)

(assert (=> b!1181313 (= lt!534273 (-!1623 lt!534266 k!934))))

(assert (=> b!1181313 (= lt!534274 (getCurrentListMapNoExtraKeys!5059 lt!534270 lt!534271 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1181313 (= lt!534266 (getCurrentListMapNoExtraKeys!5059 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!534277 () Unit!38988)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!847 (array!76286 array!76288 (_ BitVec 32) (_ BitVec 32) V!44805 V!44805 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38988)

(assert (=> b!1181313 (= lt!534277 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!847 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1181314 () Bool)

(declare-fun e!671648 () Bool)

(declare-fun e!671644 () Bool)

(assert (=> b!1181314 (= e!671648 e!671644)))

(declare-fun res!785084 () Bool)

(assert (=> b!1181314 (=> res!785084 e!671644)))

(assert (=> b!1181314 (= res!785084 (not (= (select (arr!36789 _keys!1208) from!1455) k!934)))))

(declare-fun b!1181315 () Bool)

(assert (=> b!1181315 (= e!671652 (and e!671649 mapRes!46466))))

(declare-fun condMapEmpty!46466 () Bool)

(declare-fun mapDefault!46466 () ValueCell!14170)

