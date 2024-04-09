; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99472 () Bool)

(assert start!99472)

(declare-fun b_free!25015 () Bool)

(declare-fun b_next!25015 () Bool)

(assert (=> start!99472 (= b_free!25015 (not b_next!25015))))

(declare-fun tp!87760 () Bool)

(declare-fun b_and!40911 () Bool)

(assert (=> start!99472 (= tp!87760 b_and!40911)))

(declare-fun b!1174345 () Bool)

(declare-fun e!667554 () Bool)

(declare-fun e!667556 () Bool)

(assert (=> b!1174345 (= e!667554 e!667556)))

(declare-fun res!779950 () Bool)

(assert (=> b!1174345 (=> res!779950 e!667556)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1174345 (= res!779950 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44521 0))(
  ( (V!44522 (val!14829 Int)) )
))
(declare-fun zeroValue!944 () V!44521)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!75866 0))(
  ( (array!75867 (arr!36579 (Array (_ BitVec 32) (_ BitVec 64))) (size!37116 (_ BitVec 32))) )
))
(declare-fun lt!529532 () array!75866)

(declare-fun minValue!944 () V!44521)

(declare-datatypes ((ValueCell!14063 0))(
  ( (ValueCellFull!14063 (v!17468 V!44521)) (EmptyCell!14063) )
))
(declare-datatypes ((array!75868 0))(
  ( (array!75869 (arr!36580 (Array (_ BitVec 32) ValueCell!14063)) (size!37117 (_ BitVec 32))) )
))
(declare-fun lt!529530 () array!75868)

(declare-datatypes ((tuple2!19058 0))(
  ( (tuple2!19059 (_1!9539 (_ BitVec 64)) (_2!9539 V!44521)) )
))
(declare-datatypes ((List!25828 0))(
  ( (Nil!25825) (Cons!25824 (h!27033 tuple2!19058) (t!37842 List!25828)) )
))
(declare-datatypes ((ListLongMap!17039 0))(
  ( (ListLongMap!17040 (toList!8535 List!25828)) )
))
(declare-fun lt!529534 () ListLongMap!17039)

(declare-fun getCurrentListMapNoExtraKeys!4966 (array!75866 array!75868 (_ BitVec 32) (_ BitVec 32) V!44521 V!44521 (_ BitVec 32) Int) ListLongMap!17039)

