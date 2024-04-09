; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99916 () Bool)

(assert start!99916)

(declare-fun b_free!25459 () Bool)

(declare-fun b_next!25459 () Bool)

(assert (=> start!99916 (= b_free!25459 (not b_next!25459))))

(declare-fun tp!89091 () Bool)

(declare-fun b_and!41799 () Bool)

(assert (=> start!99916 (= tp!89091 b_and!41799)))

(declare-fun b!1188396 () Bool)

(declare-fun res!790246 () Bool)

(declare-fun e!675751 () Bool)

(assert (=> b!1188396 (=> (not res!790246) (not e!675751))))

(declare-datatypes ((array!76746 0))(
  ( (array!76747 (arr!37019 (Array (_ BitVec 32) (_ BitVec 64))) (size!37556 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76746)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76746 (_ BitVec 32)) Bool)

(assert (=> b!1188396 (= res!790246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188398 () Bool)

(declare-fun res!790250 () Bool)

(assert (=> b!1188398 (=> (not res!790250) (not e!675751))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45113 0))(
  ( (V!45114 (val!15051 Int)) )
))
(declare-datatypes ((ValueCell!14285 0))(
  ( (ValueCellFull!14285 (v!17690 V!45113)) (EmptyCell!14285) )
))
(declare-datatypes ((array!76748 0))(
  ( (array!76749 (arr!37020 (Array (_ BitVec 32) ValueCell!14285)) (size!37557 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76748)

(assert (=> b!1188398 (= res!790250 (and (= (size!37557 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37556 _keys!1208) (size!37557 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1188399 () Bool)

(declare-fun res!790242 () Bool)

(assert (=> b!1188399 (=> (not res!790242) (not e!675751))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1188399 (= res!790242 (= (select (arr!37019 _keys!1208) i!673) k!934))))

(declare-fun b!1188400 () Bool)

(declare-fun e!675757 () Bool)

(assert (=> b!1188400 (= e!675757 true)))

(declare-fun zeroValue!944 () V!45113)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!540641 () array!76746)

(declare-fun lt!540642 () array!76748)

(declare-fun minValue!944 () V!45113)

(declare-datatypes ((tuple2!19456 0))(
  ( (tuple2!19457 (_1!9738 (_ BitVec 64)) (_2!9738 V!45113)) )
))
(declare-datatypes ((List!26216 0))(
  ( (Nil!26213) (Cons!26212 (h!27421 tuple2!19456) (t!38674 List!26216)) )
))
(declare-datatypes ((ListLongMap!17437 0))(
  ( (ListLongMap!17438 (toList!8734 List!26216)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5148 (array!76746 array!76748 (_ BitVec 32) (_ BitVec 32) V!45113 V!45113 (_ BitVec 32) Int) ListLongMap!17437)

(declare-fun -!1719 (ListLongMap!17437 (_ BitVec 64)) ListLongMap!17437)

(assert (=> b!1188400 (= (getCurrentListMapNoExtraKeys!5148 lt!540641 lt!540642 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1719 (getCurrentListMapNoExtraKeys!5148 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39358 0))(
  ( (Unit!39359) )
))
(declare-fun lt!540640 () Unit!39358)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!925 (array!76746 array!76748 (_ BitVec 32) (_ BitVec 32) V!45113 V!45113 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39358)

(assert (=> b!1188400 (= lt!540640 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!925 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188401 () Bool)

(declare-fun res!790252 () Bool)

(assert (=> b!1188401 (=> (not res!790252) (not e!675751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188401 (= res!790252 (validKeyInArray!0 k!934))))

(declare-fun b!1188402 () Bool)

(declare-fun res!790243 () Bool)

(assert (=> b!1188402 (=> (not res!790243) (not e!675751))))

(declare-datatypes ((List!26217 0))(
  ( (Nil!26214) (Cons!26213 (h!27422 (_ BitVec 64)) (t!38675 List!26217)) )
))
(declare-fun arrayNoDuplicates!0 (array!76746 (_ BitVec 32) List!26217) Bool)

(assert (=> b!1188402 (= res!790243 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26214))))

(declare-fun b!1188403 () Bool)

(declare-fun res!790247 () Bool)

(assert (=> b!1188403 (=> (not res!790247) (not e!675751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188403 (= res!790247 (validMask!0 mask!1564))))

(declare-fun b!1188404 () Bool)

(declare-fun e!675752 () Bool)

(declare-fun e!675750 () Bool)

(assert (=> b!1188404 (= e!675752 (not e!675750))))

(declare-fun res!790244 () Bool)

(assert (=> b!1188404 (=> res!790244 e!675750)))

(assert (=> b!1188404 (= res!790244 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188404 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!540639 () Unit!39358)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76746 (_ BitVec 64) (_ BitVec 32)) Unit!39358)

(assert (=> b!1188404 (= lt!540639 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1188405 () Bool)

(declare-fun res!790249 () Bool)

(assert (=> b!1188405 (=> (not res!790249) (not e!675751))))

(assert (=> b!1188405 (= res!790249 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37556 _keys!1208))))))

(declare-fun b!1188397 () Bool)

(declare-fun e!675756 () Bool)

(declare-fun tp_is_empty!29989 () Bool)

(assert (=> b!1188397 (= e!675756 tp_is_empty!29989)))

(declare-fun res!790251 () Bool)

(assert (=> start!99916 (=> (not res!790251) (not e!675751))))

(assert (=> start!99916 (= res!790251 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37556 _keys!1208))))))

(assert (=> start!99916 e!675751))

(assert (=> start!99916 tp_is_empty!29989))

(declare-fun array_inv!28130 (array!76746) Bool)

(assert (=> start!99916 (array_inv!28130 _keys!1208)))

(assert (=> start!99916 true))

(assert (=> start!99916 tp!89091))

(declare-fun e!675754 () Bool)

(declare-fun array_inv!28131 (array!76748) Bool)

(assert (=> start!99916 (and (array_inv!28131 _values!996) e!675754)))

(declare-fun b!1188406 () Bool)

(declare-fun e!675755 () Bool)

(assert (=> b!1188406 (= e!675755 tp_is_empty!29989)))

(declare-fun mapNonEmpty!46811 () Bool)

(declare-fun mapRes!46811 () Bool)

(declare-fun tp!89092 () Bool)

(assert (=> mapNonEmpty!46811 (= mapRes!46811 (and tp!89092 e!675756))))

(declare-fun mapValue!46811 () ValueCell!14285)

(declare-fun mapKey!46811 () (_ BitVec 32))

(declare-fun mapRest!46811 () (Array (_ BitVec 32) ValueCell!14285))

(assert (=> mapNonEmpty!46811 (= (arr!37020 _values!996) (store mapRest!46811 mapKey!46811 mapValue!46811))))

(declare-fun b!1188407 () Bool)

(declare-fun res!790248 () Bool)

(assert (=> b!1188407 (=> (not res!790248) (not e!675752))))

(assert (=> b!1188407 (= res!790248 (arrayNoDuplicates!0 lt!540641 #b00000000000000000000000000000000 Nil!26214))))

(declare-fun b!1188408 () Bool)

(assert (=> b!1188408 (= e!675754 (and e!675755 mapRes!46811))))

(declare-fun condMapEmpty!46811 () Bool)

(declare-fun mapDefault!46811 () ValueCell!14285)

