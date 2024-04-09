; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99676 () Bool)

(assert start!99676)

(declare-fun b_free!25219 () Bool)

(declare-fun b_next!25219 () Bool)

(assert (=> start!99676 (= b_free!25219 (not b_next!25219))))

(declare-fun tp!88371 () Bool)

(declare-fun b_and!41319 () Bool)

(assert (=> start!99676 (= tp!88371 b_and!41319)))

(declare-fun b!1180961 () Bool)

(declare-fun res!784834 () Bool)

(declare-fun e!671450 () Bool)

(assert (=> b!1180961 (=> (not res!784834) (not e!671450))))

(declare-datatypes ((array!76266 0))(
  ( (array!76267 (arr!36779 (Array (_ BitVec 32) (_ BitVec 64))) (size!37316 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76266)

(declare-datatypes ((List!26006 0))(
  ( (Nil!26003) (Cons!26002 (h!27211 (_ BitVec 64)) (t!38224 List!26006)) )
))
(declare-fun arrayNoDuplicates!0 (array!76266 (_ BitVec 32) List!26006) Bool)

(assert (=> b!1180961 (= res!784834 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26003))))

(declare-fun b!1180962 () Bool)

(declare-fun res!784833 () Bool)

(assert (=> b!1180962 (=> (not res!784833) (not e!671450))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1180962 (= res!784833 (validKeyInArray!0 k!934))))

(declare-fun b!1180963 () Bool)

(declare-datatypes ((Unit!38970 0))(
  ( (Unit!38971) )
))
(declare-fun e!671461 () Unit!38970)

(declare-fun Unit!38972 () Unit!38970)

(assert (=> b!1180963 (= e!671461 Unit!38972)))

(declare-fun b!1180964 () Bool)

(declare-fun e!671456 () Bool)

(declare-fun tp_is_empty!29749 () Bool)

(assert (=> b!1180964 (= e!671456 tp_is_empty!29749)))

(declare-fun b!1180965 () Bool)

(declare-fun e!671453 () Bool)

(declare-fun e!671459 () Bool)

(assert (=> b!1180965 (= e!671453 e!671459)))

(declare-fun res!784826 () Bool)

(assert (=> b!1180965 (=> res!784826 e!671459)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1180965 (= res!784826 (not (validKeyInArray!0 (select (arr!36779 _keys!1208) from!1455))))))

(declare-datatypes ((V!44793 0))(
  ( (V!44794 (val!14931 Int)) )
))
(declare-datatypes ((tuple2!19246 0))(
  ( (tuple2!19247 (_1!9633 (_ BitVec 64)) (_2!9633 V!44793)) )
))
(declare-datatypes ((List!26007 0))(
  ( (Nil!26004) (Cons!26003 (h!27212 tuple2!19246) (t!38225 List!26007)) )
))
(declare-datatypes ((ListLongMap!17227 0))(
  ( (ListLongMap!17228 (toList!8629 List!26007)) )
))
(declare-fun lt!534049 () ListLongMap!17227)

(declare-fun lt!534050 () ListLongMap!17227)

(assert (=> b!1180965 (= lt!534049 lt!534050)))

(declare-fun lt!534040 () ListLongMap!17227)

(declare-fun -!1618 (ListLongMap!17227 (_ BitVec 64)) ListLongMap!17227)

(assert (=> b!1180965 (= lt!534050 (-!1618 lt!534040 k!934))))

(declare-fun zeroValue!944 () V!44793)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14165 0))(
  ( (ValueCellFull!14165 (v!17570 V!44793)) (EmptyCell!14165) )
))
(declare-datatypes ((array!76268 0))(
  ( (array!76269 (arr!36780 (Array (_ BitVec 32) ValueCell!14165)) (size!37317 (_ BitVec 32))) )
))
(declare-fun lt!534051 () array!76268)

(declare-fun minValue!944 () V!44793)

(declare-fun lt!534045 () array!76266)

(declare-fun getCurrentListMapNoExtraKeys!5054 (array!76266 array!76268 (_ BitVec 32) (_ BitVec 32) V!44793 V!44793 (_ BitVec 32) Int) ListLongMap!17227)

