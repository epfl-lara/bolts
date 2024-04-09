; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99542 () Bool)

(assert start!99542)

(declare-fun b_free!25085 () Bool)

(declare-fun b_next!25085 () Bool)

(assert (=> start!99542 (= b_free!25085 (not b_next!25085))))

(declare-fun tp!87969 () Bool)

(declare-fun b_and!41051 () Bool)

(assert (=> start!99542 (= tp!87969 b_and!41051)))

(declare-fun b!1176541 () Bool)

(declare-datatypes ((Unit!38772 0))(
  ( (Unit!38773) )
))
(declare-fun e!668847 () Unit!38772)

(declare-fun Unit!38774 () Unit!38772)

(assert (=> b!1176541 (= e!668847 Unit!38774)))

(declare-datatypes ((array!76006 0))(
  ( (array!76007 (arr!36649 (Array (_ BitVec 32) (_ BitVec 64))) (size!37186 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76006)

(declare-fun lt!531037 () Unit!38772)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76006 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38772)

(assert (=> b!1176541 (= lt!531037 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176541 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531034 () Unit!38772)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76006 (_ BitVec 32) (_ BitVec 32)) Unit!38772)

(assert (=> b!1176541 (= lt!531034 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25893 0))(
  ( (Nil!25890) (Cons!25889 (h!27098 (_ BitVec 64)) (t!37977 List!25893)) )
))
(declare-fun arrayNoDuplicates!0 (array!76006 (_ BitVec 32) List!25893) Bool)

(assert (=> b!1176541 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25890)))

(declare-fun lt!531039 () Unit!38772)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76006 (_ BitVec 64) (_ BitVec 32) List!25893) Unit!38772)

(assert (=> b!1176541 (= lt!531039 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25890))))

(assert (=> b!1176541 false))

(declare-fun res!781554 () Bool)

(declare-fun e!668840 () Bool)

(assert (=> start!99542 (=> (not res!781554) (not e!668840))))

(assert (=> start!99542 (= res!781554 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37186 _keys!1208))))))

(assert (=> start!99542 e!668840))

(declare-fun tp_is_empty!29615 () Bool)

(assert (=> start!99542 tp_is_empty!29615))

(declare-fun array_inv!27876 (array!76006) Bool)

(assert (=> start!99542 (array_inv!27876 _keys!1208)))

(assert (=> start!99542 true))

(assert (=> start!99542 tp!87969))

