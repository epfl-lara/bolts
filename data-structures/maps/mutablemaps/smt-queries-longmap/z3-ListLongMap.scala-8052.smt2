; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99190 () Bool)

(assert start!99190)

(declare-fun b_free!24759 () Bool)

(declare-fun b_next!24759 () Bool)

(assert (=> start!99190 (= b_free!24759 (not b_next!24759))))

(declare-fun tp!86989 () Bool)

(declare-fun b_and!40381 () Bool)

(assert (=> start!99190 (= tp!86989 b_and!40381)))

(declare-fun mapIsEmpty!45758 () Bool)

(declare-fun mapRes!45758 () Bool)

(assert (=> mapIsEmpty!45758 mapRes!45758))

(declare-fun res!774087 () Bool)

(declare-fun e!663271 () Bool)

(assert (=> start!99190 (=> (not res!774087) (not e!663271))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75356 0))(
  ( (array!75357 (arr!36325 (Array (_ BitVec 32) (_ BitVec 64))) (size!36862 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75356)

(assert (=> start!99190 (= res!774087 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36862 _keys!1208))))))

(assert (=> start!99190 e!663271))

(declare-fun tp_is_empty!29289 () Bool)

(assert (=> start!99190 tp_is_empty!29289))

(declare-fun array_inv!27654 (array!75356) Bool)

(assert (=> start!99190 (array_inv!27654 _keys!1208)))

(assert (=> start!99190 true))

(assert (=> start!99190 tp!86989))

