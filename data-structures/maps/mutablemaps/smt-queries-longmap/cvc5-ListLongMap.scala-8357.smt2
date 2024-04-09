; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101760 () Bool)

(assert start!101760)

(declare-fun b_free!26413 () Bool)

(declare-fun b_next!26413 () Bool)

(assert (=> start!101760 (= b_free!26413 (not b_next!26413))))

(declare-fun tp!92286 () Bool)

(declare-fun b_and!44097 () Bool)

(assert (=> start!101760 (= tp!92286 b_and!44097)))

(declare-fun b!1224157 () Bool)

(declare-fun e!695310 () Bool)

(declare-fun e!695309 () Bool)

(assert (=> b!1224157 (= e!695310 e!695309)))

(declare-fun res!813512 () Bool)

(assert (=> b!1224157 (=> res!813512 e!695309)))

(declare-datatypes ((array!78992 0))(
  ( (array!78993 (arr!38119 (Array (_ BitVec 32) (_ BitVec 64))) (size!38656 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78992)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224157 (= res!813512 (not (validKeyInArray!0 (select (arr!38119 _keys!1208) from!1455))))))

(declare-datatypes ((V!46617 0))(
  ( (V!46618 (val!15615 Int)) )
))
(declare-datatypes ((tuple2!20268 0))(
  ( (tuple2!20269 (_1!10144 (_ BitVec 64)) (_2!10144 V!46617)) )
))
(declare-datatypes ((List!27080 0))(
  ( (Nil!27077) (Cons!27076 (h!28285 tuple2!20268) (t!40480 List!27080)) )
))
(declare-datatypes ((ListLongMap!18249 0))(
  ( (ListLongMap!18250 (toList!9140 List!27080)) )
))
(declare-fun lt!557332 () ListLongMap!18249)

(declare-fun lt!557331 () ListLongMap!18249)

(assert (=> b!1224157 (= lt!557332 lt!557331)))

(declare-fun lt!557330 () ListLongMap!18249)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1978 (ListLongMap!18249 (_ BitVec 64)) ListLongMap!18249)

(assert (=> b!1224157 (= lt!557331 (-!1978 lt!557330 k!934))))

(declare-fun zeroValue!944 () V!46617)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!557333 () array!78992)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14849 0))(
  ( (ValueCellFull!14849 (v!18278 V!46617)) (EmptyCell!14849) )
))
(declare-datatypes ((array!78994 0))(
  ( (array!78995 (arr!38120 (Array (_ BitVec 32) ValueCell!14849)) (size!38657 (_ BitVec 32))) )
))
(declare-fun lt!557324 () array!78994)

(declare-fun minValue!944 () V!46617)

(declare-fun getCurrentListMapNoExtraKeys!5537 (array!78992 array!78994 (_ BitVec 32) (_ BitVec 32) V!46617 V!46617 (_ BitVec 32) Int) ListLongMap!18249)

