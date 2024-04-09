; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99212 () Bool)

(assert start!99212)

(declare-fun b_free!24781 () Bool)

(declare-fun b_next!24781 () Bool)

(assert (=> start!99212 (= b_free!24781 (not b_next!24781))))

(declare-fun tp!87055 () Bool)

(declare-fun b_and!40425 () Bool)

(assert (=> start!99212 (= tp!87055 b_and!40425)))

(declare-fun b!1167343 () Bool)

(declare-fun res!774488 () Bool)

(declare-fun e!663533 () Bool)

(assert (=> b!1167343 (=> (not res!774488) (not e!663533))))

(declare-datatypes ((array!75400 0))(
  ( (array!75401 (arr!36347 (Array (_ BitVec 32) (_ BitVec 64))) (size!36884 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75400)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1167343 (= res!774488 (= (select (arr!36347 _keys!1208) i!673) k!934))))

(declare-fun b!1167344 () Bool)

(declare-fun res!774484 () Bool)

(assert (=> b!1167344 (=> (not res!774484) (not e!663533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167344 (= res!774484 (validKeyInArray!0 k!934))))

(declare-fun b!1167345 () Bool)

(declare-fun e!663536 () Bool)

(declare-fun tp_is_empty!29311 () Bool)

(assert (=> b!1167345 (= e!663536 tp_is_empty!29311)))

(declare-fun b!1167346 () Bool)

(declare-fun res!774480 () Bool)

(assert (=> b!1167346 (=> (not res!774480) (not e!663533))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44209 0))(
  ( (V!44210 (val!14712 Int)) )
))
(declare-datatypes ((ValueCell!13946 0))(
  ( (ValueCellFull!13946 (v!17350 V!44209)) (EmptyCell!13946) )
))
(declare-datatypes ((array!75402 0))(
  ( (array!75403 (arr!36348 (Array (_ BitVec 32) ValueCell!13946)) (size!36885 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75402)

(assert (=> b!1167346 (= res!774480 (and (= (size!36885 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36884 _keys!1208) (size!36885 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167347 () Bool)

(declare-fun e!663540 () Bool)

(declare-fun e!663534 () Bool)

(assert (=> b!1167347 (= e!663540 (not e!663534))))

(declare-fun res!774485 () Bool)

(assert (=> b!1167347 (=> res!774485 e!663534)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1167347 (= res!774485 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167347 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38416 0))(
  ( (Unit!38417) )
))
(declare-fun lt!525571 () Unit!38416)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75400 (_ BitVec 64) (_ BitVec 32)) Unit!38416)

(assert (=> b!1167347 (= lt!525571 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!45791 () Bool)

(declare-fun mapRes!45791 () Bool)

(assert (=> mapIsEmpty!45791 mapRes!45791))

(declare-fun b!1167348 () Bool)

(declare-fun e!663535 () Bool)

(assert (=> b!1167348 (= e!663534 e!663535)))

(declare-fun res!774481 () Bool)

(assert (=> b!1167348 (=> res!774481 e!663535)))

(assert (=> b!1167348 (= res!774481 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44209)

(declare-fun lt!525568 () array!75400)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18848 0))(
  ( (tuple2!18849 (_1!9434 (_ BitVec 64)) (_2!9434 V!44209)) )
))
(declare-datatypes ((List!25625 0))(
  ( (Nil!25622) (Cons!25621 (h!26830 tuple2!18848) (t!37405 List!25625)) )
))
(declare-datatypes ((ListLongMap!16829 0))(
  ( (ListLongMap!16830 (toList!8430 List!25625)) )
))
(declare-fun lt!525569 () ListLongMap!16829)

(declare-fun lt!525570 () array!75402)

(declare-fun minValue!944 () V!44209)

(declare-fun getCurrentListMapNoExtraKeys!4863 (array!75400 array!75402 (_ BitVec 32) (_ BitVec 32) V!44209 V!44209 (_ BitVec 32) Int) ListLongMap!16829)

(assert (=> b!1167348 (= lt!525569 (getCurrentListMapNoExtraKeys!4863 lt!525568 lt!525570 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2856 (Int (_ BitVec 64)) V!44209)

(assert (=> b!1167348 (= lt!525570 (array!75403 (store (arr!36348 _values!996) i!673 (ValueCellFull!13946 (dynLambda!2856 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36885 _values!996)))))

(declare-fun lt!525572 () ListLongMap!16829)

(assert (=> b!1167348 (= lt!525572 (getCurrentListMapNoExtraKeys!4863 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167349 () Bool)

(declare-fun res!774477 () Bool)

(assert (=> b!1167349 (=> (not res!774477) (not e!663533))))

(assert (=> b!1167349 (= res!774477 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36884 _keys!1208))))))

(declare-fun mapNonEmpty!45791 () Bool)

(declare-fun tp!87054 () Bool)

(assert (=> mapNonEmpty!45791 (= mapRes!45791 (and tp!87054 e!663536))))

(declare-fun mapValue!45791 () ValueCell!13946)

(declare-fun mapRest!45791 () (Array (_ BitVec 32) ValueCell!13946))

(declare-fun mapKey!45791 () (_ BitVec 32))

(assert (=> mapNonEmpty!45791 (= (arr!36348 _values!996) (store mapRest!45791 mapKey!45791 mapValue!45791))))

(declare-fun b!1167350 () Bool)

(declare-fun res!774487 () Bool)

(assert (=> b!1167350 (=> (not res!774487) (not e!663540))))

(declare-datatypes ((List!25626 0))(
  ( (Nil!25623) (Cons!25622 (h!26831 (_ BitVec 64)) (t!37406 List!25626)) )
))
(declare-fun arrayNoDuplicates!0 (array!75400 (_ BitVec 32) List!25626) Bool)

(assert (=> b!1167350 (= res!774487 (arrayNoDuplicates!0 lt!525568 #b00000000000000000000000000000000 Nil!25623))))

(declare-fun b!1167351 () Bool)

(declare-fun res!774482 () Bool)

(assert (=> b!1167351 (=> (not res!774482) (not e!663533))))

(assert (=> b!1167351 (= res!774482 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25623))))

(declare-fun b!1167352 () Bool)

(declare-fun e!663538 () Bool)

(assert (=> b!1167352 (= e!663538 tp_is_empty!29311)))

(declare-fun b!1167353 () Bool)

(declare-fun e!663537 () Bool)

(assert (=> b!1167353 (= e!663537 (and e!663538 mapRes!45791))))

(declare-fun condMapEmpty!45791 () Bool)

(declare-fun mapDefault!45791 () ValueCell!13946)

