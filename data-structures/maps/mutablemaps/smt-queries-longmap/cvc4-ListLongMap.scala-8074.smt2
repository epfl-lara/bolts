; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99350 () Bool)

(assert start!99350)

(declare-fun b_free!24893 () Bool)

(declare-fun b_next!24893 () Bool)

(assert (=> start!99350 (= b_free!24893 (not b_next!24893))))

(declare-fun tp!87393 () Bool)

(declare-fun b_and!40667 () Bool)

(assert (=> start!99350 (= tp!87393 b_and!40667)))

(declare-fun b!1170420 () Bool)

(declare-fun res!776854 () Bool)

(declare-fun e!665273 () Bool)

(assert (=> b!1170420 (=> (not res!776854) (not e!665273))))

(declare-datatypes ((array!75622 0))(
  ( (array!75623 (arr!36457 (Array (_ BitVec 32) (_ BitVec 64))) (size!36994 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75622)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44357 0))(
  ( (V!44358 (val!14768 Int)) )
))
(declare-datatypes ((ValueCell!14002 0))(
  ( (ValueCellFull!14002 (v!17407 V!44357)) (EmptyCell!14002) )
))
(declare-datatypes ((array!75624 0))(
  ( (array!75625 (arr!36458 (Array (_ BitVec 32) ValueCell!14002)) (size!36995 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75624)

(assert (=> b!1170420 (= res!776854 (and (= (size!36995 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36994 _keys!1208) (size!36995 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170421 () Bool)

(declare-fun e!665282 () Bool)

(declare-fun tp_is_empty!29423 () Bool)

(assert (=> b!1170421 (= e!665282 tp_is_empty!29423)))

(declare-fun b!1170422 () Bool)

(declare-fun res!776867 () Bool)

(assert (=> b!1170422 (=> (not res!776867) (not e!665273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75622 (_ BitVec 32)) Bool)

(assert (=> b!1170422 (= res!776867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170423 () Bool)

(declare-fun res!776869 () Bool)

(assert (=> b!1170423 (=> (not res!776869) (not e!665273))))

(declare-datatypes ((List!25723 0))(
  ( (Nil!25720) (Cons!25719 (h!26928 (_ BitVec 64)) (t!37615 List!25723)) )
))
(declare-fun arrayNoDuplicates!0 (array!75622 (_ BitVec 32) List!25723) Bool)

(assert (=> b!1170423 (= res!776869 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25720))))

(declare-fun b!1170424 () Bool)

(declare-fun e!665277 () Bool)

(assert (=> b!1170424 (= e!665277 true)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!75622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170424 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-datatypes ((Unit!38506 0))(
  ( (Unit!38507) )
))
(declare-fun lt!527114 () Unit!38506)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75622 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38506)

(assert (=> b!1170424 (= lt!527114 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170425 () Bool)

(declare-fun e!665283 () Bool)

(declare-fun e!665279 () Bool)

(assert (=> b!1170425 (= e!665283 e!665279)))

(declare-fun res!776855 () Bool)

(assert (=> b!1170425 (=> res!776855 e!665279)))

(assert (=> b!1170425 (= res!776855 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44357)

(declare-datatypes ((tuple2!18952 0))(
  ( (tuple2!18953 (_1!9486 (_ BitVec 64)) (_2!9486 V!44357)) )
))
(declare-datatypes ((List!25724 0))(
  ( (Nil!25721) (Cons!25720 (h!26929 tuple2!18952) (t!37616 List!25724)) )
))
(declare-datatypes ((ListLongMap!16933 0))(
  ( (ListLongMap!16934 (toList!8482 List!25724)) )
))
(declare-fun lt!527113 () ListLongMap!16933)

(declare-fun lt!527109 () array!75624)

(declare-fun lt!527115 () array!75622)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44357)

(declare-fun getCurrentListMapNoExtraKeys!4914 (array!75622 array!75624 (_ BitVec 32) (_ BitVec 32) V!44357 V!44357 (_ BitVec 32) Int) ListLongMap!16933)

(assert (=> b!1170425 (= lt!527113 (getCurrentListMapNoExtraKeys!4914 lt!527115 lt!527109 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527106 () V!44357)

(assert (=> b!1170425 (= lt!527109 (array!75625 (store (arr!36458 _values!996) i!673 (ValueCellFull!14002 lt!527106)) (size!36995 _values!996)))))

(declare-fun dynLambda!2903 (Int (_ BitVec 64)) V!44357)

(assert (=> b!1170425 (= lt!527106 (dynLambda!2903 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527110 () ListLongMap!16933)

(assert (=> b!1170425 (= lt!527110 (getCurrentListMapNoExtraKeys!4914 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!776862 () Bool)

(assert (=> start!99350 (=> (not res!776862) (not e!665273))))

(assert (=> start!99350 (= res!776862 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36994 _keys!1208))))))

(assert (=> start!99350 e!665273))

(assert (=> start!99350 tp_is_empty!29423))

(declare-fun array_inv!27744 (array!75622) Bool)

(assert (=> start!99350 (array_inv!27744 _keys!1208)))

(assert (=> start!99350 true))

(assert (=> start!99350 tp!87393))

(declare-fun e!665281 () Bool)

(declare-fun array_inv!27745 (array!75624) Bool)

(assert (=> start!99350 (and (array_inv!27745 _values!996) e!665281)))

(declare-fun b!1170426 () Bool)

(declare-fun e!665276 () Bool)

(assert (=> b!1170426 (= e!665273 e!665276)))

(declare-fun res!776859 () Bool)

(assert (=> b!1170426 (=> (not res!776859) (not e!665276))))

(assert (=> b!1170426 (= res!776859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527115 mask!1564))))

(assert (=> b!1170426 (= lt!527115 (array!75623 (store (arr!36457 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36994 _keys!1208)))))

(declare-fun b!1170427 () Bool)

(declare-fun e!665274 () Bool)

(assert (=> b!1170427 (= e!665274 tp_is_empty!29423)))

(declare-fun b!1170428 () Bool)

(declare-fun res!776860 () Bool)

(assert (=> b!1170428 (=> (not res!776860) (not e!665276))))

(assert (=> b!1170428 (= res!776860 (arrayNoDuplicates!0 lt!527115 #b00000000000000000000000000000000 Nil!25720))))

(declare-fun b!1170429 () Bool)

(declare-fun res!776863 () Bool)

(assert (=> b!1170429 (=> (not res!776863) (not e!665273))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170429 (= res!776863 (validKeyInArray!0 k!934))))

(declare-fun b!1170430 () Bool)

(declare-fun mapRes!45962 () Bool)

(assert (=> b!1170430 (= e!665281 (and e!665282 mapRes!45962))))

(declare-fun condMapEmpty!45962 () Bool)

(declare-fun mapDefault!45962 () ValueCell!14002)

