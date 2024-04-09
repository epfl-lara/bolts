; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101758 () Bool)

(assert start!101758)

(declare-fun b_free!26411 () Bool)

(declare-fun b_next!26411 () Bool)

(assert (=> start!101758 (= b_free!26411 (not b_next!26411))))

(declare-fun tp!92280 () Bool)

(declare-fun b_and!44093 () Bool)

(assert (=> start!101758 (= tp!92280 b_and!44093)))

(declare-fun e!695262 () Bool)

(declare-datatypes ((array!78988 0))(
  ( (array!78989 (arr!38117 (Array (_ BitVec 32) (_ BitVec 64))) (size!38654 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78988)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1224089 () Bool)

(declare-fun arrayContainsKey!0 (array!78988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224089 (= e!695262 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1224090 () Bool)

(declare-fun res!813474 () Bool)

(declare-fun e!695267 () Bool)

(assert (=> b!1224090 (=> (not res!813474) (not e!695267))))

(declare-fun lt!557276 () array!78988)

(declare-datatypes ((List!27078 0))(
  ( (Nil!27075) (Cons!27074 (h!28283 (_ BitVec 64)) (t!40476 List!27078)) )
))
(declare-fun arrayNoDuplicates!0 (array!78988 (_ BitVec 32) List!27078) Bool)

(assert (=> b!1224090 (= res!813474 (arrayNoDuplicates!0 lt!557276 #b00000000000000000000000000000000 Nil!27075))))

(declare-fun b!1224091 () Bool)

(declare-fun res!813475 () Bool)

(declare-fun e!695265 () Bool)

(assert (=> b!1224091 (=> (not res!813475) (not e!695265))))

(assert (=> b!1224091 (= res!813475 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38654 _keys!1208))))))

(declare-fun res!813470 () Bool)

(assert (=> start!101758 (=> (not res!813470) (not e!695265))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101758 (= res!813470 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38654 _keys!1208))))))

(assert (=> start!101758 e!695265))

(declare-fun tp_is_empty!31115 () Bool)

(assert (=> start!101758 tp_is_empty!31115))

(declare-fun array_inv!28914 (array!78988) Bool)

(assert (=> start!101758 (array_inv!28914 _keys!1208)))

(assert (=> start!101758 true))

(assert (=> start!101758 tp!92280))

(declare-datatypes ((V!46613 0))(
  ( (V!46614 (val!15614 Int)) )
))
(declare-datatypes ((ValueCell!14848 0))(
  ( (ValueCellFull!14848 (v!18277 V!46613)) (EmptyCell!14848) )
))
(declare-datatypes ((array!78990 0))(
  ( (array!78991 (arr!38118 (Array (_ BitVec 32) ValueCell!14848)) (size!38655 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78990)

(declare-fun e!695264 () Bool)

(declare-fun array_inv!28915 (array!78990) Bool)

(assert (=> start!101758 (and (array_inv!28915 _values!996) e!695264)))

(declare-fun b!1224092 () Bool)

(declare-fun e!695274 () Bool)

(assert (=> b!1224092 (= e!695274 tp_is_empty!31115)))

(declare-fun b!1224093 () Bool)

(declare-fun res!813467 () Bool)

(assert (=> b!1224093 (=> (not res!813467) (not e!695265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224093 (= res!813467 (validKeyInArray!0 k!934))))

(declare-fun b!1224094 () Bool)

(declare-datatypes ((Unit!40483 0))(
  ( (Unit!40484) )
))
(declare-fun e!695263 () Unit!40483)

(declare-fun Unit!40485 () Unit!40483)

(assert (=> b!1224094 (= e!695263 Unit!40485)))

(declare-fun b!1224095 () Bool)

(declare-fun res!813477 () Bool)

(assert (=> b!1224095 (=> (not res!813477) (not e!695265))))

(assert (=> b!1224095 (= res!813477 (= (select (arr!38117 _keys!1208) i!673) k!934))))

(declare-fun b!1224096 () Bool)

(declare-fun Unit!40486 () Unit!40483)

(assert (=> b!1224096 (= e!695263 Unit!40486)))

(declare-fun lt!557288 () Unit!40483)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78988 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40483)

(assert (=> b!1224096 (= lt!557288 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1224096 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557282 () Unit!40483)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78988 (_ BitVec 32) (_ BitVec 32)) Unit!40483)

(assert (=> b!1224096 (= lt!557282 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1224096 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27075)))

(declare-fun lt!557278 () Unit!40483)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78988 (_ BitVec 64) (_ BitVec 32) List!27078) Unit!40483)

(assert (=> b!1224096 (= lt!557278 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27075))))

(assert (=> b!1224096 false))

(declare-fun b!1224097 () Bool)

(declare-fun e!695271 () Bool)

(assert (=> b!1224097 (= e!695267 (not e!695271))))

(declare-fun res!813468 () Bool)

(assert (=> b!1224097 (=> res!813468 e!695271)))

(assert (=> b!1224097 (= res!813468 (bvsgt from!1455 i!673))))

(assert (=> b!1224097 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!557277 () Unit!40483)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78988 (_ BitVec 64) (_ BitVec 32)) Unit!40483)

(assert (=> b!1224097 (= lt!557277 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1224098 () Bool)

(declare-fun res!813461 () Bool)

(assert (=> b!1224098 (=> (not res!813461) (not e!695265))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224098 (= res!813461 (validMask!0 mask!1564))))

(declare-fun b!1224099 () Bool)

(declare-fun e!695273 () Bool)

(assert (=> b!1224099 (= e!695271 e!695273)))

(declare-fun res!813472 () Bool)

(assert (=> b!1224099 (=> res!813472 e!695273)))

(assert (=> b!1224099 (= res!813472 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46613)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20266 0))(
  ( (tuple2!20267 (_1!10143 (_ BitVec 64)) (_2!10143 V!46613)) )
))
(declare-datatypes ((List!27079 0))(
  ( (Nil!27076) (Cons!27075 (h!28284 tuple2!20266) (t!40477 List!27079)) )
))
(declare-datatypes ((ListLongMap!18247 0))(
  ( (ListLongMap!18248 (toList!9139 List!27079)) )
))
(declare-fun lt!557281 () ListLongMap!18247)

(declare-fun minValue!944 () V!46613)

(declare-fun lt!557280 () array!78990)

(declare-fun getCurrentListMapNoExtraKeys!5536 (array!78988 array!78990 (_ BitVec 32) (_ BitVec 32) V!46613 V!46613 (_ BitVec 32) Int) ListLongMap!18247)

(assert (=> b!1224099 (= lt!557281 (getCurrentListMapNoExtraKeys!5536 lt!557276 lt!557280 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!557289 () V!46613)

(assert (=> b!1224099 (= lt!557280 (array!78991 (store (arr!38118 _values!996) i!673 (ValueCellFull!14848 lt!557289)) (size!38655 _values!996)))))

(declare-fun dynLambda!3432 (Int (_ BitVec 64)) V!46613)

(assert (=> b!1224099 (= lt!557289 (dynLambda!3432 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!557284 () ListLongMap!18247)

(assert (=> b!1224099 (= lt!557284 (getCurrentListMapNoExtraKeys!5536 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!48571 () Bool)

(declare-fun mapRes!48571 () Bool)

(assert (=> mapIsEmpty!48571 mapRes!48571))

(declare-fun b!1224100 () Bool)

(declare-fun e!695272 () Bool)

(assert (=> b!1224100 (= e!695272 e!695262)))

(declare-fun res!813463 () Bool)

(assert (=> b!1224100 (=> res!813463 e!695262)))

(assert (=> b!1224100 (= res!813463 (not (= (select (arr!38117 _keys!1208) from!1455) k!934)))))

(declare-fun b!1224101 () Bool)

(declare-fun res!813473 () Bool)

(declare-fun e!695269 () Bool)

(assert (=> b!1224101 (=> (not res!813473) (not e!695269))))

(declare-fun lt!557286 () tuple2!20266)

(declare-fun lt!557283 () ListLongMap!18247)

(declare-fun +!4102 (ListLongMap!18247 tuple2!20266) ListLongMap!18247)

(assert (=> b!1224101 (= res!813473 (= lt!557284 (+!4102 lt!557283 lt!557286)))))

(declare-fun b!1224102 () Bool)

(declare-fun e!695266 () Bool)

(assert (=> b!1224102 (= e!695266 tp_is_empty!31115)))

(declare-fun b!1224103 () Bool)

(declare-fun e!695270 () Bool)

(assert (=> b!1224103 (= e!695270 (bvslt from!1455 (size!38654 _keys!1208)))))

(assert (=> b!1224103 e!695269))

(declare-fun res!813469 () Bool)

(assert (=> b!1224103 (=> (not res!813469) (not e!695269))))

(assert (=> b!1224103 (= res!813469 (not (= (select (arr!38117 _keys!1208) from!1455) k!934)))))

(declare-fun lt!557285 () Unit!40483)

(assert (=> b!1224103 (= lt!557285 e!695263)))

(declare-fun c!120381 () Bool)

(assert (=> b!1224103 (= c!120381 (= (select (arr!38117 _keys!1208) from!1455) k!934))))

(assert (=> b!1224103 e!695272))

(declare-fun res!813466 () Bool)

(assert (=> b!1224103 (=> (not res!813466) (not e!695272))))

(declare-fun lt!557287 () ListLongMap!18247)

(assert (=> b!1224103 (= res!813466 (= lt!557281 (+!4102 lt!557287 lt!557286)))))

(declare-fun get!19510 (ValueCell!14848 V!46613) V!46613)

(assert (=> b!1224103 (= lt!557286 (tuple2!20267 (select (arr!38117 _keys!1208) from!1455) (get!19510 (select (arr!38118 _values!996) from!1455) lt!557289)))))

(declare-fun b!1224104 () Bool)

(assert (=> b!1224104 (= e!695264 (and e!695266 mapRes!48571))))

(declare-fun condMapEmpty!48571 () Bool)

(declare-fun mapDefault!48571 () ValueCell!14848)