(declare-datatypes ((V!44613 0))(
  ( (V!44614 (val!14864 Int)) )
))
(declare-datatypes ((ValueCell!14098 0))(
  ( (ValueCellFull!14098 (v!17503 V!44613)) (EmptyCell!14098) )
))
(declare-datatypes ((array!76008 0))(
  ( (array!76009 (arr!36650 (Array (_ BitVec 32) ValueCell!14098)) (size!37187 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76008)

(declare-fun e!668842 () Bool)

(declare-fun array_inv!27877 (array!76008) Bool)

(assert (=> start!99542 (and (array_inv!27877 _values!996) e!668842)))

(declare-fun b!1176542 () Bool)

(declare-fun res!781552 () Bool)

(assert (=> b!1176542 (=> (not res!781552) (not e!668840))))

(assert (=> b!1176542 (= res!781552 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25890))))

(declare-fun b!1176543 () Bool)

(declare-fun e!668838 () Bool)

(declare-datatypes ((tuple2!19126 0))(
  ( (tuple2!19127 (_1!9573 (_ BitVec 64)) (_2!9573 V!44613)) )
))
(declare-datatypes ((List!25894 0))(
  ( (Nil!25891) (Cons!25890 (h!27099 tuple2!19126) (t!37978 List!25894)) )
))
(declare-datatypes ((ListLongMap!17107 0))(
  ( (ListLongMap!17108 (toList!8569 List!25894)) )
))
(declare-fun lt!531030 () ListLongMap!17107)

(declare-fun lt!531038 () tuple2!19126)

(declare-fun lt!531029 () ListLongMap!17107)

(declare-fun +!3792 (ListLongMap!17107 tuple2!19126) ListLongMap!17107)

(assert (=> b!1176543 (= e!668838 (= lt!531030 (+!3792 lt!531029 lt!531038)))))

(declare-fun b!1176544 () Bool)

(declare-fun res!781545 () Bool)

(assert (=> b!1176544 (=> (not res!781545) (not e!668840))))

(assert (=> b!1176544 (= res!781545 (= (select (arr!36649 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46250 () Bool)

(declare-fun mapRes!46250 () Bool)

(declare-fun tp!87970 () Bool)

(declare-fun e!668837 () Bool)

(assert (=> mapNonEmpty!46250 (= mapRes!46250 (and tp!87970 e!668837))))

(declare-fun mapValue!46250 () ValueCell!14098)

(declare-fun mapRest!46250 () (Array (_ BitVec 32) ValueCell!14098))

(declare-fun mapKey!46250 () (_ BitVec 32))

(assert (=> mapNonEmpty!46250 (= (arr!36650 _values!996) (store mapRest!46250 mapKey!46250 mapValue!46250))))

(declare-fun b!1176545 () Bool)

(declare-fun e!668846 () Bool)

(declare-fun e!668845 () Bool)

(assert (=> b!1176545 (= e!668846 e!668845)))

(declare-fun res!781558 () Bool)

(assert (=> b!1176545 (=> res!781558 e!668845)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176545 (= res!781558 (not (validKeyInArray!0 (select (arr!36649 _keys!1208) from!1455))))))

(declare-fun lt!531032 () ListLongMap!17107)

(declare-fun lt!531036 () ListLongMap!17107)

(assert (=> b!1176545 (= lt!531032 lt!531036)))

(declare-fun -!1573 (ListLongMap!17107 (_ BitVec 64)) ListLongMap!17107)

(assert (=> b!1176545 (= lt!531036 (-!1573 lt!531029 k!934))))

(declare-fun zeroValue!944 () V!44613)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531028 () array!76008)

(declare-fun lt!531027 () array!76006)

(declare-fun minValue!944 () V!44613)

(declare-fun getCurrentListMapNoExtraKeys!5000 (array!76006 array!76008 (_ BitVec 32) (_ BitVec 32) V!44613 V!44613 (_ BitVec 32) Int) ListLongMap!17107)

(assert (=> b!1176545 (= lt!531032 (getCurrentListMapNoExtraKeys!5000 lt!531027 lt!531028 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176545 (= lt!531029 (getCurrentListMapNoExtraKeys!5000 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531033 () Unit!38772)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!797 (array!76006 array!76008 (_ BitVec 32) (_ BitVec 32) V!44613 V!44613 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38772)

(assert (=> b!1176545 (= lt!531033 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!797 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1176546 () Bool)

(declare-fun e!668844 () Bool)

(declare-fun e!668843 () Bool)

(assert (=> b!1176546 (= e!668844 (not e!668843))))

(declare-fun res!781553 () Bool)

(assert (=> b!1176546 (=> res!781553 e!668843)))

(assert (=> b!1176546 (= res!781553 (bvsgt from!1455 i!673))))

(assert (=> b!1176546 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!531035 () Unit!38772)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76006 (_ BitVec 64) (_ BitVec 32)) Unit!38772)

(assert (=> b!1176546 (= lt!531035 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176547 () Bool)

(declare-fun Unit!38775 () Unit!38772)

(assert (=> b!1176547 (= e!668847 Unit!38775)))

(declare-fun b!1176548 () Bool)

(declare-fun e!668841 () Bool)

(assert (=> b!1176548 (= e!668842 (and e!668841 mapRes!46250))))

(declare-fun condMapEmpty!46250 () Bool)

(declare-fun mapDefault!46250 () ValueCell!14098)

