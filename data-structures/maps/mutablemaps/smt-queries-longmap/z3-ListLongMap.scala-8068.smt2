; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99312 () Bool)

(assert start!99312)

(declare-fun b_free!24855 () Bool)

(declare-fun b_next!24855 () Bool)

(assert (=> start!99312 (= b_free!24855 (not b_next!24855))))

(declare-fun tp!87279 () Bool)

(declare-fun b_and!40591 () Bool)

(assert (=> start!99312 (= tp!87279 b_and!40591)))

(declare-datatypes ((array!75546 0))(
  ( (array!75547 (arr!36419 (Array (_ BitVec 32) (_ BitVec 64))) (size!36956 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75546)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!664629 () Bool)

(declare-fun b!1169330 () Bool)

(declare-fun arrayContainsKey!0 (array!75546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169330 (= e!664629 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1169331 () Bool)

(declare-fun e!664624 () Bool)

(declare-fun tp_is_empty!29385 () Bool)

(assert (=> b!1169331 (= e!664624 tp_is_empty!29385)))

(declare-fun b!1169332 () Bool)

(declare-fun e!664626 () Bool)

(declare-fun e!664622 () Bool)

(declare-fun mapRes!45905 () Bool)

(assert (=> b!1169332 (= e!664626 (and e!664622 mapRes!45905))))

(declare-fun condMapEmpty!45905 () Bool)

(declare-datatypes ((V!44307 0))(
  ( (V!44308 (val!14749 Int)) )
))
(declare-datatypes ((ValueCell!13983 0))(
  ( (ValueCellFull!13983 (v!17388 V!44307)) (EmptyCell!13983) )
))
(declare-datatypes ((array!75548 0))(
  ( (array!75549 (arr!36420 (Array (_ BitVec 32) ValueCell!13983)) (size!36957 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75548)

(declare-fun mapDefault!45905 () ValueCell!13983)

(assert (=> b!1169332 (= condMapEmpty!45905 (= (arr!36420 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13983)) mapDefault!45905)))))

(declare-fun res!775978 () Bool)

(declare-fun e!664620 () Bool)

(assert (=> start!99312 (=> (not res!775978) (not e!664620))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99312 (= res!775978 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36956 _keys!1208))))))

(assert (=> start!99312 e!664620))

(assert (=> start!99312 tp_is_empty!29385))

(declare-fun array_inv!27716 (array!75546) Bool)

(assert (=> start!99312 (array_inv!27716 _keys!1208)))

(assert (=> start!99312 true))

(assert (=> start!99312 tp!87279))

(declare-fun array_inv!27717 (array!75548) Bool)

(assert (=> start!99312 (and (array_inv!27717 _values!996) e!664626)))

(declare-fun b!1169333 () Bool)

(declare-fun e!664623 () Bool)

(assert (=> b!1169333 (= e!664623 true)))

(declare-fun e!664627 () Bool)

(assert (=> b!1169333 e!664627))

(declare-fun res!775985 () Bool)

(assert (=> b!1169333 (=> (not res!775985) (not e!664627))))

(declare-fun lt!526510 () V!44307)

(declare-datatypes ((tuple2!18916 0))(
  ( (tuple2!18917 (_1!9468 (_ BitVec 64)) (_2!9468 V!44307)) )
))
(declare-datatypes ((List!25688 0))(
  ( (Nil!25685) (Cons!25684 (h!26893 tuple2!18916) (t!37542 List!25688)) )
))
(declare-datatypes ((ListLongMap!16897 0))(
  ( (ListLongMap!16898 (toList!8464 List!25688)) )
))
(declare-fun lt!526513 () ListLongMap!16897)

(declare-fun lt!526516 () ListLongMap!16897)

(declare-fun +!3712 (ListLongMap!16897 tuple2!18916) ListLongMap!16897)

(declare-fun get!18597 (ValueCell!13983 V!44307) V!44307)

(assert (=> b!1169333 (= res!775985 (= lt!526513 (+!3712 lt!526516 (tuple2!18917 (select (arr!36419 _keys!1208) from!1455) (get!18597 (select (arr!36420 _values!996) from!1455) lt!526510)))))))

(declare-fun b!1169334 () Bool)

(declare-fun e!664630 () Bool)

(declare-fun e!664625 () Bool)

(assert (=> b!1169334 (= e!664630 (not e!664625))))

(declare-fun res!775980 () Bool)

(assert (=> b!1169334 (=> res!775980 e!664625)))

(assert (=> b!1169334 (= res!775980 (bvsgt from!1455 i!673))))

(assert (=> b!1169334 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38474 0))(
  ( (Unit!38475) )
))
(declare-fun lt!526518 () Unit!38474)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75546 (_ BitVec 64) (_ BitVec 32)) Unit!38474)

(assert (=> b!1169334 (= lt!526518 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1169335 () Bool)

(declare-fun res!775987 () Bool)

(assert (=> b!1169335 (=> (not res!775987) (not e!664620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169335 (= res!775987 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!45905 () Bool)

(assert (=> mapIsEmpty!45905 mapRes!45905))

(declare-fun b!1169336 () Bool)

(assert (=> b!1169336 (= e!664627 e!664629)))

(declare-fun res!775979 () Bool)

(assert (=> b!1169336 (=> res!775979 e!664629)))

(assert (=> b!1169336 (= res!775979 (not (= (select (arr!36419 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1169337 () Bool)

(declare-fun res!775982 () Bool)

(assert (=> b!1169337 (=> (not res!775982) (not e!664630))))

(declare-fun lt!526515 () array!75546)

(declare-datatypes ((List!25689 0))(
  ( (Nil!25686) (Cons!25685 (h!26894 (_ BitVec 64)) (t!37543 List!25689)) )
))
(declare-fun arrayNoDuplicates!0 (array!75546 (_ BitVec 32) List!25689) Bool)

(assert (=> b!1169337 (= res!775982 (arrayNoDuplicates!0 lt!526515 #b00000000000000000000000000000000 Nil!25686))))

(declare-fun b!1169338 () Bool)

(declare-fun res!775984 () Bool)

(assert (=> b!1169338 (=> (not res!775984) (not e!664620))))

(assert (=> b!1169338 (= res!775984 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36956 _keys!1208))))))

(declare-fun b!1169339 () Bool)

(declare-fun res!775975 () Bool)

(assert (=> b!1169339 (=> (not res!775975) (not e!664620))))

(assert (=> b!1169339 (= res!775975 (= (select (arr!36419 _keys!1208) i!673) k0!934))))

(declare-fun b!1169340 () Bool)

(declare-fun e!664628 () Bool)

(assert (=> b!1169340 (= e!664628 e!664623)))

(declare-fun res!775986 () Bool)

(assert (=> b!1169340 (=> res!775986 e!664623)))

(assert (=> b!1169340 (= res!775986 (not (validKeyInArray!0 (select (arr!36419 _keys!1208) from!1455))))))

(declare-fun lt!526511 () ListLongMap!16897)

(assert (=> b!1169340 (= lt!526511 lt!526516)))

(declare-fun lt!526514 () ListLongMap!16897)

(declare-fun -!1489 (ListLongMap!16897 (_ BitVec 64)) ListLongMap!16897)

(assert (=> b!1169340 (= lt!526516 (-!1489 lt!526514 k0!934))))

(declare-fun zeroValue!944 () V!44307)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44307)

(declare-fun lt!526517 () array!75548)

(declare-fun getCurrentListMapNoExtraKeys!4897 (array!75546 array!75548 (_ BitVec 32) (_ BitVec 32) V!44307 V!44307 (_ BitVec 32) Int) ListLongMap!16897)

(assert (=> b!1169340 (= lt!526511 (getCurrentListMapNoExtraKeys!4897 lt!526515 lt!526517 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1169340 (= lt!526514 (getCurrentListMapNoExtraKeys!4897 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526509 () Unit!38474)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!713 (array!75546 array!75548 (_ BitVec 32) (_ BitVec 32) V!44307 V!44307 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38474)

(assert (=> b!1169340 (= lt!526509 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!713 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45905 () Bool)

(declare-fun tp!87280 () Bool)

(assert (=> mapNonEmpty!45905 (= mapRes!45905 (and tp!87280 e!664624))))

(declare-fun mapValue!45905 () ValueCell!13983)

(declare-fun mapKey!45905 () (_ BitVec 32))

(declare-fun mapRest!45905 () (Array (_ BitVec 32) ValueCell!13983))

(assert (=> mapNonEmpty!45905 (= (arr!36420 _values!996) (store mapRest!45905 mapKey!45905 mapValue!45905))))

(declare-fun b!1169341 () Bool)

(declare-fun res!775977 () Bool)

(assert (=> b!1169341 (=> (not res!775977) (not e!664620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169341 (= res!775977 (validMask!0 mask!1564))))

(declare-fun b!1169342 () Bool)

(assert (=> b!1169342 (= e!664625 e!664628)))

(declare-fun res!775983 () Bool)

(assert (=> b!1169342 (=> res!775983 e!664628)))

(assert (=> b!1169342 (= res!775983 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1169342 (= lt!526513 (getCurrentListMapNoExtraKeys!4897 lt!526515 lt!526517 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1169342 (= lt!526517 (array!75549 (store (arr!36420 _values!996) i!673 (ValueCellFull!13983 lt!526510)) (size!36957 _values!996)))))

(declare-fun dynLambda!2888 (Int (_ BitVec 64)) V!44307)

(assert (=> b!1169342 (= lt!526510 (dynLambda!2888 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526512 () ListLongMap!16897)

(assert (=> b!1169342 (= lt!526512 (getCurrentListMapNoExtraKeys!4897 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169343 () Bool)

(declare-fun res!775974 () Bool)

(assert (=> b!1169343 (=> (not res!775974) (not e!664620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75546 (_ BitVec 32)) Bool)

(assert (=> b!1169343 (= res!775974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169344 () Bool)

(assert (=> b!1169344 (= e!664622 tp_is_empty!29385)))

(declare-fun b!1169345 () Bool)

(declare-fun res!775973 () Bool)

(assert (=> b!1169345 (=> (not res!775973) (not e!664620))))

(assert (=> b!1169345 (= res!775973 (and (= (size!36957 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36956 _keys!1208) (size!36957 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169346 () Bool)

(declare-fun res!775981 () Bool)

(assert (=> b!1169346 (=> (not res!775981) (not e!664620))))

(assert (=> b!1169346 (= res!775981 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25686))))

(declare-fun b!1169347 () Bool)

(assert (=> b!1169347 (= e!664620 e!664630)))

(declare-fun res!775976 () Bool)

(assert (=> b!1169347 (=> (not res!775976) (not e!664630))))

(assert (=> b!1169347 (= res!775976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526515 mask!1564))))

(assert (=> b!1169347 (= lt!526515 (array!75547 (store (arr!36419 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36956 _keys!1208)))))

(assert (= (and start!99312 res!775978) b!1169341))

(assert (= (and b!1169341 res!775977) b!1169345))

(assert (= (and b!1169345 res!775973) b!1169343))

(assert (= (and b!1169343 res!775974) b!1169346))

(assert (= (and b!1169346 res!775981) b!1169338))

(assert (= (and b!1169338 res!775984) b!1169335))

(assert (= (and b!1169335 res!775987) b!1169339))

(assert (= (and b!1169339 res!775975) b!1169347))

(assert (= (and b!1169347 res!775976) b!1169337))

(assert (= (and b!1169337 res!775982) b!1169334))

(assert (= (and b!1169334 (not res!775980)) b!1169342))

(assert (= (and b!1169342 (not res!775983)) b!1169340))

(assert (= (and b!1169340 (not res!775986)) b!1169333))

(assert (= (and b!1169333 res!775985) b!1169336))

(assert (= (and b!1169336 (not res!775979)) b!1169330))

(assert (= (and b!1169332 condMapEmpty!45905) mapIsEmpty!45905))

(assert (= (and b!1169332 (not condMapEmpty!45905)) mapNonEmpty!45905))

(get-info :version)

(assert (= (and mapNonEmpty!45905 ((_ is ValueCellFull!13983) mapValue!45905)) b!1169331))

(assert (= (and b!1169332 ((_ is ValueCellFull!13983) mapDefault!45905)) b!1169344))

(assert (= start!99312 b!1169332))

(declare-fun b_lambda!20017 () Bool)

(assert (=> (not b_lambda!20017) (not b!1169342)))

(declare-fun t!37541 () Bool)

(declare-fun tb!9675 () Bool)

(assert (=> (and start!99312 (= defaultEntry!1004 defaultEntry!1004) t!37541) tb!9675))

(declare-fun result!19909 () Bool)

(assert (=> tb!9675 (= result!19909 tp_is_empty!29385)))

(assert (=> b!1169342 t!37541))

(declare-fun b_and!40593 () Bool)

(assert (= b_and!40591 (and (=> t!37541 result!19909) b_and!40593)))

(declare-fun m!1077245 () Bool)

(assert (=> b!1169347 m!1077245))

(declare-fun m!1077247 () Bool)

(assert (=> b!1169347 m!1077247))

(declare-fun m!1077249 () Bool)

(assert (=> b!1169346 m!1077249))

(declare-fun m!1077251 () Bool)

(assert (=> b!1169337 m!1077251))

(declare-fun m!1077253 () Bool)

(assert (=> b!1169333 m!1077253))

(declare-fun m!1077255 () Bool)

(assert (=> b!1169333 m!1077255))

(assert (=> b!1169333 m!1077255))

(declare-fun m!1077257 () Bool)

(assert (=> b!1169333 m!1077257))

(declare-fun m!1077259 () Bool)

(assert (=> b!1169333 m!1077259))

(declare-fun m!1077261 () Bool)

(assert (=> b!1169330 m!1077261))

(declare-fun m!1077263 () Bool)

(assert (=> b!1169340 m!1077263))

(declare-fun m!1077265 () Bool)

(assert (=> b!1169340 m!1077265))

(declare-fun m!1077267 () Bool)

(assert (=> b!1169340 m!1077267))

(assert (=> b!1169340 m!1077253))

(declare-fun m!1077269 () Bool)

(assert (=> b!1169340 m!1077269))

(assert (=> b!1169340 m!1077253))

(declare-fun m!1077271 () Bool)

(assert (=> b!1169340 m!1077271))

(declare-fun m!1077273 () Bool)

(assert (=> b!1169343 m!1077273))

(assert (=> b!1169336 m!1077253))

(declare-fun m!1077275 () Bool)

(assert (=> b!1169335 m!1077275))

(declare-fun m!1077277 () Bool)

(assert (=> b!1169339 m!1077277))

(declare-fun m!1077279 () Bool)

(assert (=> b!1169342 m!1077279))

(declare-fun m!1077281 () Bool)

(assert (=> b!1169342 m!1077281))

(declare-fun m!1077283 () Bool)

(assert (=> b!1169342 m!1077283))

(declare-fun m!1077285 () Bool)

(assert (=> b!1169342 m!1077285))

(declare-fun m!1077287 () Bool)

(assert (=> mapNonEmpty!45905 m!1077287))

(declare-fun m!1077289 () Bool)

(assert (=> b!1169341 m!1077289))

(declare-fun m!1077291 () Bool)

(assert (=> start!99312 m!1077291))

(declare-fun m!1077293 () Bool)

(assert (=> start!99312 m!1077293))

(declare-fun m!1077295 () Bool)

(assert (=> b!1169334 m!1077295))

(declare-fun m!1077297 () Bool)

(assert (=> b!1169334 m!1077297))

(check-sat (not b!1169337) (not b!1169343) (not start!99312) (not mapNonEmpty!45905) (not b!1169334) (not b!1169342) (not b!1169346) (not b!1169330) (not b!1169335) (not b_lambda!20017) tp_is_empty!29385 (not b!1169347) b_and!40593 (not b!1169333) (not b_next!24855) (not b!1169340) (not b!1169341))
(check-sat b_and!40593 (not b_next!24855))
