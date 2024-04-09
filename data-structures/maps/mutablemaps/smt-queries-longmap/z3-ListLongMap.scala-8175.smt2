; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99954 () Bool)

(assert start!99954)

(declare-fun b_free!25497 () Bool)

(declare-fun b_next!25497 () Bool)

(assert (=> start!99954 (= b_free!25497 (not b_next!25497))))

(declare-fun tp!89206 () Bool)

(declare-fun b_and!41875 () Bool)

(assert (=> start!99954 (= tp!89206 b_and!41875)))

(declare-fun mapIsEmpty!46868 () Bool)

(declare-fun mapRes!46868 () Bool)

(assert (=> mapIsEmpty!46868 mapRes!46868))

(declare-fun b!1189289 () Bool)

(declare-fun res!790935 () Bool)

(declare-fun e!676211 () Bool)

(assert (=> b!1189289 (=> (not res!790935) (not e!676211))))

(declare-datatypes ((array!76820 0))(
  ( (array!76821 (arr!37056 (Array (_ BitVec 32) (_ BitVec 64))) (size!37593 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76820)

(declare-datatypes ((List!26244 0))(
  ( (Nil!26241) (Cons!26240 (h!27449 (_ BitVec 64)) (t!38740 List!26244)) )
))
(declare-fun arrayNoDuplicates!0 (array!76820 (_ BitVec 32) List!26244) Bool)

(assert (=> b!1189289 (= res!790935 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26241))))

(declare-fun b!1189290 () Bool)

(declare-fun e!676213 () Bool)

(assert (=> b!1189290 (= e!676211 e!676213)))

(declare-fun res!790926 () Bool)

(assert (=> b!1189290 (=> (not res!790926) (not e!676213))))

(declare-fun lt!540982 () array!76820)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76820 (_ BitVec 32)) Bool)

(assert (=> b!1189290 (= res!790926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540982 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189290 (= lt!540982 (array!76821 (store (arr!37056 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37593 _keys!1208)))))

(declare-fun b!1189291 () Bool)

(declare-fun res!790934 () Bool)

(assert (=> b!1189291 (=> (not res!790934) (not e!676211))))

(assert (=> b!1189291 (= res!790934 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37593 _keys!1208))))))

(declare-fun b!1189292 () Bool)

(declare-fun e!676210 () Bool)

(declare-fun e!676212 () Bool)

(assert (=> b!1189292 (= e!676210 e!676212)))

(declare-fun res!790929 () Bool)

(assert (=> b!1189292 (=> res!790929 e!676212)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1189292 (= res!790929 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45163 0))(
  ( (V!45164 (val!15070 Int)) )
))
(declare-fun zeroValue!944 () V!45163)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19484 0))(
  ( (tuple2!19485 (_1!9752 (_ BitVec 64)) (_2!9752 V!45163)) )
))
(declare-datatypes ((List!26245 0))(
  ( (Nil!26242) (Cons!26241 (h!27450 tuple2!19484) (t!38741 List!26245)) )
))
(declare-datatypes ((ListLongMap!17465 0))(
  ( (ListLongMap!17466 (toList!8748 List!26245)) )
))
(declare-fun lt!540979 () ListLongMap!17465)

(declare-fun minValue!944 () V!45163)

(declare-datatypes ((ValueCell!14304 0))(
  ( (ValueCellFull!14304 (v!17709 V!45163)) (EmptyCell!14304) )
))
(declare-datatypes ((array!76822 0))(
  ( (array!76823 (arr!37057 (Array (_ BitVec 32) ValueCell!14304)) (size!37594 (_ BitVec 32))) )
))
(declare-fun lt!540980 () array!76822)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5162 (array!76820 array!76822 (_ BitVec 32) (_ BitVec 32) V!45163 V!45163 (_ BitVec 32) Int) ListLongMap!17465)