(assert (=> b!1180965 (= lt!534049 (getCurrentListMapNoExtraKeys!5054 lt!534045 lt!534051 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76268)

(assert (=> b!1180965 (= lt!534040 (getCurrentListMapNoExtraKeys!5054 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!534044 () Unit!38970)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!842 (array!76266 array!76268 (_ BitVec 32) (_ BitVec 32) V!44793 V!44793 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38970)

(assert (=> b!1180965 (= lt!534044 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!842 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1180966 () Bool)

(declare-fun res!784830 () Bool)

(assert (=> b!1180966 (=> (not res!784830) (not e!671450))))

(assert (=> b!1180966 (= res!784830 (and (= (size!37317 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37316 _keys!1208) (size!37317 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1180967 () Bool)

(declare-fun res!784831 () Bool)

(declare-fun e!671457 () Bool)

(assert (=> b!1180967 (=> (not res!784831) (not e!671457))))

(assert (=> b!1180967 (= res!784831 (arrayNoDuplicates!0 lt!534045 #b00000000000000000000000000000000 Nil!26003))))

(declare-fun b!1180968 () Bool)

(declare-fun res!784835 () Bool)

(assert (=> b!1180968 (=> (not res!784835) (not e!671450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1180968 (= res!784835 (validMask!0 mask!1564))))

(declare-fun b!1180969 () Bool)

(declare-fun e!671452 () Bool)

(assert (=> b!1180969 (= e!671452 (= lt!534050 lt!534049))))

(declare-fun mapNonEmpty!46451 () Bool)

(declare-fun mapRes!46451 () Bool)

(declare-fun tp!88372 () Bool)

(declare-fun e!671451 () Bool)

(assert (=> mapNonEmpty!46451 (= mapRes!46451 (and tp!88372 e!671451))))

(declare-fun mapRest!46451 () (Array (_ BitVec 32) ValueCell!14165))

(declare-fun mapValue!46451 () ValueCell!14165)

(declare-fun mapKey!46451 () (_ BitVec 32))

(assert (=> mapNonEmpty!46451 (= (arr!36780 _values!996) (store mapRest!46451 mapKey!46451 mapValue!46451))))

(declare-fun b!1180970 () Bool)

(declare-fun res!784836 () Bool)

(assert (=> b!1180970 (=> (not res!784836) (not e!671450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76266 (_ BitVec 32)) Bool)

(assert (=> b!1180970 (= res!784836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1180971 () Bool)

(declare-fun e!671449 () Bool)

(assert (=> b!1180971 (= e!671457 (not e!671449))))

(declare-fun res!784837 () Bool)

(assert (=> b!1180971 (=> res!784837 e!671449)))

(assert (=> b!1180971 (= res!784837 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180971 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!534046 () Unit!38970)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76266 (_ BitVec 64) (_ BitVec 32)) Unit!38970)

(assert (=> b!1180971 (= lt!534046 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1180972 () Bool)

(declare-fun e!671460 () Bool)

(declare-fun e!671454 () Bool)

(assert (=> b!1180972 (= e!671460 e!671454)))

(declare-fun res!784838 () Bool)

(assert (=> b!1180972 (=> res!784838 e!671454)))

(assert (=> b!1180972 (= res!784838 (not (= (select (arr!36779 _keys!1208) from!1455) k!934)))))

(declare-fun b!1180973 () Bool)

(declare-fun res!784832 () Bool)

(assert (=> b!1180973 (=> (not res!784832) (not e!671452))))

(declare-fun lt!534048 () tuple2!19246)

(declare-fun lt!534052 () ListLongMap!17227)

(declare-fun +!3848 (ListLongMap!17227 tuple2!19246) ListLongMap!17227)

(assert (=> b!1180973 (= res!784832 (= lt!534052 (+!3848 lt!534040 lt!534048)))))

(declare-fun b!1180974 () Bool)

(declare-fun res!784824 () Bool)

(assert (=> b!1180974 (=> (not res!784824) (not e!671450))))

(assert (=> b!1180974 (= res!784824 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37316 _keys!1208))))))

(declare-fun mapIsEmpty!46451 () Bool)

(assert (=> mapIsEmpty!46451 mapRes!46451))

(declare-fun res!784828 () Bool)

(assert (=> start!99676 (=> (not res!784828) (not e!671450))))

(assert (=> start!99676 (= res!784828 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37316 _keys!1208))))))

(assert (=> start!99676 e!671450))

(assert (=> start!99676 tp_is_empty!29749))

(declare-fun array_inv!27960 (array!76266) Bool)

(assert (=> start!99676 (array_inv!27960 _keys!1208)))

(assert (=> start!99676 true))

(assert (=> start!99676 tp!88371))

(declare-fun e!671455 () Bool)

(declare-fun array_inv!27961 (array!76268) Bool)

(assert (=> start!99676 (and (array_inv!27961 _values!996) e!671455)))

(declare-fun b!1180975 () Bool)

(assert (=> b!1180975 (= e!671454 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1180976 () Bool)

(declare-fun Unit!38973 () Unit!38970)

(assert (=> b!1180976 (= e!671461 Unit!38973)))

(declare-fun lt!534047 () Unit!38970)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76266 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38970)

(assert (=> b!1180976 (= lt!534047 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1180976 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534042 () Unit!38970)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76266 (_ BitVec 32) (_ BitVec 32)) Unit!38970)

(assert (=> b!1180976 (= lt!534042 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1180976 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26003)))

(declare-fun lt!534053 () Unit!38970)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76266 (_ BitVec 64) (_ BitVec 32) List!26006) Unit!38970)

(assert (=> b!1180976 (= lt!534053 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26003))))

(assert (=> b!1180976 false))

(declare-fun b!1180977 () Bool)

(assert (=> b!1180977 (= e!671459 true)))

(assert (=> b!1180977 e!671452))

(declare-fun res!784839 () Bool)

(assert (=> b!1180977 (=> (not res!784839) (not e!671452))))

(assert (=> b!1180977 (= res!784839 (not (= (select (arr!36779 _keys!1208) from!1455) k!934)))))

(declare-fun lt!534054 () Unit!38970)

(assert (=> b!1180977 (= lt!534054 e!671461)))

(declare-fun c!116900 () Bool)

(assert (=> b!1180977 (= c!116900 (= (select (arr!36779 _keys!1208) from!1455) k!934))))

(assert (=> b!1180977 e!671460))

(declare-fun res!784829 () Bool)

(assert (=> b!1180977 (=> (not res!784829) (not e!671460))))

(declare-fun lt!534041 () ListLongMap!17227)

(assert (=> b!1180977 (= res!784829 (= lt!534041 (+!3848 lt!534050 lt!534048)))))

(declare-fun lt!534043 () V!44793)

(declare-fun get!18845 (ValueCell!14165 V!44793) V!44793)

(assert (=> b!1180977 (= lt!534048 (tuple2!19247 (select (arr!36779 _keys!1208) from!1455) (get!18845 (select (arr!36780 _values!996) from!1455) lt!534043)))))

(declare-fun b!1180978 () Bool)

(assert (=> b!1180978 (= e!671455 (and e!671456 mapRes!46451))))

(declare-fun condMapEmpty!46451 () Bool)

(declare-fun mapDefault!46451 () ValueCell!14165)

