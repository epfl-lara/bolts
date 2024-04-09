; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99818 () Bool)

(assert start!99818)

(declare-fun b_free!25361 () Bool)

(declare-fun b_next!25361 () Bool)

(assert (=> start!99818 (= b_free!25361 (not b_next!25361))))

(declare-fun tp!88797 () Bool)

(declare-fun b_and!41603 () Bool)

(assert (=> start!99818 (= tp!88797 b_and!41603)))

(declare-datatypes ((array!76550 0))(
  ( (array!76551 (arr!36921 (Array (_ BitVec 32) (_ BitVec 64))) (size!37458 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76550)

(declare-fun b!1185413 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!674040 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185413 (= e!674040 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185414 () Bool)

(declare-datatypes ((Unit!39193 0))(
  ( (Unit!39194) )
))
(declare-fun e!674030 () Unit!39193)

(declare-fun Unit!39195 () Unit!39193)

(assert (=> b!1185414 (= e!674030 Unit!39195)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!537995 () Unit!39193)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76550 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39193)

(assert (=> b!1185414 (= lt!537995 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1185414 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!537990 () Unit!39193)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76550 (_ BitVec 32) (_ BitVec 32)) Unit!39193)

(assert (=> b!1185414 (= lt!537990 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26129 0))(
  ( (Nil!26126) (Cons!26125 (h!27334 (_ BitVec 64)) (t!38489 List!26129)) )
))
(declare-fun arrayNoDuplicates!0 (array!76550 (_ BitVec 32) List!26129) Bool)

(assert (=> b!1185414 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26126)))

(declare-fun lt!537987 () Unit!39193)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76550 (_ BitVec 64) (_ BitVec 32) List!26129) Unit!39193)

(assert (=> b!1185414 (= lt!537987 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26126))))

(assert (=> b!1185414 false))

(declare-fun b!1185415 () Bool)

(declare-fun res!788069 () Bool)

(declare-fun e!674031 () Bool)

(assert (=> b!1185415 (=> (not res!788069) (not e!674031))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44981 0))(
  ( (V!44982 (val!15002 Int)) )
))
(declare-datatypes ((ValueCell!14236 0))(
  ( (ValueCellFull!14236 (v!17641 V!44981)) (EmptyCell!14236) )
))
(declare-datatypes ((array!76552 0))(
  ( (array!76553 (arr!36922 (Array (_ BitVec 32) ValueCell!14236)) (size!37459 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76552)

(assert (=> b!1185415 (= res!788069 (and (= (size!37459 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37458 _keys!1208) (size!37459 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1185416 () Bool)

(declare-fun e!674034 () Bool)

(declare-fun e!674038 () Bool)

(assert (=> b!1185416 (= e!674034 e!674038)))

(declare-fun res!788073 () Bool)

(assert (=> b!1185416 (=> res!788073 e!674038)))

(assert (=> b!1185416 (= res!788073 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44981)

(declare-fun lt!537999 () array!76550)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!538002 () array!76552)

(declare-datatypes ((tuple2!19368 0))(
  ( (tuple2!19369 (_1!9694 (_ BitVec 64)) (_2!9694 V!44981)) )
))
(declare-datatypes ((List!26130 0))(
  ( (Nil!26127) (Cons!26126 (h!27335 tuple2!19368) (t!38490 List!26130)) )
))
(declare-datatypes ((ListLongMap!17349 0))(
  ( (ListLongMap!17350 (toList!8690 List!26130)) )
))
(declare-fun lt!538004 () ListLongMap!17349)

(declare-fun minValue!944 () V!44981)

(declare-fun getCurrentListMapNoExtraKeys!5109 (array!76550 array!76552 (_ BitVec 32) (_ BitVec 32) V!44981 V!44981 (_ BitVec 32) Int) ListLongMap!17349)

(assert (=> b!1185416 (= lt!538004 (getCurrentListMapNoExtraKeys!5109 lt!537999 lt!538002 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!537989 () V!44981)

(assert (=> b!1185416 (= lt!538002 (array!76553 (store (arr!36922 _values!996) i!673 (ValueCellFull!14236 lt!537989)) (size!37459 _values!996)))))

(declare-fun dynLambda!3069 (Int (_ BitVec 64)) V!44981)

(assert (=> b!1185416 (= lt!537989 (dynLambda!3069 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!537988 () ListLongMap!17349)

(assert (=> b!1185416 (= lt!537988 (getCurrentListMapNoExtraKeys!5109 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1185417 () Bool)

(declare-fun e!674036 () Bool)

(assert (=> b!1185417 (= e!674038 e!674036)))

(declare-fun res!788072 () Bool)

(assert (=> b!1185417 (=> res!788072 e!674036)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185417 (= res!788072 (not (validKeyInArray!0 (select (arr!36921 _keys!1208) from!1455))))))

(declare-fun lt!537998 () ListLongMap!17349)

(declare-fun lt!538000 () ListLongMap!17349)

(assert (=> b!1185417 (= lt!537998 lt!538000)))

(declare-fun lt!538005 () ListLongMap!17349)

(declare-fun -!1675 (ListLongMap!17349 (_ BitVec 64)) ListLongMap!17349)

(assert (=> b!1185417 (= lt!538000 (-!1675 lt!538005 k!934))))

(assert (=> b!1185417 (= lt!537998 (getCurrentListMapNoExtraKeys!5109 lt!537999 lt!538002 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1185417 (= lt!538005 (getCurrentListMapNoExtraKeys!5109 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!537997 () Unit!39193)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!890 (array!76550 array!76552 (_ BitVec 32) (_ BitVec 32) V!44981 V!44981 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39193)

(assert (=> b!1185417 (= lt!537997 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!890 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1185418 () Bool)

(declare-fun res!788077 () Bool)

(assert (=> b!1185418 (=> (not res!788077) (not e!674031))))

(assert (=> b!1185418 (= res!788077 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26126))))

(declare-fun b!1185419 () Bool)

(declare-fun e!674033 () Bool)

(assert (=> b!1185419 (= e!674033 (not e!674034))))

(declare-fun res!788075 () Bool)

(assert (=> b!1185419 (=> res!788075 e!674034)))

(assert (=> b!1185419 (= res!788075 (bvsgt from!1455 i!673))))

(assert (=> b!1185419 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!538001 () Unit!39193)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76550 (_ BitVec 64) (_ BitVec 32)) Unit!39193)

(assert (=> b!1185419 (= lt!538001 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185420 () Bool)

(declare-fun res!788079 () Bool)

(assert (=> b!1185420 (=> (not res!788079) (not e!674031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76550 (_ BitVec 32)) Bool)

(assert (=> b!1185420 (= res!788079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46664 () Bool)

(declare-fun mapRes!46664 () Bool)

(assert (=> mapIsEmpty!46664 mapRes!46664))

(declare-fun b!1185422 () Bool)

(declare-fun res!788080 () Bool)

(assert (=> b!1185422 (=> (not res!788080) (not e!674031))))

(assert (=> b!1185422 (= res!788080 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37458 _keys!1208))))))

(declare-fun b!1185423 () Bool)

(declare-fun res!788070 () Bool)

(assert (=> b!1185423 (=> (not res!788070) (not e!674031))))

(assert (=> b!1185423 (= res!788070 (validKeyInArray!0 k!934))))

(declare-fun b!1185424 () Bool)

(declare-fun e!674035 () Bool)

(declare-fun tp_is_empty!29891 () Bool)

(assert (=> b!1185424 (= e!674035 tp_is_empty!29891)))

(declare-fun b!1185425 () Bool)

(assert (=> b!1185425 (= e!674031 e!674033)))

(declare-fun res!788071 () Bool)

(assert (=> b!1185425 (=> (not res!788071) (not e!674033))))

(assert (=> b!1185425 (= res!788071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537999 mask!1564))))

(assert (=> b!1185425 (= lt!537999 (array!76551 (store (arr!36921 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37458 _keys!1208)))))

(declare-fun b!1185426 () Bool)

(declare-fun e!674037 () Bool)

(assert (=> b!1185426 (= e!674037 e!674040)))

(declare-fun res!788083 () Bool)

(assert (=> b!1185426 (=> res!788083 e!674040)))

(assert (=> b!1185426 (= res!788083 (not (= (select (arr!36921 _keys!1208) from!1455) k!934)))))

(declare-fun b!1185427 () Bool)

(assert (=> b!1185427 (= e!674036 true)))

(declare-fun lt!537991 () ListLongMap!17349)

(declare-fun lt!537993 () ListLongMap!17349)

(assert (=> b!1185427 (= (-!1675 lt!537991 k!934) lt!537993)))

(declare-fun lt!537992 () V!44981)

(declare-fun lt!537994 () Unit!39193)

(declare-fun addRemoveCommutativeForDiffKeys!186 (ListLongMap!17349 (_ BitVec 64) V!44981 (_ BitVec 64)) Unit!39193)

(assert (=> b!1185427 (= lt!537994 (addRemoveCommutativeForDiffKeys!186 lt!538005 (select (arr!36921 _keys!1208) from!1455) lt!537992 k!934))))

(assert (=> b!1185427 (and (= lt!537988 lt!537991) (= lt!538000 lt!537998))))

(declare-fun lt!538003 () tuple2!19368)

(declare-fun +!3896 (ListLongMap!17349 tuple2!19368) ListLongMap!17349)

(assert (=> b!1185427 (= lt!537991 (+!3896 lt!538005 lt!538003))))

(assert (=> b!1185427 (not (= (select (arr!36921 _keys!1208) from!1455) k!934))))

(declare-fun lt!537996 () Unit!39193)

(assert (=> b!1185427 (= lt!537996 e!674030)))

(declare-fun c!117113 () Bool)

(assert (=> b!1185427 (= c!117113 (= (select (arr!36921 _keys!1208) from!1455) k!934))))

(assert (=> b!1185427 e!674037))

(declare-fun res!788082 () Bool)

(assert (=> b!1185427 (=> (not res!788082) (not e!674037))))

(assert (=> b!1185427 (= res!788082 (= lt!538004 lt!537993))))

(assert (=> b!1185427 (= lt!537993 (+!3896 lt!538000 lt!538003))))

(assert (=> b!1185427 (= lt!538003 (tuple2!19369 (select (arr!36921 _keys!1208) from!1455) lt!537992))))

(declare-fun get!18938 (ValueCell!14236 V!44981) V!44981)

(assert (=> b!1185427 (= lt!537992 (get!18938 (select (arr!36922 _values!996) from!1455) lt!537989))))

(declare-fun b!1185428 () Bool)

(declare-fun res!788078 () Bool)

(assert (=> b!1185428 (=> (not res!788078) (not e!674033))))

(assert (=> b!1185428 (= res!788078 (arrayNoDuplicates!0 lt!537999 #b00000000000000000000000000000000 Nil!26126))))

(declare-fun b!1185429 () Bool)

(declare-fun res!788076 () Bool)

(assert (=> b!1185429 (=> (not res!788076) (not e!674031))))

(assert (=> b!1185429 (= res!788076 (= (select (arr!36921 _keys!1208) i!673) k!934))))

(declare-fun b!1185430 () Bool)

(declare-fun Unit!39196 () Unit!39193)

(assert (=> b!1185430 (= e!674030 Unit!39196)))

(declare-fun mapNonEmpty!46664 () Bool)

(declare-fun tp!88798 () Bool)

(declare-fun e!674039 () Bool)

(assert (=> mapNonEmpty!46664 (= mapRes!46664 (and tp!88798 e!674039))))

(declare-fun mapValue!46664 () ValueCell!14236)

(declare-fun mapRest!46664 () (Array (_ BitVec 32) ValueCell!14236))

(declare-fun mapKey!46664 () (_ BitVec 32))

(assert (=> mapNonEmpty!46664 (= (arr!36922 _values!996) (store mapRest!46664 mapKey!46664 mapValue!46664))))

(declare-fun b!1185431 () Bool)

(declare-fun e!674041 () Bool)

(assert (=> b!1185431 (= e!674041 (and e!674035 mapRes!46664))))

(declare-fun condMapEmpty!46664 () Bool)

(declare-fun mapDefault!46664 () ValueCell!14236)

