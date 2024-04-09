; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101766 () Bool)

(assert start!101766)

(declare-fun b_free!26419 () Bool)

(declare-fun b_next!26419 () Bool)

(assert (=> start!101766 (= b_free!26419 (not b_next!26419))))

(declare-fun tp!92304 () Bool)

(declare-fun b_and!44109 () Bool)

(assert (=> start!101766 (= tp!92304 b_and!44109)))

(declare-fun b!1224361 () Bool)

(declare-fun res!813667 () Bool)

(declare-fun e!695430 () Bool)

(assert (=> b!1224361 (=> (not res!813667) (not e!695430))))

(declare-datatypes ((array!79004 0))(
  ( (array!79005 (arr!38125 (Array (_ BitVec 32) (_ BitVec 64))) (size!38662 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79004)

(declare-datatypes ((List!27085 0))(
  ( (Nil!27082) (Cons!27081 (h!28290 (_ BitVec 64)) (t!40491 List!27085)) )
))
(declare-fun arrayNoDuplicates!0 (array!79004 (_ BitVec 32) List!27085) Bool)

(assert (=> b!1224361 (= res!813667 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27082))))

(declare-fun b!1224362 () Bool)

(declare-datatypes ((Unit!40497 0))(
  ( (Unit!40498) )
))
(declare-fun e!695423 () Unit!40497)

(declare-fun Unit!40499 () Unit!40497)

(assert (=> b!1224362 (= e!695423 Unit!40499)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!557468 () Unit!40497)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79004 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40497)

(assert (=> b!1224362 (= lt!557468 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!79004 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224362 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557469 () Unit!40497)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79004 (_ BitVec 32) (_ BitVec 32)) Unit!40497)

(assert (=> b!1224362 (= lt!557469 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1224362 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27082)))

(declare-fun lt!557457 () Unit!40497)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79004 (_ BitVec 64) (_ BitVec 32) List!27085) Unit!40497)

(assert (=> b!1224362 (= lt!557457 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27082))))

(assert (=> b!1224362 false))

(declare-fun b!1224363 () Bool)

(declare-fun e!695424 () Bool)

(assert (=> b!1224363 (= e!695424 true)))

(declare-fun e!695418 () Bool)

(assert (=> b!1224363 e!695418))

(declare-fun res!813665 () Bool)

(assert (=> b!1224363 (=> (not res!813665) (not e!695418))))

(assert (=> b!1224363 (= res!813665 (not (= (select (arr!38125 _keys!1208) from!1455) k!934)))))

(declare-fun lt!557458 () Unit!40497)

(assert (=> b!1224363 (= lt!557458 e!695423)))

(declare-fun c!120393 () Bool)

(assert (=> b!1224363 (= c!120393 (= (select (arr!38125 _keys!1208) from!1455) k!934))))

(declare-fun e!695426 () Bool)

(assert (=> b!1224363 e!695426))

(declare-fun res!813676 () Bool)

(assert (=> b!1224363 (=> (not res!813676) (not e!695426))))

(declare-datatypes ((V!46625 0))(
  ( (V!46626 (val!15618 Int)) )
))
(declare-datatypes ((tuple2!20274 0))(
  ( (tuple2!20275 (_1!10147 (_ BitVec 64)) (_2!10147 V!46625)) )
))
(declare-datatypes ((List!27086 0))(
  ( (Nil!27083) (Cons!27082 (h!28291 tuple2!20274) (t!40492 List!27086)) )
))
(declare-datatypes ((ListLongMap!18255 0))(
  ( (ListLongMap!18256 (toList!9143 List!27086)) )
))
(declare-fun lt!557462 () ListLongMap!18255)

(declare-fun lt!557464 () ListLongMap!18255)

(declare-fun lt!557459 () tuple2!20274)

(declare-fun +!4105 (ListLongMap!18255 tuple2!20274) ListLongMap!18255)

(assert (=> b!1224363 (= res!813676 (= lt!557464 (+!4105 lt!557462 lt!557459)))))

