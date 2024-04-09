; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101678 () Bool)

(assert start!101678)

(declare-fun b_free!26363 () Bool)

(declare-fun b_next!26363 () Bool)

(assert (=> start!101678 (= b_free!26363 (not b_next!26363))))

(declare-fun tp!92132 () Bool)

(declare-fun b_and!43979 () Bool)

(assert (=> start!101678 (= tp!92132 b_and!43979)))

(declare-fun b!1222404 () Bool)

(declare-fun e!694268 () Bool)

(declare-fun e!694265 () Bool)

(assert (=> b!1222404 (= e!694268 e!694265)))

(declare-fun res!812279 () Bool)

(assert (=> b!1222404 (=> res!812279 e!694265)))

(declare-datatypes ((array!78892 0))(
  ( (array!78893 (arr!38070 (Array (_ BitVec 32) (_ BitVec 64))) (size!38607 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78892)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1222404 (= res!812279 (not (= (select (arr!38070 _keys!1208) from!1455) k!934)))))

(declare-fun b!1222405 () Bool)

(declare-fun e!694269 () Bool)

(declare-fun e!694260 () Bool)

(assert (=> b!1222405 (= e!694269 e!694260)))

(declare-fun res!812283 () Bool)

(assert (=> b!1222405 (=> (not res!812283) (not e!694260))))

(declare-fun lt!556142 () array!78892)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78892 (_ BitVec 32)) Bool)