(assert (=> b!1174345 (= lt!529534 (getCurrentListMapNoExtraKeys!4966 lt!529532 lt!529530 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!529535 () V!44521)

(declare-fun _values!996 () array!75868)

(assert (=> b!1174345 (= lt!529530 (array!75869 (store (arr!36580 _values!996) i!673 (ValueCellFull!14063 lt!529535)) (size!37117 _values!996)))))

(declare-fun dynLambda!2949 (Int (_ BitVec 64)) V!44521)

(assert (=> b!1174345 (= lt!529535 (dynLambda!2949 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75866)

(declare-fun lt!529539 () ListLongMap!17039)

(assert (=> b!1174345 (= lt!529539 (getCurrentListMapNoExtraKeys!4966 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1174346 () Bool)

(declare-fun res!779948 () Bool)

(declare-fun e!667551 () Bool)

(assert (=> b!1174346 (=> (not res!779948) (not e!667551))))

(declare-datatypes ((List!25829 0))(
  ( (Nil!25826) (Cons!25825 (h!27034 (_ BitVec 64)) (t!37843 List!25829)) )
))
(declare-fun arrayNoDuplicates!0 (array!75866 (_ BitVec 32) List!25829) Bool)

(assert (=> b!1174346 (= res!779948 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25826))))

(declare-fun mapNonEmpty!46145 () Bool)

(declare-fun mapRes!46145 () Bool)

(declare-fun tp!87759 () Bool)

(declare-fun e!667552 () Bool)

(assert (=> mapNonEmpty!46145 (= mapRes!46145 (and tp!87759 e!667552))))

(declare-fun mapValue!46145 () ValueCell!14063)

(declare-fun mapKey!46145 () (_ BitVec 32))

(declare-fun mapRest!46145 () (Array (_ BitVec 32) ValueCell!14063))

(assert (=> mapNonEmpty!46145 (= (arr!36580 _values!996) (store mapRest!46145 mapKey!46145 mapValue!46145))))

(declare-fun b!1174347 () Bool)

(declare-fun res!779951 () Bool)

(assert (=> b!1174347 (=> (not res!779951) (not e!667551))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1174347 (= res!779951 (= (select (arr!36579 _keys!1208) i!673) k!934))))

(declare-fun b!1174348 () Bool)

(declare-fun e!667557 () Bool)

(assert (=> b!1174348 (= e!667551 e!667557)))

(declare-fun res!779949 () Bool)

(assert (=> b!1174348 (=> (not res!779949) (not e!667557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75866 (_ BitVec 32)) Bool)

(assert (=> b!1174348 (= res!779949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529532 mask!1564))))

(assert (=> b!1174348 (= lt!529532 (array!75867 (store (arr!36579 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37116 _keys!1208)))))

(declare-fun b!1174349 () Bool)

(declare-datatypes ((Unit!38651 0))(
  ( (Unit!38652) )
))
(declare-fun e!667553 () Unit!38651)

(declare-fun Unit!38653 () Unit!38651)

(assert (=> b!1174349 (= e!667553 Unit!38653)))

(declare-fun mapIsEmpty!46145 () Bool)

(assert (=> mapIsEmpty!46145 mapRes!46145))

(declare-fun b!1174350 () Bool)

(declare-fun res!779942 () Bool)

(assert (=> b!1174350 (=> (not res!779942) (not e!667551))))

(assert (=> b!1174350 (= res!779942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1174352 () Bool)

(declare-fun Unit!38654 () Unit!38651)

(assert (=> b!1174352 (= e!667553 Unit!38654)))

(declare-fun lt!529536 () Unit!38651)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75866 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38651)

(assert (=> b!1174352 (= lt!529536 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174352 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529529 () Unit!38651)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75866 (_ BitVec 32) (_ BitVec 32)) Unit!38651)

(assert (=> b!1174352 (= lt!529529 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1174352 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25826)))

(declare-fun lt!529540 () Unit!38651)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75866 (_ BitVec 64) (_ BitVec 32) List!25829) Unit!38651)

(assert (=> b!1174352 (= lt!529540 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25826))))

(assert (=> b!1174352 false))

(declare-fun b!1174353 () Bool)

(declare-fun res!779946 () Bool)

(assert (=> b!1174353 (=> (not res!779946) (not e!667557))))

(assert (=> b!1174353 (= res!779946 (arrayNoDuplicates!0 lt!529532 #b00000000000000000000000000000000 Nil!25826))))

(declare-fun b!1174354 () Bool)

(declare-fun e!667550 () Bool)

(declare-fun e!667558 () Bool)

(assert (=> b!1174354 (= e!667550 e!667558)))

(declare-fun res!779944 () Bool)

(assert (=> b!1174354 (=> res!779944 e!667558)))

(assert (=> b!1174354 (= res!779944 (not (= (select (arr!36579 _keys!1208) from!1455) k!934)))))

(declare-fun b!1174355 () Bool)

(declare-fun e!667561 () Bool)

(declare-fun tp_is_empty!29545 () Bool)

(assert (=> b!1174355 (= e!667561 tp_is_empty!29545)))

(declare-fun b!1174356 () Bool)

(declare-fun e!667555 () Bool)

(assert (=> b!1174356 (= e!667555 (and e!667561 mapRes!46145))))

(declare-fun condMapEmpty!46145 () Bool)

(declare-fun mapDefault!46145 () ValueCell!14063)

