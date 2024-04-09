; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99524 () Bool)

(assert start!99524)

(declare-fun b_free!25067 () Bool)

(declare-fun b_next!25067 () Bool)

(assert (=> start!99524 (= b_free!25067 (not b_next!25067))))

(declare-fun tp!87916 () Bool)

(declare-fun b_and!41015 () Bool)

(assert (=> start!99524 (= tp!87916 b_and!41015)))

(declare-fun b!1175957 () Bool)

(declare-fun e!668487 () Bool)

(declare-fun e!668492 () Bool)

(assert (=> b!1175957 (= e!668487 (not e!668492))))

(declare-fun res!781114 () Bool)

(assert (=> b!1175957 (=> res!781114 e!668492)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1175957 (= res!781114 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75970 0))(
  ( (array!75971 (arr!36631 (Array (_ BitVec 32) (_ BitVec 64))) (size!37168 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75970)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175957 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38742 0))(
  ( (Unit!38743) )
))
(declare-fun lt!530627 () Unit!38742)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75970 (_ BitVec 64) (_ BitVec 32)) Unit!38742)

(assert (=> b!1175957 (= lt!530627 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1175958 () Bool)

(declare-fun e!668497 () Bool)

(declare-fun e!668494 () Bool)

(assert (=> b!1175958 (= e!668497 e!668494)))

(declare-fun res!781113 () Bool)

(assert (=> b!1175958 (=> res!781113 e!668494)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175958 (= res!781113 (not (validKeyInArray!0 (select (arr!36631 _keys!1208) from!1455))))))

(declare-datatypes ((V!44589 0))(
  ( (V!44590 (val!14855 Int)) )
))
(declare-datatypes ((tuple2!19108 0))(
  ( (tuple2!19109 (_1!9564 (_ BitVec 64)) (_2!9564 V!44589)) )
))
(declare-datatypes ((List!25876 0))(
  ( (Nil!25873) (Cons!25872 (h!27081 tuple2!19108) (t!37942 List!25876)) )
))
(declare-datatypes ((ListLongMap!17089 0))(
  ( (ListLongMap!17090 (toList!8560 List!25876)) )
))
(declare-fun lt!530630 () ListLongMap!17089)

(declare-fun lt!530632 () ListLongMap!17089)

(assert (=> b!1175958 (= lt!530630 lt!530632)))

(declare-fun lt!530622 () ListLongMap!17089)

(declare-fun -!1566 (ListLongMap!17089 (_ BitVec 64)) ListLongMap!17089)

(assert (=> b!1175958 (= lt!530632 (-!1566 lt!530622 k!934))))

(declare-fun zeroValue!944 () V!44589)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14089 0))(
  ( (ValueCellFull!14089 (v!17494 V!44589)) (EmptyCell!14089) )
))
(declare-datatypes ((array!75972 0))(
  ( (array!75973 (arr!36632 (Array (_ BitVec 32) ValueCell!14089)) (size!37169 (_ BitVec 32))) )
))
(declare-fun lt!530621 () array!75972)

(declare-fun minValue!944 () V!44589)

(declare-fun lt!530629 () array!75970)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4991 (array!75970 array!75972 (_ BitVec 32) (_ BitVec 32) V!44589 V!44589 (_ BitVec 32) Int) ListLongMap!17089)

(assert (=> b!1175958 (= lt!530630 (getCurrentListMapNoExtraKeys!4991 lt!530629 lt!530621 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75972)

(assert (=> b!1175958 (= lt!530622 (getCurrentListMapNoExtraKeys!4991 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530623 () Unit!38742)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!790 (array!75970 array!75972 (_ BitVec 32) (_ BitVec 32) V!44589 V!44589 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38742)

(assert (=> b!1175958 (= lt!530623 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!790 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175959 () Bool)

(declare-fun e!668490 () Bool)

(declare-fun e!668493 () Bool)

(assert (=> b!1175959 (= e!668490 e!668493)))

(declare-fun res!781118 () Bool)

(assert (=> b!1175959 (=> res!781118 e!668493)))

(assert (=> b!1175959 (= res!781118 (not (= (select (arr!36631 _keys!1208) from!1455) k!934)))))

(declare-fun b!1175960 () Bool)

(declare-fun res!781120 () Bool)

(declare-fun e!668488 () Bool)

(assert (=> b!1175960 (=> (not res!781120) (not e!668488))))

(assert (=> b!1175960 (= res!781120 (and (= (size!37169 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37168 _keys!1208) (size!37169 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175961 () Bool)

(declare-fun res!781125 () Bool)

(assert (=> b!1175961 (=> (not res!781125) (not e!668488))))

(assert (=> b!1175961 (= res!781125 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37168 _keys!1208))))))

(declare-fun mapIsEmpty!46223 () Bool)

(declare-fun mapRes!46223 () Bool)

(assert (=> mapIsEmpty!46223 mapRes!46223))

(declare-fun b!1175962 () Bool)

(declare-fun e!668496 () Bool)

(declare-fun e!668489 () Bool)

(assert (=> b!1175962 (= e!668496 (and e!668489 mapRes!46223))))

(declare-fun condMapEmpty!46223 () Bool)

(declare-fun mapDefault!46223 () ValueCell!14089)