(assert (=> b!1222405 (= res!812283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556142 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1222405 (= lt!556142 (array!78893 (store (arr!38070 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38607 _keys!1208)))))

(declare-fun mapNonEmpty!48496 () Bool)

(declare-fun mapRes!48496 () Bool)

(declare-fun tp!92133 () Bool)

(declare-fun e!694264 () Bool)

(assert (=> mapNonEmpty!48496 (= mapRes!48496 (and tp!92133 e!694264))))

(declare-fun mapKey!48496 () (_ BitVec 32))

(declare-datatypes ((V!46549 0))(
  ( (V!46550 (val!15590 Int)) )
))
(declare-datatypes ((ValueCell!14824 0))(
  ( (ValueCellFull!14824 (v!18252 V!46549)) (EmptyCell!14824) )
))
(declare-fun mapRest!48496 () (Array (_ BitVec 32) ValueCell!14824))

(declare-fun mapValue!48496 () ValueCell!14824)

(declare-datatypes ((array!78894 0))(
  ( (array!78895 (arr!38071 (Array (_ BitVec 32) ValueCell!14824)) (size!38608 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78894)

(assert (=> mapNonEmpty!48496 (= (arr!38071 _values!996) (store mapRest!48496 mapKey!48496 mapValue!48496))))

(declare-fun b!1222406 () Bool)

(declare-fun res!812273 () Bool)

(assert (=> b!1222406 (=> (not res!812273) (not e!694269))))

(declare-datatypes ((List!27033 0))(
  ( (Nil!27030) (Cons!27029 (h!28238 (_ BitVec 64)) (t!40383 List!27033)) )
))
(declare-fun arrayNoDuplicates!0 (array!78892 (_ BitVec 32) List!27033) Bool)

(assert (=> b!1222406 (= res!812273 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27030))))

(declare-fun res!812272 () Bool)

(assert (=> start!101678 (=> (not res!812272) (not e!694269))))

(assert (=> start!101678 (= res!812272 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38607 _keys!1208))))))

(assert (=> start!101678 e!694269))

(declare-fun tp_is_empty!31067 () Bool)

(assert (=> start!101678 tp_is_empty!31067))

(declare-fun array_inv!28882 (array!78892) Bool)

(assert (=> start!101678 (array_inv!28882 _keys!1208)))

(assert (=> start!101678 true))

(assert (=> start!101678 tp!92132))

(declare-fun e!694263 () Bool)

(declare-fun array_inv!28883 (array!78894) Bool)

(assert (=> start!101678 (and (array_inv!28883 _values!996) e!694263)))

(declare-fun b!1222407 () Bool)

(declare-fun e!694266 () Bool)

(declare-fun e!694262 () Bool)

(assert (=> b!1222407 (= e!694266 e!694262)))

(declare-fun res!812280 () Bool)

(assert (=> b!1222407 (=> res!812280 e!694262)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222407 (= res!812280 (not (validKeyInArray!0 (select (arr!38070 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!20220 0))(
  ( (tuple2!20221 (_1!10120 (_ BitVec 64)) (_2!10120 V!46549)) )
))
(declare-datatypes ((List!27034 0))(
  ( (Nil!27031) (Cons!27030 (h!28239 tuple2!20220) (t!40384 List!27034)) )
))
(declare-datatypes ((ListLongMap!18201 0))(
  ( (ListLongMap!18202 (toList!9116 List!27034)) )
))
(declare-fun lt!556137 () ListLongMap!18201)

(declare-fun lt!556145 () ListLongMap!18201)

(assert (=> b!1222407 (= lt!556137 lt!556145)))

(declare-fun lt!556138 () ListLongMap!18201)

(declare-fun -!1959 (ListLongMap!18201 (_ BitVec 64)) ListLongMap!18201)

(assert (=> b!1222407 (= lt!556145 (-!1959 lt!556138 k!934))))

(declare-fun zeroValue!944 () V!46549)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!556144 () array!78894)

(declare-fun minValue!944 () V!46549)

(declare-fun getCurrentListMapNoExtraKeys!5514 (array!78892 array!78894 (_ BitVec 32) (_ BitVec 32) V!46549 V!46549 (_ BitVec 32) Int) ListLongMap!18201)

(assert (=> b!1222407 (= lt!556137 (getCurrentListMapNoExtraKeys!5514 lt!556142 lt!556144 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222407 (= lt!556138 (getCurrentListMapNoExtraKeys!5514 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40406 0))(
  ( (Unit!40407) )
))
(declare-fun lt!556148 () Unit!40406)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1161 (array!78892 array!78894 (_ BitVec 32) (_ BitVec 32) V!46549 V!46549 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40406)

(assert (=> b!1222407 (= lt!556148 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1161 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222408 () Bool)

(assert (=> b!1222408 (= e!694262 (bvslt from!1455 (size!38607 _keys!1208)))))

(declare-fun lt!556146 () Unit!40406)

(declare-fun e!694261 () Unit!40406)

(assert (=> b!1222408 (= lt!556146 e!694261)))

(declare-fun c!120270 () Bool)

(assert (=> b!1222408 (= c!120270 (= (select (arr!38070 _keys!1208) from!1455) k!934))))

(assert (=> b!1222408 e!694268))

(declare-fun res!812275 () Bool)

(assert (=> b!1222408 (=> (not res!812275) (not e!694268))))

(declare-fun lt!556143 () ListLongMap!18201)

(declare-fun lt!556147 () V!46549)

(declare-fun +!4082 (ListLongMap!18201 tuple2!20220) ListLongMap!18201)

(declare-fun get!19474 (ValueCell!14824 V!46549) V!46549)

(assert (=> b!1222408 (= res!812275 (= lt!556143 (+!4082 lt!556145 (tuple2!20221 (select (arr!38070 _keys!1208) from!1455) (get!19474 (select (arr!38071 _values!996) from!1455) lt!556147)))))))

(declare-fun b!1222409 () Bool)

(declare-fun res!812276 () Bool)

(assert (=> b!1222409 (=> (not res!812276) (not e!694269))))

(assert (=> b!1222409 (= res!812276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222410 () Bool)

(declare-fun e!694267 () Bool)

(assert (=> b!1222410 (= e!694267 tp_is_empty!31067)))

(declare-fun b!1222411 () Bool)

(declare-fun res!812271 () Bool)

(assert (=> b!1222411 (=> (not res!812271) (not e!694260))))

(assert (=> b!1222411 (= res!812271 (arrayNoDuplicates!0 lt!556142 #b00000000000000000000000000000000 Nil!27030))))

(declare-fun b!1222412 () Bool)

(declare-fun e!694271 () Bool)

(assert (=> b!1222412 (= e!694260 (not e!694271))))

(declare-fun res!812270 () Bool)

(assert (=> b!1222412 (=> res!812270 e!694271)))

(assert (=> b!1222412 (= res!812270 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222412 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!556136 () Unit!40406)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78892 (_ BitVec 64) (_ BitVec 32)) Unit!40406)

(assert (=> b!1222412 (= lt!556136 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222413 () Bool)

(assert (=> b!1222413 (= e!694263 (and e!694267 mapRes!48496))))

(declare-fun condMapEmpty!48496 () Bool)

(declare-fun mapDefault!48496 () ValueCell!14824)