(declare-datatypes ((V!44179 0))(
  ( (V!44180 (val!14701 Int)) )
))
(declare-datatypes ((ValueCell!13935 0))(
  ( (ValueCellFull!13935 (v!17339 V!44179)) (EmptyCell!13935) )
))
(declare-datatypes ((array!75358 0))(
  ( (array!75359 (arr!36326 (Array (_ BitVec 32) ValueCell!13935)) (size!36863 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75358)

(declare-fun e!663276 () Bool)

(declare-fun array_inv!27655 (array!75358) Bool)

(assert (=> start!99190 (and (array_inv!27655 _values!996) e!663276)))

(declare-fun mapNonEmpty!45758 () Bool)

(declare-fun tp!86988 () Bool)

(declare-fun e!663273 () Bool)

(assert (=> mapNonEmpty!45758 (= mapRes!45758 (and tp!86988 e!663273))))

(declare-fun mapKey!45758 () (_ BitVec 32))

(declare-fun mapRest!45758 () (Array (_ BitVec 32) ValueCell!13935))

(declare-fun mapValue!45758 () ValueCell!13935)

(assert (=> mapNonEmpty!45758 (= (arr!36326 _values!996) (store mapRest!45758 mapKey!45758 mapValue!45758))))

(declare-fun b!1166826 () Bool)

(declare-fun res!774092 () Bool)

(assert (=> b!1166826 (=> (not res!774092) (not e!663271))))

(declare-datatypes ((List!25607 0))(
  ( (Nil!25604) (Cons!25603 (h!26812 (_ BitVec 64)) (t!37365 List!25607)) )
))
(declare-fun arrayNoDuplicates!0 (array!75356 (_ BitVec 32) List!25607) Bool)

(assert (=> b!1166826 (= res!774092 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25604))))

(declare-fun b!1166827 () Bool)

(declare-fun e!663274 () Bool)

(declare-fun e!663275 () Bool)

(assert (=> b!1166827 (= e!663274 e!663275)))

(declare-fun res!774089 () Bool)

(assert (=> b!1166827 (=> res!774089 e!663275)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1166827 (= res!774089 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18832 0))(
  ( (tuple2!18833 (_1!9426 (_ BitVec 64)) (_2!9426 V!44179)) )
))
(declare-datatypes ((List!25608 0))(
  ( (Nil!25605) (Cons!25604 (h!26813 tuple2!18832) (t!37366 List!25608)) )
))
(declare-datatypes ((ListLongMap!16813 0))(
  ( (ListLongMap!16814 (toList!8422 List!25608)) )
))
(declare-fun lt!525373 () ListLongMap!16813)

(declare-fun lt!525372 () array!75358)

(declare-fun minValue!944 () V!44179)

(declare-fun lt!525375 () array!75356)

(declare-fun zeroValue!944 () V!44179)

(declare-fun getCurrentListMapNoExtraKeys!4855 (array!75356 array!75358 (_ BitVec 32) (_ BitVec 32) V!44179 V!44179 (_ BitVec 32) Int) ListLongMap!16813)

(assert (=> b!1166827 (= lt!525373 (getCurrentListMapNoExtraKeys!4855 lt!525375 lt!525372 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2849 (Int (_ BitVec 64)) V!44179)

(assert (=> b!1166827 (= lt!525372 (array!75359 (store (arr!36326 _values!996) i!673 (ValueCellFull!13935 (dynLambda!2849 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36863 _values!996)))))

(declare-fun lt!525370 () ListLongMap!16813)

(assert (=> b!1166827 (= lt!525370 (getCurrentListMapNoExtraKeys!4855 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166828 () Bool)

(declare-fun res!774081 () Bool)

(assert (=> b!1166828 (=> (not res!774081) (not e!663271))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1166828 (= res!774081 (= (select (arr!36325 _keys!1208) i!673) k0!934))))

(declare-fun b!1166829 () Bool)

(declare-fun e!663269 () Bool)

(assert (=> b!1166829 (= e!663269 (not e!663274))))

(declare-fun res!774091 () Bool)

(assert (=> b!1166829 (=> res!774091 e!663274)))

(assert (=> b!1166829 (= res!774091 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166829 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38396 0))(
  ( (Unit!38397) )
))
(declare-fun lt!525371 () Unit!38396)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75356 (_ BitVec 64) (_ BitVec 32)) Unit!38396)

(assert (=> b!1166829 (= lt!525371 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1166830 () Bool)

(declare-fun res!774084 () Bool)

(assert (=> b!1166830 (=> (not res!774084) (not e!663269))))

(assert (=> b!1166830 (= res!774084 (arrayNoDuplicates!0 lt!525375 #b00000000000000000000000000000000 Nil!25604))))

(declare-fun b!1166831 () Bool)

(declare-fun res!774082 () Bool)

(assert (=> b!1166831 (=> (not res!774082) (not e!663271))))

(assert (=> b!1166831 (= res!774082 (and (= (size!36863 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36862 _keys!1208) (size!36863 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166832 () Bool)

(declare-fun res!774090 () Bool)

(assert (=> b!1166832 (=> (not res!774090) (not e!663271))))

(assert (=> b!1166832 (= res!774090 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36862 _keys!1208))))))

(declare-fun b!1166833 () Bool)

(assert (=> b!1166833 (= e!663273 tp_is_empty!29289)))

(declare-fun b!1166834 () Bool)

(declare-fun e!663270 () Bool)

(assert (=> b!1166834 (= e!663276 (and e!663270 mapRes!45758))))

(declare-fun condMapEmpty!45758 () Bool)

(declare-fun mapDefault!45758 () ValueCell!13935)

(assert (=> b!1166834 (= condMapEmpty!45758 (= (arr!36326 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13935)) mapDefault!45758)))))

(declare-fun b!1166835 () Bool)

(assert (=> b!1166835 (= e!663270 tp_is_empty!29289)))

(declare-fun b!1166836 () Bool)

(declare-fun res!774086 () Bool)

(assert (=> b!1166836 (=> (not res!774086) (not e!663271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166836 (= res!774086 (validMask!0 mask!1564))))

(declare-fun b!1166837 () Bool)

(declare-fun res!774083 () Bool)

(assert (=> b!1166837 (=> (not res!774083) (not e!663271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166837 (= res!774083 (validKeyInArray!0 k0!934))))

(declare-fun b!1166838 () Bool)

(declare-fun res!774088 () Bool)

(assert (=> b!1166838 (=> (not res!774088) (not e!663271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75356 (_ BitVec 32)) Bool)

(assert (=> b!1166838 (= res!774088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1166839 () Bool)

(assert (=> b!1166839 (= e!663275 true)))

(declare-fun -!1457 (ListLongMap!16813 (_ BitVec 64)) ListLongMap!16813)

(assert (=> b!1166839 (= (getCurrentListMapNoExtraKeys!4855 lt!525375 lt!525372 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1457 (getCurrentListMapNoExtraKeys!4855 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!525374 () Unit!38396)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!681 (array!75356 array!75358 (_ BitVec 32) (_ BitVec 32) V!44179 V!44179 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38396)

(assert (=> b!1166839 (= lt!525374 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!681 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166840 () Bool)

(assert (=> b!1166840 (= e!663271 e!663269)))

(declare-fun res!774085 () Bool)

(assert (=> b!1166840 (=> (not res!774085) (not e!663269))))

(assert (=> b!1166840 (= res!774085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525375 mask!1564))))

(assert (=> b!1166840 (= lt!525375 (array!75357 (store (arr!36325 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36862 _keys!1208)))))

(assert (= (and start!99190 res!774087) b!1166836))

(assert (= (and b!1166836 res!774086) b!1166831))

(assert (= (and b!1166831 res!774082) b!1166838))

(assert (= (and b!1166838 res!774088) b!1166826))

(assert (= (and b!1166826 res!774092) b!1166832))

(assert (= (and b!1166832 res!774090) b!1166837))

(assert (= (and b!1166837 res!774083) b!1166828))

(assert (= (and b!1166828 res!774081) b!1166840))

(assert (= (and b!1166840 res!774085) b!1166830))

(assert (= (and b!1166830 res!774084) b!1166829))

(assert (= (and b!1166829 (not res!774091)) b!1166827))

(assert (= (and b!1166827 (not res!774089)) b!1166839))

(assert (= (and b!1166834 condMapEmpty!45758) mapIsEmpty!45758))

(assert (= (and b!1166834 (not condMapEmpty!45758)) mapNonEmpty!45758))

(get-info :version)

(assert (= (and mapNonEmpty!45758 ((_ is ValueCellFull!13935) mapValue!45758)) b!1166833))

(assert (= (and b!1166834 ((_ is ValueCellFull!13935) mapDefault!45758)) b!1166835))

(assert (= start!99190 b!1166834))

(declare-fun b_lambda!19883 () Bool)

(assert (=> (not b_lambda!19883) (not b!1166827)))

(declare-fun t!37364 () Bool)

(declare-fun tb!9579 () Bool)

(assert (=> (and start!99190 (= defaultEntry!1004 defaultEntry!1004) t!37364) tb!9579))

(declare-fun result!19715 () Bool)

(assert (=> tb!9579 (= result!19715 tp_is_empty!29289)))

(assert (=> b!1166827 t!37364))

(declare-fun b_and!40383 () Bool)

(assert (= b_and!40381 (and (=> t!37364 result!19715) b_and!40383)))

(declare-fun m!1074871 () Bool)

(assert (=> mapNonEmpty!45758 m!1074871))

(declare-fun m!1074873 () Bool)

(assert (=> start!99190 m!1074873))

(declare-fun m!1074875 () Bool)

(assert (=> start!99190 m!1074875))

(declare-fun m!1074877 () Bool)

(assert (=> b!1166839 m!1074877))

(declare-fun m!1074879 () Bool)

(assert (=> b!1166839 m!1074879))

(assert (=> b!1166839 m!1074879))

(declare-fun m!1074881 () Bool)

(assert (=> b!1166839 m!1074881))

(declare-fun m!1074883 () Bool)

(assert (=> b!1166839 m!1074883))

(declare-fun m!1074885 () Bool)

(assert (=> b!1166829 m!1074885))

(declare-fun m!1074887 () Bool)

(assert (=> b!1166829 m!1074887))

(declare-fun m!1074889 () Bool)

(assert (=> b!1166838 m!1074889))

(declare-fun m!1074891 () Bool)

(assert (=> b!1166837 m!1074891))

(declare-fun m!1074893 () Bool)

(assert (=> b!1166826 m!1074893))

(declare-fun m!1074895 () Bool)

(assert (=> b!1166840 m!1074895))

(declare-fun m!1074897 () Bool)

(assert (=> b!1166840 m!1074897))

(declare-fun m!1074899 () Bool)

(assert (=> b!1166828 m!1074899))

(declare-fun m!1074901 () Bool)

(assert (=> b!1166830 m!1074901))

(declare-fun m!1074903 () Bool)

(assert (=> b!1166836 m!1074903))

(declare-fun m!1074905 () Bool)

(assert (=> b!1166827 m!1074905))

(declare-fun m!1074907 () Bool)

(assert (=> b!1166827 m!1074907))

(declare-fun m!1074909 () Bool)

(assert (=> b!1166827 m!1074909))

(declare-fun m!1074911 () Bool)

(assert (=> b!1166827 m!1074911))

(check-sat (not mapNonEmpty!45758) tp_is_empty!29289 b_and!40383 (not b!1166838) (not b!1166836) (not b!1166826) (not b!1166830) (not b!1166840) (not b_next!24759) (not b!1166839) (not b!1166829) (not start!99190) (not b!1166827) (not b!1166837) (not b_lambda!19883))
(check-sat b_and!40383 (not b_next!24759))
