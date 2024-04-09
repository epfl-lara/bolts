; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101332 () Bool)

(assert start!101332)

(declare-fun b_free!26219 () Bool)

(declare-fun b_next!26219 () Bool)

(assert (=> start!101332 (= b_free!26219 (not b_next!26219))))

(declare-fun tp!91679 () Bool)

(declare-fun b_and!43565 () Bool)

(assert (=> start!101332 (= tp!91679 b_and!43565)))

(declare-fun b!1217104 () Bool)

(declare-fun res!808376 () Bool)

(declare-fun e!691023 () Bool)

(assert (=> b!1217104 (=> (not res!808376) (not e!691023))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217104 (= res!808376 (validKeyInArray!0 k!934))))

(declare-fun b!1217105 () Bool)

(declare-fun e!691016 () Bool)

(declare-fun e!691022 () Bool)

(assert (=> b!1217105 (= e!691016 e!691022)))

(declare-fun res!808384 () Bool)

(assert (=> b!1217105 (=> res!808384 e!691022)))

(declare-datatypes ((array!78592 0))(
  ( (array!78593 (arr!37927 (Array (_ BitVec 32) (_ BitVec 64))) (size!38464 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78592)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1217105 (= res!808384 (not (validKeyInArray!0 (select (arr!37927 _keys!1208) from!1455))))))

(declare-datatypes ((V!46357 0))(
  ( (V!46358 (val!15518 Int)) )
))
(declare-datatypes ((tuple2!20092 0))(
  ( (tuple2!20093 (_1!10056 (_ BitVec 64)) (_2!10056 V!46357)) )
))
(declare-datatypes ((List!26912 0))(
  ( (Nil!26909) (Cons!26908 (h!28117 tuple2!20092) (t!40118 List!26912)) )
))
(declare-datatypes ((ListLongMap!18073 0))(
  ( (ListLongMap!18074 (toList!9052 List!26912)) )
))
(declare-fun lt!553149 () ListLongMap!18073)

(declare-fun lt!553151 () ListLongMap!18073)

(assert (=> b!1217105 (= lt!553149 lt!553151)))

(declare-fun lt!553145 () ListLongMap!18073)

(declare-fun -!1914 (ListLongMap!18073 (_ BitVec 64)) ListLongMap!18073)

(assert (=> b!1217105 (= lt!553151 (-!1914 lt!553145 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!553148 () array!78592)

(declare-fun minValue!944 () V!46357)

(declare-fun zeroValue!944 () V!46357)

(declare-datatypes ((ValueCell!14752 0))(
  ( (ValueCellFull!14752 (v!18172 V!46357)) (EmptyCell!14752) )
))
(declare-datatypes ((array!78594 0))(
  ( (array!78595 (arr!37928 (Array (_ BitVec 32) ValueCell!14752)) (size!38465 (_ BitVec 32))) )
))
(declare-fun lt!553146 () array!78594)

(declare-fun getCurrentListMapNoExtraKeys!5457 (array!78592 array!78594 (_ BitVec 32) (_ BitVec 32) V!46357 V!46357 (_ BitVec 32) Int) ListLongMap!18073)

(assert (=> b!1217105 (= lt!553149 (getCurrentListMapNoExtraKeys!5457 lt!553148 lt!553146 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78594)

(assert (=> b!1217105 (= lt!553145 (getCurrentListMapNoExtraKeys!5457 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40288 0))(
  ( (Unit!40289) )
))
(declare-fun lt!553142 () Unit!40288)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1116 (array!78592 array!78594 (_ BitVec 32) (_ BitVec 32) V!46357 V!46357 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40288)

(assert (=> b!1217105 (= lt!553142 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1116 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!48259 () Bool)

(declare-fun mapRes!48259 () Bool)

(declare-fun tp!91680 () Bool)

(declare-fun e!691015 () Bool)

(assert (=> mapNonEmpty!48259 (= mapRes!48259 (and tp!91680 e!691015))))

(declare-fun mapKey!48259 () (_ BitVec 32))

(declare-fun mapValue!48259 () ValueCell!14752)

(declare-fun mapRest!48259 () (Array (_ BitVec 32) ValueCell!14752))

(assert (=> mapNonEmpty!48259 (= (arr!37928 _values!996) (store mapRest!48259 mapKey!48259 mapValue!48259))))

(declare-fun b!1217106 () Bool)

(declare-fun res!808381 () Bool)

(assert (=> b!1217106 (=> (not res!808381) (not e!691023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78592 (_ BitVec 32)) Bool)

(assert (=> b!1217106 (= res!808381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1217107 () Bool)

(declare-fun res!808374 () Bool)

(assert (=> b!1217107 (=> (not res!808374) (not e!691023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217107 (= res!808374 (validMask!0 mask!1564))))

(declare-fun b!1217108 () Bool)

(declare-fun e!691018 () Bool)

(declare-fun e!691021 () Bool)

(assert (=> b!1217108 (= e!691018 (not e!691021))))

(declare-fun res!808373 () Bool)

(assert (=> b!1217108 (=> res!808373 e!691021)))

(assert (=> b!1217108 (= res!808373 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217108 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!553150 () Unit!40288)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78592 (_ BitVec 64) (_ BitVec 32)) Unit!40288)

(assert (=> b!1217108 (= lt!553150 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!808380 () Bool)

(assert (=> start!101332 (=> (not res!808380) (not e!691023))))

(assert (=> start!101332 (= res!808380 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38464 _keys!1208))))))

(assert (=> start!101332 e!691023))

(declare-fun tp_is_empty!30923 () Bool)

(assert (=> start!101332 tp_is_empty!30923))

(declare-fun array_inv!28778 (array!78592) Bool)

(assert (=> start!101332 (array_inv!28778 _keys!1208)))

(assert (=> start!101332 true))

(assert (=> start!101332 tp!91679))

(declare-fun e!691019 () Bool)

(declare-fun array_inv!28779 (array!78594) Bool)

(assert (=> start!101332 (and (array_inv!28779 _values!996) e!691019)))

(declare-fun b!1217109 () Bool)

(assert (=> b!1217109 (= e!691023 e!691018)))

(declare-fun res!808378 () Bool)

(assert (=> b!1217109 (=> (not res!808378) (not e!691018))))

(assert (=> b!1217109 (= res!808378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553148 mask!1564))))

(assert (=> b!1217109 (= lt!553148 (array!78593 (store (arr!37927 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38464 _keys!1208)))))

(declare-fun b!1217110 () Bool)

(assert (=> b!1217110 (= e!691021 e!691016)))

(declare-fun res!808375 () Bool)

(assert (=> b!1217110 (=> res!808375 e!691016)))

(assert (=> b!1217110 (= res!808375 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!553144 () ListLongMap!18073)

(assert (=> b!1217110 (= lt!553144 (getCurrentListMapNoExtraKeys!5457 lt!553148 lt!553146 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!553143 () V!46357)

(assert (=> b!1217110 (= lt!553146 (array!78595 (store (arr!37928 _values!996) i!673 (ValueCellFull!14752 lt!553143)) (size!38465 _values!996)))))

(declare-fun dynLambda!3362 (Int (_ BitVec 64)) V!46357)

(assert (=> b!1217110 (= lt!553143 (dynLambda!3362 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553147 () ListLongMap!18073)

(assert (=> b!1217110 (= lt!553147 (getCurrentListMapNoExtraKeys!5457 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1217111 () Bool)

(declare-fun res!808377 () Bool)

(assert (=> b!1217111 (=> (not res!808377) (not e!691023))))

(assert (=> b!1217111 (= res!808377 (and (= (size!38465 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38464 _keys!1208) (size!38465 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1217112 () Bool)

(declare-fun e!691020 () Bool)

(assert (=> b!1217112 (= e!691020 tp_is_empty!30923)))

(declare-fun b!1217113 () Bool)

(declare-fun res!808379 () Bool)

(assert (=> b!1217113 (=> (not res!808379) (not e!691023))))

(declare-datatypes ((List!26913 0))(
  ( (Nil!26910) (Cons!26909 (h!28118 (_ BitVec 64)) (t!40119 List!26913)) )
))
(declare-fun arrayNoDuplicates!0 (array!78592 (_ BitVec 32) List!26913) Bool)

(assert (=> b!1217113 (= res!808379 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26910))))

(declare-fun b!1217114 () Bool)

(declare-fun res!808383 () Bool)

(assert (=> b!1217114 (=> (not res!808383) (not e!691023))))

(assert (=> b!1217114 (= res!808383 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38464 _keys!1208))))))

(declare-fun b!1217115 () Bool)

(declare-fun res!808382 () Bool)

(assert (=> b!1217115 (=> (not res!808382) (not e!691023))))

(assert (=> b!1217115 (= res!808382 (= (select (arr!37927 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!48259 () Bool)

(assert (=> mapIsEmpty!48259 mapRes!48259))

(declare-fun b!1217116 () Bool)

(assert (=> b!1217116 (= e!691015 tp_is_empty!30923)))

(declare-fun b!1217117 () Bool)

(declare-fun +!4035 (ListLongMap!18073 tuple2!20092) ListLongMap!18073)

(declare-fun get!19365 (ValueCell!14752 V!46357) V!46357)

(assert (=> b!1217117 (= e!691022 (= lt!553144 (+!4035 lt!553151 (tuple2!20093 (select (arr!37927 _keys!1208) from!1455) (get!19365 (select (arr!37928 _values!996) from!1455) lt!553143)))))))

(declare-fun b!1217118 () Bool)

(assert (=> b!1217118 (= e!691019 (and e!691020 mapRes!48259))))

(declare-fun condMapEmpty!48259 () Bool)

(declare-fun mapDefault!48259 () ValueCell!14752)