(assert (=> b!1189292 (= lt!540979 (getCurrentListMapNoExtraKeys!5162 lt!540982 lt!540980 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76822)

(declare-fun dynLambda!3115 (Int (_ BitVec 64)) V!45163)

(assert (=> b!1189292 (= lt!540980 (array!76823 (store (arr!37057 _values!996) i!673 (ValueCellFull!14304 (dynLambda!3115 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37594 _values!996)))))

(declare-fun lt!540983 () ListLongMap!17465)

(assert (=> b!1189292 (= lt!540983 (getCurrentListMapNoExtraKeys!5162 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189293 () Bool)

(assert (=> b!1189293 (= e!676212 true)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1731 (ListLongMap!17465 (_ BitVec 64)) ListLongMap!17465)

(assert (=> b!1189293 (= (getCurrentListMapNoExtraKeys!5162 lt!540982 lt!540980 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1731 (getCurrentListMapNoExtraKeys!5162 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39388 0))(
  ( (Unit!39389) )
))
(declare-fun lt!540984 () Unit!39388)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!937 (array!76820 array!76822 (_ BitVec 32) (_ BitVec 32) V!45163 V!45163 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39388)

(assert (=> b!1189293 (= lt!540984 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!937 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189294 () Bool)

(declare-fun e!676208 () Bool)

(declare-fun tp_is_empty!30027 () Bool)

(assert (=> b!1189294 (= e!676208 tp_is_empty!30027)))

(declare-fun mapNonEmpty!46868 () Bool)

(declare-fun tp!89205 () Bool)

(assert (=> mapNonEmpty!46868 (= mapRes!46868 (and tp!89205 e!676208))))

(declare-fun mapKey!46868 () (_ BitVec 32))

(declare-fun mapValue!46868 () ValueCell!14304)

(declare-fun mapRest!46868 () (Array (_ BitVec 32) ValueCell!14304))

(assert (=> mapNonEmpty!46868 (= (arr!37057 _values!996) (store mapRest!46868 mapKey!46868 mapValue!46868))))

(declare-fun b!1189295 () Bool)

(declare-fun res!790933 () Bool)

(assert (=> b!1189295 (=> (not res!790933) (not e!676211))))

(assert (=> b!1189295 (= res!790933 (and (= (size!37594 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37593 _keys!1208) (size!37594 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189296 () Bool)

(declare-fun res!790925 () Bool)

(assert (=> b!1189296 (=> (not res!790925) (not e!676211))))

(assert (=> b!1189296 (= res!790925 (= (select (arr!37056 _keys!1208) i!673) k0!934))))

(declare-fun res!790927 () Bool)

(assert (=> start!99954 (=> (not res!790927) (not e!676211))))

(assert (=> start!99954 (= res!790927 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37593 _keys!1208))))))

(assert (=> start!99954 e!676211))

(assert (=> start!99954 tp_is_empty!30027))

(declare-fun array_inv!28156 (array!76820) Bool)

(assert (=> start!99954 (array_inv!28156 _keys!1208)))

(assert (=> start!99954 true))

(assert (=> start!99954 tp!89206))

(declare-fun e!676206 () Bool)

(declare-fun array_inv!28157 (array!76822) Bool)

(assert (=> start!99954 (and (array_inv!28157 _values!996) e!676206)))

(declare-fun b!1189297 () Bool)

(declare-fun res!790936 () Bool)

(assert (=> b!1189297 (=> (not res!790936) (not e!676211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189297 (= res!790936 (validKeyInArray!0 k0!934))))

(declare-fun b!1189298 () Bool)

(declare-fun res!790931 () Bool)

(assert (=> b!1189298 (=> (not res!790931) (not e!676211))))

(assert (=> b!1189298 (= res!790931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189299 () Bool)

(declare-fun res!790928 () Bool)

(assert (=> b!1189299 (=> (not res!790928) (not e!676211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189299 (= res!790928 (validMask!0 mask!1564))))

(declare-fun b!1189300 () Bool)

(declare-fun res!790932 () Bool)

(assert (=> b!1189300 (=> (not res!790932) (not e!676213))))

(assert (=> b!1189300 (= res!790932 (arrayNoDuplicates!0 lt!540982 #b00000000000000000000000000000000 Nil!26241))))

(declare-fun b!1189301 () Bool)

(declare-fun e!676207 () Bool)

(assert (=> b!1189301 (= e!676206 (and e!676207 mapRes!46868))))

(declare-fun condMapEmpty!46868 () Bool)

(declare-fun mapDefault!46868 () ValueCell!14304)

(assert (=> b!1189301 (= condMapEmpty!46868 (= (arr!37057 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14304)) mapDefault!46868)))))

(declare-fun b!1189302 () Bool)

(assert (=> b!1189302 (= e!676207 tp_is_empty!30027)))

(declare-fun b!1189303 () Bool)

(assert (=> b!1189303 (= e!676213 (not e!676210))))

(declare-fun res!790930 () Bool)

(assert (=> b!1189303 (=> res!790930 e!676210)))

(assert (=> b!1189303 (= res!790930 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189303 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!540981 () Unit!39388)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76820 (_ BitVec 64) (_ BitVec 32)) Unit!39388)

(assert (=> b!1189303 (= lt!540981 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!99954 res!790927) b!1189299))

(assert (= (and b!1189299 res!790928) b!1189295))

(assert (= (and b!1189295 res!790933) b!1189298))

(assert (= (and b!1189298 res!790931) b!1189289))

(assert (= (and b!1189289 res!790935) b!1189291))

(assert (= (and b!1189291 res!790934) b!1189297))

(assert (= (and b!1189297 res!790936) b!1189296))

(assert (= (and b!1189296 res!790925) b!1189290))

(assert (= (and b!1189290 res!790926) b!1189300))

(assert (= (and b!1189300 res!790932) b!1189303))

(assert (= (and b!1189303 (not res!790930)) b!1189292))

(assert (= (and b!1189292 (not res!790929)) b!1189293))

(assert (= (and b!1189301 condMapEmpty!46868) mapIsEmpty!46868))

(assert (= (and b!1189301 (not condMapEmpty!46868)) mapNonEmpty!46868))

(get-info :version)

(assert (= (and mapNonEmpty!46868 ((_ is ValueCellFull!14304) mapValue!46868)) b!1189294))

(assert (= (and b!1189301 ((_ is ValueCellFull!14304) mapDefault!46868)) b!1189302))

(assert (= start!99954 b!1189301))

(declare-fun b_lambda!20659 () Bool)

(assert (=> (not b_lambda!20659) (not b!1189292)))

(declare-fun t!38739 () Bool)

(declare-fun tb!10317 () Bool)

(assert (=> (and start!99954 (= defaultEntry!1004 defaultEntry!1004) t!38739) tb!10317))

(declare-fun result!21193 () Bool)

(assert (=> tb!10317 (= result!21193 tp_is_empty!30027)))

(assert (=> b!1189292 t!38739))

(declare-fun b_and!41877 () Bool)

(assert (= b_and!41875 (and (=> t!38739 result!21193) b_and!41877)))

(declare-fun m!1098029 () Bool)

(assert (=> b!1189297 m!1098029))

(declare-fun m!1098031 () Bool)

(assert (=> b!1189300 m!1098031))

(declare-fun m!1098033 () Bool)

(assert (=> b!1189296 m!1098033))

(declare-fun m!1098035 () Bool)

(assert (=> b!1189290 m!1098035))

(declare-fun m!1098037 () Bool)

(assert (=> b!1189290 m!1098037))

(declare-fun m!1098039 () Bool)

(assert (=> b!1189303 m!1098039))

(declare-fun m!1098041 () Bool)

(assert (=> b!1189303 m!1098041))

(declare-fun m!1098043 () Bool)

(assert (=> start!99954 m!1098043))

(declare-fun m!1098045 () Bool)

(assert (=> start!99954 m!1098045))

(declare-fun m!1098047 () Bool)

(assert (=> b!1189298 m!1098047))

(declare-fun m!1098049 () Bool)

(assert (=> b!1189292 m!1098049))

(declare-fun m!1098051 () Bool)

(assert (=> b!1189292 m!1098051))

(declare-fun m!1098053 () Bool)

(assert (=> b!1189292 m!1098053))

(declare-fun m!1098055 () Bool)

(assert (=> b!1189292 m!1098055))

(declare-fun m!1098057 () Bool)

(assert (=> b!1189289 m!1098057))

(declare-fun m!1098059 () Bool)

(assert (=> mapNonEmpty!46868 m!1098059))

(declare-fun m!1098061 () Bool)

(assert (=> b!1189299 m!1098061))

(declare-fun m!1098063 () Bool)

(assert (=> b!1189293 m!1098063))

(declare-fun m!1098065 () Bool)

(assert (=> b!1189293 m!1098065))

(assert (=> b!1189293 m!1098065))

(declare-fun m!1098067 () Bool)

(assert (=> b!1189293 m!1098067))

(declare-fun m!1098069 () Bool)

(assert (=> b!1189293 m!1098069))

(check-sat (not b!1189297) (not b_lambda!20659) b_and!41877 (not b!1189292) (not b!1189299) (not b!1189303) (not b!1189290) (not b!1189300) (not mapNonEmpty!46868) (not b!1189298) (not b_next!25497) (not b!1189293) (not start!99954) tp_is_empty!30027 (not b!1189289))
(check-sat b_and!41877 (not b_next!25497))
