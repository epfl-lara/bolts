; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101402 () Bool)

(assert start!101402)

(declare-fun b_free!26237 () Bool)

(declare-fun b_next!26237 () Bool)

(assert (=> start!101402 (= b_free!26237 (not b_next!26237))))

(declare-fun tp!91740 () Bool)

(declare-fun b_and!43637 () Bool)

(assert (=> start!101402 (= tp!91740 b_and!43637)))

(declare-fun b!1217867 () Bool)

(declare-fun e!691475 () Bool)

(declare-fun e!691481 () Bool)

(assert (=> b!1217867 (= e!691475 e!691481)))

(declare-fun res!808874 () Bool)

(assert (=> b!1217867 (=> res!808874 e!691481)))

(declare-datatypes ((array!78632 0))(
  ( (array!78633 (arr!37945 (Array (_ BitVec 32) (_ BitVec 64))) (size!38482 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78632)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217867 (= res!808874 (not (validKeyInArray!0 (select (arr!37945 _keys!1208) from!1455))))))

(declare-datatypes ((V!46381 0))(
  ( (V!46382 (val!15527 Int)) )
))
(declare-datatypes ((tuple2!20106 0))(
  ( (tuple2!20107 (_1!10063 (_ BitVec 64)) (_2!10063 V!46381)) )
))
(declare-datatypes ((List!26927 0))(
  ( (Nil!26924) (Cons!26923 (h!28132 tuple2!20106) (t!40151 List!26927)) )
))
(declare-datatypes ((ListLongMap!18087 0))(
  ( (ListLongMap!18088 (toList!9059 List!26927)) )
))
(declare-fun lt!553562 () ListLongMap!18087)

(declare-fun lt!553564 () ListLongMap!18087)

(assert (=> b!1217867 (= lt!553562 lt!553564)))

(declare-fun lt!553569 () ListLongMap!18087)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1920 (ListLongMap!18087 (_ BitVec 64)) ListLongMap!18087)

(assert (=> b!1217867 (= lt!553564 (-!1920 lt!553569 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!553570 () array!78632)

(declare-fun minValue!944 () V!46381)

(declare-fun zeroValue!944 () V!46381)

(declare-datatypes ((ValueCell!14761 0))(
  ( (ValueCellFull!14761 (v!18183 V!46381)) (EmptyCell!14761) )
))
(declare-datatypes ((array!78634 0))(
  ( (array!78635 (arr!37946 (Array (_ BitVec 32) ValueCell!14761)) (size!38483 (_ BitVec 32))) )
))
(declare-fun lt!553565 () array!78634)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5463 (array!78632 array!78634 (_ BitVec 32) (_ BitVec 32) V!46381 V!46381 (_ BitVec 32) Int) ListLongMap!18087)

(assert (=> b!1217867 (= lt!553562 (getCurrentListMapNoExtraKeys!5463 lt!553570 lt!553565 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78634)

(assert (=> b!1217867 (= lt!553569 (getCurrentListMapNoExtraKeys!5463 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40304 0))(
  ( (Unit!40305) )
))
(declare-fun lt!553567 () Unit!40304)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1122 (array!78632 array!78634 (_ BitVec 32) (_ BitVec 32) V!46381 V!46381 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40304)

(assert (=> b!1217867 (= lt!553567 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1122 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1217868 () Bool)

(declare-fun e!691482 () Bool)

(declare-fun e!691474 () Bool)

(assert (=> b!1217868 (= e!691482 (not e!691474))))

(declare-fun res!808878 () Bool)

(assert (=> b!1217868 (=> res!808878 e!691474)))

(assert (=> b!1217868 (= res!808878 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217868 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!553568 () Unit!40304)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78632 (_ BitVec 64) (_ BitVec 32)) Unit!40304)

(assert (=> b!1217868 (= lt!553568 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1217869 () Bool)

(declare-fun res!808875 () Bool)

(declare-fun e!691483 () Bool)

(assert (=> b!1217869 (=> (not res!808875) (not e!691483))))

(assert (=> b!1217869 (= res!808875 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38482 _keys!1208))))))

(declare-fun b!1217870 () Bool)

(assert (=> b!1217870 (= e!691481 true)))

(declare-fun e!691473 () Bool)

(assert (=> b!1217870 e!691473))

(declare-fun res!808877 () Bool)

(assert (=> b!1217870 (=> (not res!808877) (not e!691473))))

(declare-fun lt!553571 () ListLongMap!18087)

(declare-fun lt!553563 () V!46381)

(declare-fun +!4040 (ListLongMap!18087 tuple2!20106) ListLongMap!18087)

(declare-fun get!19380 (ValueCell!14761 V!46381) V!46381)

(assert (=> b!1217870 (= res!808877 (= lt!553571 (+!4040 lt!553564 (tuple2!20107 (select (arr!37945 _keys!1208) from!1455) (get!19380 (select (arr!37946 _values!996) from!1455) lt!553563)))))))

(declare-fun mapNonEmpty!48292 () Bool)

(declare-fun mapRes!48292 () Bool)

(declare-fun tp!91739 () Bool)

(declare-fun e!691479 () Bool)

(assert (=> mapNonEmpty!48292 (= mapRes!48292 (and tp!91739 e!691479))))

(declare-fun mapValue!48292 () ValueCell!14761)

(declare-fun mapRest!48292 () (Array (_ BitVec 32) ValueCell!14761))

(declare-fun mapKey!48292 () (_ BitVec 32))

(assert (=> mapNonEmpty!48292 (= (arr!37946 _values!996) (store mapRest!48292 mapKey!48292 mapValue!48292))))

(declare-fun b!1217871 () Bool)

(declare-fun res!808873 () Bool)

(assert (=> b!1217871 (=> (not res!808873) (not e!691482))))

(declare-datatypes ((List!26928 0))(
  ( (Nil!26925) (Cons!26924 (h!28133 (_ BitVec 64)) (t!40152 List!26928)) )
))
(declare-fun arrayNoDuplicates!0 (array!78632 (_ BitVec 32) List!26928) Bool)

(assert (=> b!1217871 (= res!808873 (arrayNoDuplicates!0 lt!553570 #b00000000000000000000000000000000 Nil!26925))))

(declare-fun b!1217872 () Bool)

(declare-fun res!808879 () Bool)

(assert (=> b!1217872 (=> (not res!808879) (not e!691483))))

(assert (=> b!1217872 (= res!808879 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26925))))

(declare-fun b!1217873 () Bool)

(declare-fun e!691477 () Bool)

(assert (=> b!1217873 (= e!691473 e!691477)))

(declare-fun res!808880 () Bool)

(assert (=> b!1217873 (=> res!808880 e!691477)))

(assert (=> b!1217873 (= res!808880 (not (= (select (arr!37945 _keys!1208) from!1455) k!934)))))

(declare-fun b!1217874 () Bool)

(declare-fun tp_is_empty!30941 () Bool)

(assert (=> b!1217874 (= e!691479 tp_is_empty!30941)))

(declare-fun b!1217875 () Bool)

(declare-fun res!808881 () Bool)

(assert (=> b!1217875 (=> (not res!808881) (not e!691483))))

(assert (=> b!1217875 (= res!808881 (and (= (size!38483 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38482 _keys!1208) (size!38483 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!808882 () Bool)

(assert (=> start!101402 (=> (not res!808882) (not e!691483))))

(assert (=> start!101402 (= res!808882 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38482 _keys!1208))))))

(assert (=> start!101402 e!691483))

(assert (=> start!101402 tp_is_empty!30941))

(declare-fun array_inv!28794 (array!78632) Bool)

(assert (=> start!101402 (array_inv!28794 _keys!1208)))

(assert (=> start!101402 true))

(assert (=> start!101402 tp!91740))

(declare-fun e!691480 () Bool)

(declare-fun array_inv!28795 (array!78634) Bool)

(assert (=> start!101402 (and (array_inv!28795 _values!996) e!691480)))

(declare-fun b!1217876 () Bool)

(assert (=> b!1217876 (= e!691477 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1217877 () Bool)

(assert (=> b!1217877 (= e!691474 e!691475)))

(declare-fun res!808869 () Bool)

(assert (=> b!1217877 (=> res!808869 e!691475)))

(assert (=> b!1217877 (= res!808869 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1217877 (= lt!553571 (getCurrentListMapNoExtraKeys!5463 lt!553570 lt!553565 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1217877 (= lt!553565 (array!78635 (store (arr!37946 _values!996) i!673 (ValueCellFull!14761 lt!553563)) (size!38483 _values!996)))))

(declare-fun dynLambda!3367 (Int (_ BitVec 64)) V!46381)

(assert (=> b!1217877 (= lt!553563 (dynLambda!3367 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553566 () ListLongMap!18087)

(assert (=> b!1217877 (= lt!553566 (getCurrentListMapNoExtraKeys!5463 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1217878 () Bool)

(declare-fun res!808871 () Bool)

(assert (=> b!1217878 (=> (not res!808871) (not e!691483))))

(assert (=> b!1217878 (= res!808871 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!48292 () Bool)

(assert (=> mapIsEmpty!48292 mapRes!48292))

(declare-fun b!1217879 () Bool)

(declare-fun res!808876 () Bool)

(assert (=> b!1217879 (=> (not res!808876) (not e!691483))))

(assert (=> b!1217879 (= res!808876 (= (select (arr!37945 _keys!1208) i!673) k!934))))

(declare-fun b!1217880 () Bool)

(declare-fun e!691478 () Bool)

(assert (=> b!1217880 (= e!691478 tp_is_empty!30941)))

(declare-fun b!1217881 () Bool)

(declare-fun res!808868 () Bool)

(assert (=> b!1217881 (=> (not res!808868) (not e!691483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217881 (= res!808868 (validMask!0 mask!1564))))

(declare-fun b!1217882 () Bool)

(assert (=> b!1217882 (= e!691480 (and e!691478 mapRes!48292))))

(declare-fun condMapEmpty!48292 () Bool)

(declare-fun mapDefault!48292 () ValueCell!14761)