(assert (=> b!1224157 (= lt!557332 (getCurrentListMapNoExtraKeys!5537 lt!557333 lt!557324 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78994)

(assert (=> b!1224157 (= lt!557330 (getCurrentListMapNoExtraKeys!5537 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40487 0))(
  ( (Unit!40488) )
))
(declare-fun lt!557323 () Unit!40487)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1180 (array!78992 array!78994 (_ BitVec 32) (_ BitVec 32) V!46617 V!46617 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40487)

(assert (=> b!1224157 (= lt!557323 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1180 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1224158 () Bool)

(declare-fun res!813524 () Bool)

(declare-fun e!695301 () Bool)

(assert (=> b!1224158 (=> (not res!813524) (not e!695301))))

(declare-datatypes ((List!27081 0))(
  ( (Nil!27078) (Cons!27077 (h!28286 (_ BitVec 64)) (t!40481 List!27081)) )
))
(declare-fun arrayNoDuplicates!0 (array!78992 (_ BitVec 32) List!27081) Bool)

(assert (=> b!1224158 (= res!813524 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27078))))

(declare-fun b!1224159 () Bool)

(declare-fun res!813514 () Bool)

(assert (=> b!1224159 (=> (not res!813514) (not e!695301))))

(assert (=> b!1224159 (= res!813514 (and (= (size!38657 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38656 _keys!1208) (size!38657 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1224160 () Bool)

(declare-fun e!695313 () Unit!40487)

(declare-fun Unit!40489 () Unit!40487)

(assert (=> b!1224160 (= e!695313 Unit!40489)))

(declare-fun lt!557322 () Unit!40487)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78992 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40487)

(assert (=> b!1224160 (= lt!557322 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!78992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224160 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557329 () Unit!40487)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78992 (_ BitVec 32) (_ BitVec 32)) Unit!40487)

(assert (=> b!1224160 (= lt!557329 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1224160 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27078)))

(declare-fun lt!557334 () Unit!40487)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78992 (_ BitVec 64) (_ BitVec 32) List!27081) Unit!40487)

(assert (=> b!1224160 (= lt!557334 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27078))))

(assert (=> b!1224160 false))

(declare-fun b!1224161 () Bool)

(declare-fun res!813517 () Bool)

(assert (=> b!1224161 (=> (not res!813517) (not e!695301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224161 (= res!813517 (validMask!0 mask!1564))))

(declare-fun b!1224162 () Bool)

(declare-fun res!813522 () Bool)

(assert (=> b!1224162 (=> (not res!813522) (not e!695301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78992 (_ BitVec 32)) Bool)

(assert (=> b!1224162 (= res!813522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1224163 () Bool)

(declare-fun res!813523 () Bool)

(assert (=> b!1224163 (=> (not res!813523) (not e!695301))))

(assert (=> b!1224163 (= res!813523 (= (select (arr!38119 _keys!1208) i!673) k!934))))

(declare-fun res!813518 () Bool)

(assert (=> start!101760 (=> (not res!813518) (not e!695301))))

(assert (=> start!101760 (= res!813518 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38656 _keys!1208))))))

(assert (=> start!101760 e!695301))

(declare-fun tp_is_empty!31117 () Bool)

(assert (=> start!101760 tp_is_empty!31117))

(declare-fun array_inv!28916 (array!78992) Bool)

(assert (=> start!101760 (array_inv!28916 _keys!1208)))

(assert (=> start!101760 true))

(assert (=> start!101760 tp!92286))

(declare-fun e!695306 () Bool)

(declare-fun array_inv!28917 (array!78994) Bool)

(assert (=> start!101760 (and (array_inv!28917 _values!996) e!695306)))

(declare-fun b!1224164 () Bool)

(declare-fun e!695312 () Bool)

(assert (=> b!1224164 (= e!695301 e!695312)))

(declare-fun res!813513 () Bool)

(assert (=> b!1224164 (=> (not res!813513) (not e!695312))))

(assert (=> b!1224164 (= res!813513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557333 mask!1564))))

(assert (=> b!1224164 (= lt!557333 (array!78993 (store (arr!38119 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38656 _keys!1208)))))

(declare-fun b!1224165 () Bool)

(declare-fun e!695311 () Bool)

(assert (=> b!1224165 (= e!695311 (= lt!557331 lt!557332))))

(declare-fun b!1224166 () Bool)

(declare-fun Unit!40490 () Unit!40487)

(assert (=> b!1224166 (= e!695313 Unit!40490)))

(declare-fun b!1224167 () Bool)

(declare-fun e!695302 () Bool)

(declare-fun mapRes!48574 () Bool)

(assert (=> b!1224167 (= e!695306 (and e!695302 mapRes!48574))))

(declare-fun condMapEmpty!48574 () Bool)

(declare-fun mapDefault!48574 () ValueCell!14849)

