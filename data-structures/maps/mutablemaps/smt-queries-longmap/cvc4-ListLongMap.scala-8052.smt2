; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99192 () Bool)

(assert start!99192)

(declare-fun b_free!24761 () Bool)

(declare-fun b_next!24761 () Bool)

(assert (=> start!99192 (= b_free!24761 (not b_next!24761))))

(declare-fun tp!86995 () Bool)

(declare-fun b_and!40385 () Bool)

(assert (=> start!99192 (= tp!86995 b_and!40385)))

(declare-fun res!774117 () Bool)

(declare-fun e!663295 () Bool)

(assert (=> start!99192 (=> (not res!774117) (not e!663295))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75360 0))(
  ( (array!75361 (arr!36327 (Array (_ BitVec 32) (_ BitVec 64))) (size!36864 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75360)

(assert (=> start!99192 (= res!774117 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36864 _keys!1208))))))

(assert (=> start!99192 e!663295))

(declare-fun tp_is_empty!29291 () Bool)

(assert (=> start!99192 tp_is_empty!29291))

(declare-fun array_inv!27656 (array!75360) Bool)

(assert (=> start!99192 (array_inv!27656 _keys!1208)))

(assert (=> start!99192 true))

(assert (=> start!99192 tp!86995))

(declare-datatypes ((V!44181 0))(
  ( (V!44182 (val!14702 Int)) )
))
(declare-datatypes ((ValueCell!13936 0))(
  ( (ValueCellFull!13936 (v!17340 V!44181)) (EmptyCell!13936) )
))
(declare-datatypes ((array!75362 0))(
  ( (array!75363 (arr!36328 (Array (_ BitVec 32) ValueCell!13936)) (size!36865 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75362)

(declare-fun e!663298 () Bool)

(declare-fun array_inv!27657 (array!75362) Bool)

(assert (=> start!99192 (and (array_inv!27657 _values!996) e!663298)))

(declare-fun b!1166873 () Bool)

(declare-fun e!663300 () Bool)

(declare-fun e!663297 () Bool)

(assert (=> b!1166873 (= e!663300 (not e!663297))))

(declare-fun res!774127 () Bool)

(assert (=> b!1166873 (=> res!774127 e!663297)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1166873 (= res!774127 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166873 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38398 0))(
  ( (Unit!38399) )
))
(declare-fun lt!525388 () Unit!38398)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75360 (_ BitVec 64) (_ BitVec 32)) Unit!38398)

(assert (=> b!1166873 (= lt!525388 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1166874 () Bool)

(declare-fun e!663294 () Bool)

(assert (=> b!1166874 (= e!663294 tp_is_empty!29291)))

(declare-fun b!1166875 () Bool)

(declare-fun res!774121 () Bool)

(assert (=> b!1166875 (=> (not res!774121) (not e!663295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166875 (= res!774121 (validKeyInArray!0 k!934))))

(declare-fun b!1166876 () Bool)

(declare-fun res!774125 () Bool)

(assert (=> b!1166876 (=> (not res!774125) (not e!663295))))

(declare-datatypes ((List!25609 0))(
  ( (Nil!25606) (Cons!25605 (h!26814 (_ BitVec 64)) (t!37369 List!25609)) )
))
(declare-fun arrayNoDuplicates!0 (array!75360 (_ BitVec 32) List!25609) Bool)

(assert (=> b!1166876 (= res!774125 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25606))))

(declare-fun b!1166877 () Bool)

(declare-fun res!774123 () Bool)

(assert (=> b!1166877 (=> (not res!774123) (not e!663295))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166877 (= res!774123 (validMask!0 mask!1564))))

(declare-fun b!1166878 () Bool)

(declare-fun res!774128 () Bool)

(assert (=> b!1166878 (=> (not res!774128) (not e!663300))))

(declare-fun lt!525390 () array!75360)

(assert (=> b!1166878 (= res!774128 (arrayNoDuplicates!0 lt!525390 #b00000000000000000000000000000000 Nil!25606))))

(declare-fun b!1166879 () Bool)

(declare-fun res!774126 () Bool)

(assert (=> b!1166879 (=> (not res!774126) (not e!663295))))

(assert (=> b!1166879 (= res!774126 (= (select (arr!36327 _keys!1208) i!673) k!934))))

(declare-fun b!1166880 () Bool)

(declare-fun res!774122 () Bool)

(assert (=> b!1166880 (=> (not res!774122) (not e!663295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75360 (_ BitVec 32)) Bool)

(assert (=> b!1166880 (= res!774122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1166881 () Bool)

(declare-fun res!774124 () Bool)

(assert (=> b!1166881 (=> (not res!774124) (not e!663295))))

(assert (=> b!1166881 (= res!774124 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36864 _keys!1208))))))

(declare-fun b!1166882 () Bool)

(declare-fun e!663299 () Bool)

(assert (=> b!1166882 (= e!663297 e!663299)))

(declare-fun res!774118 () Bool)

(assert (=> b!1166882 (=> res!774118 e!663299)))

(assert (=> b!1166882 (= res!774118 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44181)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!525393 () array!75362)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18834 0))(
  ( (tuple2!18835 (_1!9427 (_ BitVec 64)) (_2!9427 V!44181)) )
))
(declare-datatypes ((List!25610 0))(
  ( (Nil!25607) (Cons!25606 (h!26815 tuple2!18834) (t!37370 List!25610)) )
))
(declare-datatypes ((ListLongMap!16815 0))(
  ( (ListLongMap!16816 (toList!8423 List!25610)) )
))
(declare-fun lt!525392 () ListLongMap!16815)

(declare-fun minValue!944 () V!44181)

(declare-fun getCurrentListMapNoExtraKeys!4856 (array!75360 array!75362 (_ BitVec 32) (_ BitVec 32) V!44181 V!44181 (_ BitVec 32) Int) ListLongMap!16815)

(assert (=> b!1166882 (= lt!525392 (getCurrentListMapNoExtraKeys!4856 lt!525390 lt!525393 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2850 (Int (_ BitVec 64)) V!44181)

(assert (=> b!1166882 (= lt!525393 (array!75363 (store (arr!36328 _values!996) i!673 (ValueCellFull!13936 (dynLambda!2850 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36865 _values!996)))))

(declare-fun lt!525391 () ListLongMap!16815)

(assert (=> b!1166882 (= lt!525391 (getCurrentListMapNoExtraKeys!4856 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!45761 () Bool)

(declare-fun mapRes!45761 () Bool)

(assert (=> mapIsEmpty!45761 mapRes!45761))

(declare-fun b!1166883 () Bool)

(declare-fun res!774119 () Bool)

(assert (=> b!1166883 (=> (not res!774119) (not e!663295))))

(assert (=> b!1166883 (= res!774119 (and (= (size!36865 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36864 _keys!1208) (size!36865 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!45761 () Bool)

(declare-fun tp!86994 () Bool)

(assert (=> mapNonEmpty!45761 (= mapRes!45761 (and tp!86994 e!663294))))

(declare-fun mapRest!45761 () (Array (_ BitVec 32) ValueCell!13936))

(declare-fun mapKey!45761 () (_ BitVec 32))

(declare-fun mapValue!45761 () ValueCell!13936)

(assert (=> mapNonEmpty!45761 (= (arr!36328 _values!996) (store mapRest!45761 mapKey!45761 mapValue!45761))))

(declare-fun b!1166884 () Bool)

(declare-fun e!663296 () Bool)

(assert (=> b!1166884 (= e!663296 tp_is_empty!29291)))

(declare-fun b!1166885 () Bool)

(assert (=> b!1166885 (= e!663299 true)))

(declare-fun -!1458 (ListLongMap!16815 (_ BitVec 64)) ListLongMap!16815)

(assert (=> b!1166885 (= (getCurrentListMapNoExtraKeys!4856 lt!525390 lt!525393 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1458 (getCurrentListMapNoExtraKeys!4856 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!525389 () Unit!38398)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!682 (array!75360 array!75362 (_ BitVec 32) (_ BitVec 32) V!44181 V!44181 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38398)

(assert (=> b!1166885 (= lt!525389 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!682 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166886 () Bool)

(assert (=> b!1166886 (= e!663298 (and e!663296 mapRes!45761))))

(declare-fun condMapEmpty!45761 () Bool)

(declare-fun mapDefault!45761 () ValueCell!13936)

