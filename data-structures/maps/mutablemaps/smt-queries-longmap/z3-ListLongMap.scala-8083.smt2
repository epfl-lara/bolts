; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99402 () Bool)

(assert start!99402)

(declare-fun b_free!24945 () Bool)

(declare-fun b_next!24945 () Bool)

(assert (=> start!99402 (= b_free!24945 (not b_next!24945))))

(declare-fun tp!87550 () Bool)

(declare-fun b_and!40771 () Bool)

(assert (=> start!99402 (= tp!87550 b_and!40771)))

(declare-fun b!1172131 () Bool)

(declare-fun e!666268 () Bool)

(declare-fun tp_is_empty!29475 () Bool)

(assert (=> b!1172131 (= e!666268 tp_is_empty!29475)))

(declare-fun b!1172132 () Bool)

(declare-fun e!666271 () Bool)

(declare-fun e!666280 () Bool)

(assert (=> b!1172132 (= e!666271 (not e!666280))))

(declare-fun res!778282 () Bool)

(assert (=> b!1172132 (=> res!778282 e!666280)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1172132 (= res!778282 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75726 0))(
  ( (array!75727 (arr!36509 (Array (_ BitVec 32) (_ BitVec 64))) (size!37046 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75726)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172132 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38554 0))(
  ( (Unit!38555) )
))
(declare-fun lt!528081 () Unit!38554)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75726 (_ BitVec 64) (_ BitVec 32)) Unit!38554)

(assert (=> b!1172132 (= lt!528081 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1172133 () Bool)

(declare-fun e!666272 () Bool)

(assert (=> b!1172133 (= e!666272 e!666271)))

(declare-fun res!778291 () Bool)

(assert (=> b!1172133 (=> (not res!778291) (not e!666271))))

(declare-fun lt!528083 () array!75726)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75726 (_ BitVec 32)) Bool)

(assert (=> b!1172133 (= res!778291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528083 mask!1564))))

