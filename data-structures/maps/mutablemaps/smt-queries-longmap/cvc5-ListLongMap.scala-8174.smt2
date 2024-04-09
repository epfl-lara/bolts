; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99946 () Bool)

(assert start!99946)

(declare-fun b_free!25489 () Bool)

(declare-fun b_next!25489 () Bool)

(assert (=> start!99946 (= b_free!25489 (not b_next!25489))))

(declare-fun tp!89181 () Bool)

(declare-fun b_and!41859 () Bool)

(assert (=> start!99946 (= tp!89181 b_and!41859)))

(declare-fun b!1189101 () Bool)

(declare-fun e!676113 () Bool)

(assert (=> b!1189101 (= e!676113 true)))

(declare-datatypes ((V!45153 0))(
  ( (V!45154 (val!15066 Int)) )
))
(declare-fun zeroValue!944 () V!45153)

(declare-datatypes ((array!76804 0))(
  ( (array!76805 (arr!37048 (Array (_ BitVec 32) (_ BitVec 64))) (size!37585 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76804)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45153)

(declare-datatypes ((ValueCell!14300 0))(
  ( (ValueCellFull!14300 (v!17705 V!45153)) (EmptyCell!14300) )
))
(declare-datatypes ((array!76806 0))(
  ( (array!76807 (arr!37049 (Array (_ BitVec 32) ValueCell!14300)) (size!37586 (_ BitVec 32))) )
))
(declare-fun lt!540912 () array!76806)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!540909 () array!76804)

(declare-fun _values!996 () array!76806)

(declare-datatypes ((tuple2!19476 0))(
  ( (tuple2!19477 (_1!9748 (_ BitVec 64)) (_2!9748 V!45153)) )
))
(declare-datatypes ((List!26237 0))(
  ( (Nil!26234) (Cons!26233 (h!27442 tuple2!19476) (t!38725 List!26237)) )
))
(declare-datatypes ((ListLongMap!17457 0))(
  ( (ListLongMap!17458 (toList!8744 List!26237)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5158 (array!76804 array!76806 (_ BitVec 32) (_ BitVec 32) V!45153 V!45153 (_ BitVec 32) Int) ListLongMap!17457)

(declare-fun -!1728 (ListLongMap!17457 (_ BitVec 64)) ListLongMap!17457)

(assert (=> b!1189101 (= (getCurrentListMapNoExtraKeys!5158 lt!540909 lt!540912 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1728 (getCurrentListMapNoExtraKeys!5158 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39382 0))(
  ( (Unit!39383) )
))
(declare-fun lt!540908 () Unit!39382)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!934 (array!76804 array!76806 (_ BitVec 32) (_ BitVec 32) V!45153 V!45153 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39382)

(assert (=> b!1189101 (= lt!540908 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!934 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189102 () Bool)

(declare-fun res!790787 () Bool)

(declare-fun e!676110 () Bool)

(assert (=> b!1189102 (=> (not res!790787) (not e!676110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76804 (_ BitVec 32)) Bool)

(assert (=> b!1189102 (= res!790787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189103 () Bool)

(declare-fun e!676116 () Bool)

(declare-fun e!676112 () Bool)

(assert (=> b!1189103 (= e!676116 (not e!676112))))

(declare-fun res!790786 () Bool)

(assert (=> b!1189103 (=> res!790786 e!676112)))

(assert (=> b!1189103 (= res!790786 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189103 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!540911 () Unit!39382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76804 (_ BitVec 64) (_ BitVec 32)) Unit!39382)

(assert (=> b!1189103 (= lt!540911 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1189104 () Bool)

(declare-fun e!676111 () Bool)

(declare-fun tp_is_empty!30019 () Bool)

(assert (=> b!1189104 (= e!676111 tp_is_empty!30019)))

(declare-fun b!1189105 () Bool)

(declare-fun e!676117 () Bool)

(declare-fun mapRes!46856 () Bool)

(assert (=> b!1189105 (= e!676117 (and e!676111 mapRes!46856))))

(declare-fun condMapEmpty!46856 () Bool)

(declare-fun mapDefault!46856 () ValueCell!14300)

