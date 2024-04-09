; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99806 () Bool)

(assert start!99806)

(declare-fun b_free!25349 () Bool)

(declare-fun b_next!25349 () Bool)

(assert (=> start!99806 (= b_free!25349 (not b_next!25349))))

(declare-fun tp!88761 () Bool)

(declare-fun b_and!41579 () Bool)

(assert (=> start!99806 (= tp!88761 b_and!41579)))

(declare-fun res!787799 () Bool)

(declare-fun e!673819 () Bool)

(assert (=> start!99806 (=> (not res!787799) (not e!673819))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76526 0))(
  ( (array!76527 (arr!36909 (Array (_ BitVec 32) (_ BitVec 64))) (size!37446 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76526)

(assert (=> start!99806 (= res!787799 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37446 _keys!1208))))))

(assert (=> start!99806 e!673819))

(declare-fun tp_is_empty!29879 () Bool)

(assert (=> start!99806 tp_is_empty!29879))

(declare-fun array_inv!28048 (array!76526) Bool)

(assert (=> start!99806 (array_inv!28048 _keys!1208)))

(assert (=> start!99806 true))

(assert (=> start!99806 tp!88761))

(declare-datatypes ((V!44965 0))(
  ( (V!44966 (val!14996 Int)) )
))
(declare-datatypes ((ValueCell!14230 0))(
  ( (ValueCellFull!14230 (v!17635 V!44965)) (EmptyCell!14230) )
))
(declare-datatypes ((array!76528 0))(
  ( (array!76529 (arr!36910 (Array (_ BitVec 32) ValueCell!14230)) (size!37447 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76528)

(declare-fun e!673821 () Bool)

(declare-fun array_inv!28049 (array!76528) Bool)

(assert (=> start!99806 (and (array_inv!28049 _values!996) e!673821)))

(declare-fun b!1185041 () Bool)

(declare-fun res!787803 () Bool)

(assert (=> b!1185041 (=> (not res!787803) (not e!673819))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76526 (_ BitVec 32)) Bool)

(assert (=> b!1185041 (= res!787803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1185042 () Bool)

(declare-fun e!673825 () Bool)

(declare-fun arrayContainsKey!0 (array!76526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185042 (= e!673825 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1185043 () Bool)

(declare-fun e!673817 () Bool)

(assert (=> b!1185043 (= e!673817 true)))

(declare-datatypes ((tuple2!19356 0))(
  ( (tuple2!19357 (_1!9688 (_ BitVec 64)) (_2!9688 V!44965)) )
))
(declare-datatypes ((List!26117 0))(
  ( (Nil!26114) (Cons!26113 (h!27322 tuple2!19356) (t!38465 List!26117)) )
))
(declare-datatypes ((ListLongMap!17337 0))(
  ( (ListLongMap!17338 (toList!8684 List!26117)) )
))
(declare-fun lt!537646 () ListLongMap!17337)

(declare-fun lt!537661 () ListLongMap!17337)

(declare-fun -!1671 (ListLongMap!17337 (_ BitVec 64)) ListLongMap!17337)

(assert (=> b!1185043 (= (-!1671 lt!537646 k!934) lt!537661)))

(declare-datatypes ((Unit!39175 0))(
  ( (Unit!39176) )
))
(declare-fun lt!537656 () Unit!39175)

(declare-fun lt!537650 () V!44965)

(declare-fun lt!537658 () ListLongMap!17337)

(declare-fun addRemoveCommutativeForDiffKeys!182 (ListLongMap!17337 (_ BitVec 64) V!44965 (_ BitVec 64)) Unit!39175)

(assert (=> b!1185043 (= lt!537656 (addRemoveCommutativeForDiffKeys!182 lt!537658 (select (arr!36909 _keys!1208) from!1455) lt!537650 k!934))))

(declare-fun lt!537652 () ListLongMap!17337)

(declare-fun lt!537654 () ListLongMap!17337)

(declare-fun lt!537645 () ListLongMap!17337)

(assert (=> b!1185043 (and (= lt!537654 lt!537646) (= lt!537652 lt!537645))))

(declare-fun lt!537662 () tuple2!19356)

(declare-fun +!3892 (ListLongMap!17337 tuple2!19356) ListLongMap!17337)

(assert (=> b!1185043 (= lt!537646 (+!3892 lt!537658 lt!537662))))

(assert (=> b!1185043 (not (= (select (arr!36909 _keys!1208) from!1455) k!934))))

(declare-fun lt!537648 () Unit!39175)

(declare-fun e!673818 () Unit!39175)

(assert (=> b!1185043 (= lt!537648 e!673818)))

(declare-fun c!117095 () Bool)

(assert (=> b!1185043 (= c!117095 (= (select (arr!36909 _keys!1208) from!1455) k!934))))

(declare-fun e!673820 () Bool)

(assert (=> b!1185043 e!673820))

(declare-fun res!787801 () Bool)

(assert (=> b!1185043 (=> (not res!787801) (not e!673820))))

(declare-fun lt!537663 () ListLongMap!17337)

(assert (=> b!1185043 (= res!787801 (= lt!537663 lt!537661))))

(assert (=> b!1185043 (= lt!537661 (+!3892 lt!537652 lt!537662))))

(assert (=> b!1185043 (= lt!537662 (tuple2!19357 (select (arr!36909 _keys!1208) from!1455) lt!537650))))

(declare-fun lt!537655 () V!44965)

(declare-fun get!18930 (ValueCell!14230 V!44965) V!44965)

(assert (=> b!1185043 (= lt!537650 (get!18930 (select (arr!36910 _values!996) from!1455) lt!537655))))

(declare-fun b!1185044 () Bool)

(assert (=> b!1185044 (= e!673820 e!673825)))

(declare-fun res!787804 () Bool)

(assert (=> b!1185044 (=> res!787804 e!673825)))

(assert (=> b!1185044 (= res!787804 (not (= (select (arr!36909 _keys!1208) from!1455) k!934)))))

(declare-fun b!1185045 () Bool)

(declare-fun res!787808 () Bool)

(assert (=> b!1185045 (=> (not res!787808) (not e!673819))))

(assert (=> b!1185045 (= res!787808 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37446 _keys!1208))))))

(declare-fun b!1185046 () Bool)

(declare-fun res!787811 () Bool)

(assert (=> b!1185046 (=> (not res!787811) (not e!673819))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1185046 (= res!787811 (and (= (size!37447 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37446 _keys!1208) (size!37447 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1185047 () Bool)

(declare-fun Unit!39177 () Unit!39175)

(assert (=> b!1185047 (= e!673818 Unit!39177)))

(declare-fun b!1185048 () Bool)

(declare-fun e!673815 () Bool)

(assert (=> b!1185048 (= e!673815 tp_is_empty!29879)))

(declare-fun b!1185049 () Bool)

(declare-fun e!673822 () Bool)

(assert (=> b!1185049 (= e!673822 tp_is_empty!29879)))

(declare-fun b!1185050 () Bool)

(declare-fun res!787810 () Bool)

(declare-fun e!673814 () Bool)

(assert (=> b!1185050 (=> (not res!787810) (not e!673814))))

(declare-fun lt!537657 () array!76526)

(declare-datatypes ((List!26118 0))(
  ( (Nil!26115) (Cons!26114 (h!27323 (_ BitVec 64)) (t!38466 List!26118)) )
))
(declare-fun arrayNoDuplicates!0 (array!76526 (_ BitVec 32) List!26118) Bool)

(assert (=> b!1185050 (= res!787810 (arrayNoDuplicates!0 lt!537657 #b00000000000000000000000000000000 Nil!26115))))

(declare-fun b!1185051 () Bool)

(declare-fun res!787812 () Bool)

(assert (=> b!1185051 (=> (not res!787812) (not e!673819))))

(assert (=> b!1185051 (= res!787812 (= (select (arr!36909 _keys!1208) i!673) k!934))))

(declare-fun b!1185052 () Bool)

(declare-fun e!673824 () Bool)

(assert (=> b!1185052 (= e!673824 e!673817)))

(declare-fun res!787800 () Bool)

(assert (=> b!1185052 (=> res!787800 e!673817)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185052 (= res!787800 (not (validKeyInArray!0 (select (arr!36909 _keys!1208) from!1455))))))

(assert (=> b!1185052 (= lt!537645 lt!537652)))

(assert (=> b!1185052 (= lt!537652 (-!1671 lt!537658 k!934))))

(declare-fun zeroValue!944 () V!44965)

(declare-fun lt!537653 () array!76528)

(declare-fun minValue!944 () V!44965)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5103 (array!76526 array!76528 (_ BitVec 32) (_ BitVec 32) V!44965 V!44965 (_ BitVec 32) Int) ListLongMap!17337)

(assert (=> b!1185052 (= lt!537645 (getCurrentListMapNoExtraKeys!5103 lt!537657 lt!537653 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1185052 (= lt!537658 (getCurrentListMapNoExtraKeys!5103 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!537647 () Unit!39175)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!886 (array!76526 array!76528 (_ BitVec 32) (_ BitVec 32) V!44965 V!44965 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39175)

(assert (=> b!1185052 (= lt!537647 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!886 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1185053 () Bool)

(declare-fun Unit!39178 () Unit!39175)

(assert (=> b!1185053 (= e!673818 Unit!39178)))

(declare-fun lt!537649 () Unit!39175)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76526 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39175)

(assert (=> b!1185053 (= lt!537649 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1185053 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!537659 () Unit!39175)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76526 (_ BitVec 32) (_ BitVec 32)) Unit!39175)

(assert (=> b!1185053 (= lt!537659 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1185053 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26115)))

(declare-fun lt!537651 () Unit!39175)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76526 (_ BitVec 64) (_ BitVec 32) List!26118) Unit!39175)

(assert (=> b!1185053 (= lt!537651 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26115))))

(assert (=> b!1185053 false))

(declare-fun b!1185054 () Bool)

(declare-fun mapRes!46646 () Bool)

(assert (=> b!1185054 (= e!673821 (and e!673815 mapRes!46646))))

(declare-fun condMapEmpty!46646 () Bool)

(declare-fun mapDefault!46646 () ValueCell!14230)