(declare-datatypes ((ValueCell!14852 0))(
  ( (ValueCellFull!14852 (v!18281 V!46625)) (EmptyCell!14852) )
))
(declare-datatypes ((array!79006 0))(
  ( (array!79007 (arr!38126 (Array (_ BitVec 32) ValueCell!14852)) (size!38663 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79006)

(declare-fun lt!557470 () V!46625)

(declare-fun get!19517 (ValueCell!14852 V!46625) V!46625)

(assert (=> b!1224363 (= lt!557459 (tuple2!20275 (select (arr!38125 _keys!1208) from!1455) (get!19517 (select (arr!38126 _values!996) from!1455) lt!557470)))))

(declare-fun b!1224364 () Bool)

(declare-fun res!813678 () Bool)

(assert (=> b!1224364 (=> (not res!813678) (not e!695430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224364 (= res!813678 (validKeyInArray!0 k!934))))

(declare-fun b!1224365 () Bool)

(declare-fun e!695421 () Bool)

(declare-fun e!695429 () Bool)

(assert (=> b!1224365 (= e!695421 (not e!695429))))

(declare-fun res!813668 () Bool)

(assert (=> b!1224365 (=> res!813668 e!695429)))

(assert (=> b!1224365 (= res!813668 (bvsgt from!1455 i!673))))

(assert (=> b!1224365 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!557467 () Unit!40497)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79004 (_ BitVec 64) (_ BitVec 32)) Unit!40497)

(assert (=> b!1224365 (= lt!557467 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1224366 () Bool)

(declare-fun Unit!40500 () Unit!40497)

(assert (=> b!1224366 (= e!695423 Unit!40500)))

(declare-fun mapNonEmpty!48583 () Bool)

(declare-fun mapRes!48583 () Bool)

(declare-fun tp!92303 () Bool)

(declare-fun e!695419 () Bool)

(assert (=> mapNonEmpty!48583 (= mapRes!48583 (and tp!92303 e!695419))))

(declare-fun mapRest!48583 () (Array (_ BitVec 32) ValueCell!14852))

(declare-fun mapKey!48583 () (_ BitVec 32))

(declare-fun mapValue!48583 () ValueCell!14852)

(assert (=> mapNonEmpty!48583 (= (arr!38126 _values!996) (store mapRest!48583 mapKey!48583 mapValue!48583))))

(declare-fun b!1224367 () Bool)

(declare-fun res!813674 () Bool)

(assert (=> b!1224367 (=> (not res!813674) (not e!695430))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1224367 (= res!813674 (and (= (size!38663 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38662 _keys!1208) (size!38663 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1224368 () Bool)

(declare-fun tp_is_empty!31123 () Bool)

(assert (=> b!1224368 (= e!695419 tp_is_empty!31123)))

(declare-fun b!1224370 () Bool)

(declare-fun e!695428 () Bool)

(assert (=> b!1224370 (= e!695426 e!695428)))

(declare-fun res!813677 () Bool)

(assert (=> b!1224370 (=> res!813677 e!695428)))

(assert (=> b!1224370 (= res!813677 (not (= (select (arr!38125 _keys!1208) from!1455) k!934)))))

(declare-fun b!1224371 () Bool)

(declare-fun e!695427 () Bool)

(assert (=> b!1224371 (= e!695427 tp_is_empty!31123)))

(declare-fun b!1224372 () Bool)

(assert (=> b!1224372 (= e!695430 e!695421)))

(declare-fun res!813669 () Bool)

(assert (=> b!1224372 (=> (not res!813669) (not e!695421))))

(declare-fun lt!557461 () array!79004)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79004 (_ BitVec 32)) Bool)

(assert (=> b!1224372 (= res!813669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557461 mask!1564))))

(assert (=> b!1224372 (= lt!557461 (array!79005 (store (arr!38125 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38662 _keys!1208)))))

(declare-fun b!1224373 () Bool)

(declare-fun e!695422 () Bool)

(assert (=> b!1224373 (= e!695429 e!695422)))

(declare-fun res!813681 () Bool)

(assert (=> b!1224373 (=> res!813681 e!695422)))

(assert (=> b!1224373 (= res!813681 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46625)

(declare-fun lt!557460 () array!79006)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46625)

(declare-fun getCurrentListMapNoExtraKeys!5540 (array!79004 array!79006 (_ BitVec 32) (_ BitVec 32) V!46625 V!46625 (_ BitVec 32) Int) ListLongMap!18255)

(assert (=> b!1224373 (= lt!557464 (getCurrentListMapNoExtraKeys!5540 lt!557461 lt!557460 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1224373 (= lt!557460 (array!79007 (store (arr!38126 _values!996) i!673 (ValueCellFull!14852 lt!557470)) (size!38663 _values!996)))))

(declare-fun dynLambda!3435 (Int (_ BitVec 64)) V!46625)

(assert (=> b!1224373 (= lt!557470 (dynLambda!3435 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!557456 () ListLongMap!18255)

(assert (=> b!1224373 (= lt!557456 (getCurrentListMapNoExtraKeys!5540 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1224374 () Bool)

(assert (=> b!1224374 (= e!695428 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1224375 () Bool)

(declare-fun e!695425 () Bool)

(assert (=> b!1224375 (= e!695425 (and e!695427 mapRes!48583))))

(declare-fun condMapEmpty!48583 () Bool)

(declare-fun mapDefault!48583 () ValueCell!14852)