(assert (=> b!1172133 (= lt!528083 (array!75727 (store (arr!36509 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37046 _keys!1208)))))

(declare-fun b!1172134 () Bool)

(declare-fun res!778286 () Bool)

(assert (=> b!1172134 (=> (not res!778286) (not e!666271))))

(declare-datatypes ((List!25769 0))(
  ( (Nil!25766) (Cons!25765 (h!26974 (_ BitVec 64)) (t!37713 List!25769)) )
))
(declare-fun arrayNoDuplicates!0 (array!75726 (_ BitVec 32) List!25769) Bool)

(assert (=> b!1172134 (= res!778286 (arrayNoDuplicates!0 lt!528083 #b00000000000000000000000000000000 Nil!25766))))

(declare-fun mapNonEmpty!46040 () Bool)

(declare-fun mapRes!46040 () Bool)

(declare-fun tp!87549 () Bool)

(assert (=> mapNonEmpty!46040 (= mapRes!46040 (and tp!87549 e!666268))))

(declare-datatypes ((V!44427 0))(
  ( (V!44428 (val!14794 Int)) )
))
(declare-datatypes ((ValueCell!14028 0))(
  ( (ValueCellFull!14028 (v!17433 V!44427)) (EmptyCell!14028) )
))
(declare-fun mapValue!46040 () ValueCell!14028)

(declare-fun mapRest!46040 () (Array (_ BitVec 32) ValueCell!14028))

(declare-datatypes ((array!75728 0))(
  ( (array!75729 (arr!36510 (Array (_ BitVec 32) ValueCell!14028)) (size!37047 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75728)

(declare-fun mapKey!46040 () (_ BitVec 32))

(assert (=> mapNonEmpty!46040 (= (arr!36510 _values!996) (store mapRest!46040 mapKey!46040 mapValue!46040))))

(declare-fun b!1172135 () Bool)

(declare-fun res!778295 () Bool)

(declare-fun e!666269 () Bool)

(assert (=> b!1172135 (=> res!778295 e!666269)))

(declare-fun contains!6873 (List!25769 (_ BitVec 64)) Bool)

(assert (=> b!1172135 (= res!778295 (contains!6873 Nil!25766 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172136 () Bool)

(declare-fun e!666274 () Bool)

(declare-fun e!666277 () Bool)

(assert (=> b!1172136 (= e!666274 (and e!666277 mapRes!46040))))

(declare-fun condMapEmpty!46040 () Bool)

(declare-fun mapDefault!46040 () ValueCell!14028)

(assert (=> b!1172136 (= condMapEmpty!46040 (= (arr!36510 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14028)) mapDefault!46040)))))

(declare-fun mapIsEmpty!46040 () Bool)

(assert (=> mapIsEmpty!46040 mapRes!46040))

(declare-fun b!1172137 () Bool)

(declare-fun res!778293 () Bool)

(assert (=> b!1172137 (=> (not res!778293) (not e!666272))))

(assert (=> b!1172137 (= res!778293 (= (select (arr!36509 _keys!1208) i!673) k0!934))))

(declare-fun b!1172138 () Bool)

(declare-fun res!778287 () Bool)

(assert (=> b!1172138 (=> res!778287 e!666269)))

(declare-fun noDuplicate!1638 (List!25769) Bool)

(assert (=> b!1172138 (= res!778287 (not (noDuplicate!1638 Nil!25766)))))

(declare-fun b!1172139 () Bool)

(declare-fun res!778280 () Bool)

(assert (=> b!1172139 (=> (not res!778280) (not e!666272))))

(assert (=> b!1172139 (= res!778280 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25766))))

(declare-fun b!1172140 () Bool)

(declare-fun e!666275 () Bool)

(declare-fun e!666278 () Bool)

(assert (=> b!1172140 (= e!666275 e!666278)))

(declare-fun res!778283 () Bool)

(assert (=> b!1172140 (=> res!778283 e!666278)))

(assert (=> b!1172140 (= res!778283 (not (= (select (arr!36509 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1172141 () Bool)

(declare-fun res!778284 () Bool)

(assert (=> b!1172141 (=> (not res!778284) (not e!666272))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1172141 (= res!778284 (and (= (size!37047 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37046 _keys!1208) (size!37047 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172142 () Bool)

(assert (=> b!1172142 (= e!666269 true)))

(declare-fun lt!528088 () Bool)

(assert (=> b!1172142 (= lt!528088 (contains!6873 Nil!25766 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172143 () Bool)

(declare-fun res!778279 () Bool)

(assert (=> b!1172143 (=> (not res!778279) (not e!666272))))

(assert (=> b!1172143 (= res!778279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1172144 () Bool)

(declare-fun res!778281 () Bool)

(assert (=> b!1172144 (=> (not res!778281) (not e!666272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172144 (= res!778281 (validKeyInArray!0 k0!934))))

(declare-fun b!1172145 () Bool)

(declare-fun e!666273 () Bool)

(declare-fun e!666270 () Bool)

(assert (=> b!1172145 (= e!666273 e!666270)))

(declare-fun res!778297 () Bool)

(assert (=> b!1172145 (=> res!778297 e!666270)))

(assert (=> b!1172145 (= res!778297 (not (validKeyInArray!0 (select (arr!36509 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!18996 0))(
  ( (tuple2!18997 (_1!9508 (_ BitVec 64)) (_2!9508 V!44427)) )
))
(declare-datatypes ((List!25770 0))(
  ( (Nil!25767) (Cons!25766 (h!26975 tuple2!18996) (t!37714 List!25770)) )
))
(declare-datatypes ((ListLongMap!16977 0))(
  ( (ListLongMap!16978 (toList!8504 List!25770)) )
))
(declare-fun lt!528086 () ListLongMap!16977)

(declare-fun lt!528085 () ListLongMap!16977)

(assert (=> b!1172145 (= lt!528086 lt!528085)))

(declare-fun lt!528090 () ListLongMap!16977)

(declare-fun -!1520 (ListLongMap!16977 (_ BitVec 64)) ListLongMap!16977)

(assert (=> b!1172145 (= lt!528085 (-!1520 lt!528090 k0!934))))

(declare-fun zeroValue!944 () V!44427)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528093 () array!75728)

(declare-fun minValue!944 () V!44427)

(declare-fun getCurrentListMapNoExtraKeys!4936 (array!75726 array!75728 (_ BitVec 32) (_ BitVec 32) V!44427 V!44427 (_ BitVec 32) Int) ListLongMap!16977)

(assert (=> b!1172145 (= lt!528086 (getCurrentListMapNoExtraKeys!4936 lt!528083 lt!528093 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1172145 (= lt!528090 (getCurrentListMapNoExtraKeys!4936 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528089 () Unit!38554)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!744 (array!75726 array!75728 (_ BitVec 32) (_ BitVec 32) V!44427 V!44427 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38554)

(assert (=> b!1172145 (= lt!528089 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!744 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1172146 () Bool)

(declare-fun res!778294 () Bool)

(assert (=> b!1172146 (=> (not res!778294) (not e!666272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172146 (= res!778294 (validMask!0 mask!1564))))

(declare-fun b!1172147 () Bool)

(declare-fun res!778290 () Bool)

(assert (=> b!1172147 (=> (not res!778290) (not e!666272))))

(assert (=> b!1172147 (= res!778290 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37046 _keys!1208))))))

(declare-fun b!1172148 () Bool)

(assert (=> b!1172148 (= e!666277 tp_is_empty!29475)))

(declare-fun res!778296 () Bool)

(assert (=> start!99402 (=> (not res!778296) (not e!666272))))

(assert (=> start!99402 (= res!778296 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37046 _keys!1208))))))

(assert (=> start!99402 e!666272))

(assert (=> start!99402 tp_is_empty!29475))

(declare-fun array_inv!27780 (array!75726) Bool)

(assert (=> start!99402 (array_inv!27780 _keys!1208)))

(assert (=> start!99402 true))

(assert (=> start!99402 tp!87550))

(declare-fun array_inv!27781 (array!75728) Bool)

(assert (=> start!99402 (and (array_inv!27781 _values!996) e!666274)))

(declare-fun b!1172149 () Bool)

(declare-fun e!666276 () Bool)

(assert (=> b!1172149 (= e!666270 e!666276)))

(declare-fun res!778289 () Bool)

(assert (=> b!1172149 (=> res!778289 e!666276)))

(assert (=> b!1172149 (= res!778289 (not (= (select (arr!36509 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1172149 e!666275))

(declare-fun res!778285 () Bool)

(assert (=> b!1172149 (=> (not res!778285) (not e!666275))))

(declare-fun lt!528082 () ListLongMap!16977)

(declare-fun lt!528092 () V!44427)

(declare-fun +!3742 (ListLongMap!16977 tuple2!18996) ListLongMap!16977)

(declare-fun get!18657 (ValueCell!14028 V!44427) V!44427)

(assert (=> b!1172149 (= res!778285 (= lt!528082 (+!3742 lt!528085 (tuple2!18997 (select (arr!36509 _keys!1208) from!1455) (get!18657 (select (arr!36510 _values!996) from!1455) lt!528092)))))))

(declare-fun b!1172150 () Bool)

(assert (=> b!1172150 (= e!666278 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1172151 () Bool)

(assert (=> b!1172151 (= e!666276 e!666269)))

(declare-fun res!778292 () Bool)

(assert (=> b!1172151 (=> res!778292 e!666269)))

(assert (=> b!1172151 (= res!778292 (or (bvsge (size!37046 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37046 _keys!1208)) (bvsge from!1455 (size!37046 _keys!1208))))))

(assert (=> b!1172151 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25766)))

(declare-fun lt!528091 () Unit!38554)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75726 (_ BitVec 32) (_ BitVec 32)) Unit!38554)

(assert (=> b!1172151 (= lt!528091 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1172151 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528084 () Unit!38554)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75726 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38554)

(assert (=> b!1172151 (= lt!528084 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1172152 () Bool)

(assert (=> b!1172152 (= e!666280 e!666273)))

(declare-fun res!778288 () Bool)

(assert (=> b!1172152 (=> res!778288 e!666273)))

(assert (=> b!1172152 (= res!778288 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1172152 (= lt!528082 (getCurrentListMapNoExtraKeys!4936 lt!528083 lt!528093 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1172152 (= lt!528093 (array!75729 (store (arr!36510 _values!996) i!673 (ValueCellFull!14028 lt!528092)) (size!37047 _values!996)))))

(declare-fun dynLambda!2924 (Int (_ BitVec 64)) V!44427)

(assert (=> b!1172152 (= lt!528092 (dynLambda!2924 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528087 () ListLongMap!16977)

(assert (=> b!1172152 (= lt!528087 (getCurrentListMapNoExtraKeys!4936 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!99402 res!778296) b!1172146))

(assert (= (and b!1172146 res!778294) b!1172141))

(assert (= (and b!1172141 res!778284) b!1172143))

(assert (= (and b!1172143 res!778279) b!1172139))

(assert (= (and b!1172139 res!778280) b!1172147))

(assert (= (and b!1172147 res!778290) b!1172144))

(assert (= (and b!1172144 res!778281) b!1172137))

(assert (= (and b!1172137 res!778293) b!1172133))

(assert (= (and b!1172133 res!778291) b!1172134))

(assert (= (and b!1172134 res!778286) b!1172132))

(assert (= (and b!1172132 (not res!778282)) b!1172152))

(assert (= (and b!1172152 (not res!778288)) b!1172145))

(assert (= (and b!1172145 (not res!778297)) b!1172149))

(assert (= (and b!1172149 res!778285) b!1172140))

(assert (= (and b!1172140 (not res!778283)) b!1172150))

(assert (= (and b!1172149 (not res!778289)) b!1172151))

(assert (= (and b!1172151 (not res!778292)) b!1172138))

(assert (= (and b!1172138 (not res!778287)) b!1172135))

(assert (= (and b!1172135 (not res!778295)) b!1172142))

(assert (= (and b!1172136 condMapEmpty!46040) mapIsEmpty!46040))

(assert (= (and b!1172136 (not condMapEmpty!46040)) mapNonEmpty!46040))

(get-info :version)

(assert (= (and mapNonEmpty!46040 ((_ is ValueCellFull!14028) mapValue!46040)) b!1172131))

(assert (= (and b!1172136 ((_ is ValueCellFull!14028) mapDefault!46040)) b!1172148))

(assert (= start!99402 b!1172136))

(declare-fun b_lambda!20107 () Bool)

(assert (=> (not b_lambda!20107) (not b!1172152)))

(declare-fun t!37712 () Bool)

(declare-fun tb!9765 () Bool)

(assert (=> (and start!99402 (= defaultEntry!1004 defaultEntry!1004) t!37712) tb!9765))

(declare-fun result!20089 () Bool)

(assert (=> tb!9765 (= result!20089 tp_is_empty!29475)))

(assert (=> b!1172152 t!37712))

(declare-fun b_and!40773 () Bool)

(assert (= b_and!40771 (and (=> t!37712 result!20089) b_and!40773)))

(declare-fun m!1080001 () Bool)

(assert (=> b!1172146 m!1080001))

(declare-fun m!1080003 () Bool)

(assert (=> b!1172134 m!1080003))

(declare-fun m!1080005 () Bool)

(assert (=> b!1172142 m!1080005))

(declare-fun m!1080007 () Bool)

(assert (=> b!1172140 m!1080007))

(declare-fun m!1080009 () Bool)

(assert (=> b!1172137 m!1080009))

(declare-fun m!1080011 () Bool)

(assert (=> b!1172138 m!1080011))

(declare-fun m!1080013 () Bool)

(assert (=> b!1172143 m!1080013))

(declare-fun m!1080015 () Bool)

(assert (=> b!1172133 m!1080015))

(declare-fun m!1080017 () Bool)

(assert (=> b!1172133 m!1080017))

(declare-fun m!1080019 () Bool)

(assert (=> b!1172151 m!1080019))

(declare-fun m!1080021 () Bool)

(assert (=> b!1172151 m!1080021))

(declare-fun m!1080023 () Bool)

(assert (=> b!1172151 m!1080023))

(declare-fun m!1080025 () Bool)

(assert (=> b!1172151 m!1080025))

(declare-fun m!1080027 () Bool)

(assert (=> start!99402 m!1080027))

(declare-fun m!1080029 () Bool)

(assert (=> start!99402 m!1080029))

(declare-fun m!1080031 () Bool)

(assert (=> b!1172152 m!1080031))

(declare-fun m!1080033 () Bool)

(assert (=> b!1172152 m!1080033))

(declare-fun m!1080035 () Bool)

(assert (=> b!1172152 m!1080035))

(declare-fun m!1080037 () Bool)

(assert (=> b!1172152 m!1080037))

(declare-fun m!1080039 () Bool)

(assert (=> mapNonEmpty!46040 m!1080039))

(assert (=> b!1172149 m!1080007))

(declare-fun m!1080041 () Bool)

(assert (=> b!1172149 m!1080041))

(assert (=> b!1172149 m!1080041))

(declare-fun m!1080043 () Bool)

(assert (=> b!1172149 m!1080043))

(declare-fun m!1080045 () Bool)

(assert (=> b!1172149 m!1080045))

(declare-fun m!1080047 () Bool)

(assert (=> b!1172144 m!1080047))

(declare-fun m!1080049 () Bool)

(assert (=> b!1172132 m!1080049))

(declare-fun m!1080051 () Bool)

(assert (=> b!1172132 m!1080051))

(declare-fun m!1080053 () Bool)

(assert (=> b!1172150 m!1080053))

(declare-fun m!1080055 () Bool)

(assert (=> b!1172135 m!1080055))

(declare-fun m!1080057 () Bool)

(assert (=> b!1172145 m!1080057))

(declare-fun m!1080059 () Bool)

(assert (=> b!1172145 m!1080059))

(declare-fun m!1080061 () Bool)

(assert (=> b!1172145 m!1080061))

(declare-fun m!1080063 () Bool)

(assert (=> b!1172145 m!1080063))

(assert (=> b!1172145 m!1080007))

(declare-fun m!1080065 () Bool)

(assert (=> b!1172145 m!1080065))

(assert (=> b!1172145 m!1080007))

(declare-fun m!1080067 () Bool)

(assert (=> b!1172139 m!1080067))

(check-sat (not b!1172133) (not b!1172142) (not b!1172152) (not b!1172134) (not b_next!24945) tp_is_empty!29475 (not b!1172149) (not b!1172151) (not b!1172150) (not b!1172143) (not b!1172144) (not b_lambda!20107) (not start!99402) (not b!1172145) (not b!1172139) (not b!1172132) (not b!1172146) (not b!1172135) (not b!1172138) (not mapNonEmpty!46040) b_and!40773)
(check-sat b_and!40773 (not b_next!24945))
