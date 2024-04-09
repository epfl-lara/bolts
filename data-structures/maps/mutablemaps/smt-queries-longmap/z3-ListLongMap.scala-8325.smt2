; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101362 () Bool)

(assert start!101362)

(declare-fun b_free!26223 () Bool)

(declare-fun b_next!26223 () Bool)

(assert (=> start!101362 (= b_free!26223 (not b_next!26223))))

(declare-fun tp!91695 () Bool)

(declare-fun b_and!43591 () Bool)

(assert (=> start!101362 (= tp!91695 b_and!43591)))

(declare-fun res!808516 () Bool)

(declare-fun e!691171 () Bool)

(assert (=> start!101362 (=> (not res!808516) (not e!691171))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78602 0))(
  ( (array!78603 (arr!37931 (Array (_ BitVec 32) (_ BitVec 64))) (size!38468 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78602)

(assert (=> start!101362 (= res!808516 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38468 _keys!1208))))))

(assert (=> start!101362 e!691171))

(declare-fun tp_is_empty!30927 () Bool)

(assert (=> start!101362 tp_is_empty!30927))

(declare-fun array_inv!28782 (array!78602) Bool)

(assert (=> start!101362 (array_inv!28782 _keys!1208)))

(assert (=> start!101362 true))

(assert (=> start!101362 tp!91695))

(declare-datatypes ((V!46363 0))(
  ( (V!46364 (val!15520 Int)) )
))
(declare-datatypes ((ValueCell!14754 0))(
  ( (ValueCellFull!14754 (v!18175 V!46363)) (EmptyCell!14754) )
))
(declare-datatypes ((array!78604 0))(
  ( (array!78605 (arr!37932 (Array (_ BitVec 32) ValueCell!14754)) (size!38469 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78604)

(declare-fun e!691164 () Bool)

(declare-fun array_inv!28783 (array!78604) Bool)

(assert (=> start!101362 (and (array_inv!28783 _values!996) e!691164)))

(declare-fun b!1217347 () Bool)

(declare-fun e!691169 () Bool)

(declare-fun mapRes!48268 () Bool)

(assert (=> b!1217347 (= e!691164 (and e!691169 mapRes!48268))))

(declare-fun condMapEmpty!48268 () Bool)

(declare-fun mapDefault!48268 () ValueCell!14754)

(assert (=> b!1217347 (= condMapEmpty!48268 (= (arr!37932 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14754)) mapDefault!48268)))))

(declare-fun b!1217348 () Bool)

(declare-fun res!808513 () Bool)

(assert (=> b!1217348 (=> (not res!808513) (not e!691171))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78602 (_ BitVec 32)) Bool)

(assert (=> b!1217348 (= res!808513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1217349 () Bool)

(declare-fun e!691166 () Bool)

(declare-fun e!691170 () Bool)

(assert (=> b!1217349 (= e!691166 (not e!691170))))

(declare-fun res!808517 () Bool)

(assert (=> b!1217349 (=> res!808517 e!691170)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1217349 (= res!808517 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217349 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40292 0))(
  ( (Unit!40293) )
))
(declare-fun lt!553281 () Unit!40292)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78602 (_ BitVec 64) (_ BitVec 32)) Unit!40292)

(assert (=> b!1217349 (= lt!553281 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1217350 () Bool)

(declare-fun res!808510 () Bool)

(assert (=> b!1217350 (=> (not res!808510) (not e!691171))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217350 (= res!808510 (validKeyInArray!0 k0!934))))

(declare-fun b!1217351 () Bool)

(assert (=> b!1217351 (= e!691169 tp_is_empty!30927)))

(declare-fun b!1217352 () Bool)

(declare-fun res!808511 () Bool)

(assert (=> b!1217352 (=> (not res!808511) (not e!691166))))

(declare-fun lt!553283 () array!78602)

(declare-datatypes ((List!26916 0))(
  ( (Nil!26913) (Cons!26912 (h!28121 (_ BitVec 64)) (t!40126 List!26916)) )
))
(declare-fun arrayNoDuplicates!0 (array!78602 (_ BitVec 32) List!26916) Bool)

(assert (=> b!1217352 (= res!808511 (arrayNoDuplicates!0 lt!553283 #b00000000000000000000000000000000 Nil!26913))))

(declare-fun b!1217353 () Bool)

(declare-fun e!691168 () Bool)

(assert (=> b!1217353 (= e!691168 tp_is_empty!30927)))

(declare-fun b!1217354 () Bool)

(declare-fun res!808518 () Bool)

(assert (=> b!1217354 (=> (not res!808518) (not e!691171))))

(assert (=> b!1217354 (= res!808518 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38468 _keys!1208))))))

(declare-fun b!1217355 () Bool)

(declare-fun e!691163 () Bool)

(declare-fun e!691167 () Bool)

(assert (=> b!1217355 (= e!691163 e!691167)))

(declare-fun res!808519 () Bool)

(assert (=> b!1217355 (=> res!808519 e!691167)))

(assert (=> b!1217355 (= res!808519 (not (validKeyInArray!0 (select (arr!37931 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!20096 0))(
  ( (tuple2!20097 (_1!10058 (_ BitVec 64)) (_2!10058 V!46363)) )
))
(declare-datatypes ((List!26917 0))(
  ( (Nil!26914) (Cons!26913 (h!28122 tuple2!20096) (t!40127 List!26917)) )
))
(declare-datatypes ((ListLongMap!18077 0))(
  ( (ListLongMap!18078 (toList!9054 List!26917)) )
))
(declare-fun lt!553279 () ListLongMap!18077)

(declare-fun lt!553282 () ListLongMap!18077)

(assert (=> b!1217355 (= lt!553279 lt!553282)))

(declare-fun lt!553286 () ListLongMap!18077)

(declare-fun -!1915 (ListLongMap!18077 (_ BitVec 64)) ListLongMap!18077)

(assert (=> b!1217355 (= lt!553282 (-!1915 lt!553286 k0!934))))

(declare-fun zeroValue!944 () V!46363)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46363)

(declare-fun lt!553277 () array!78604)

(declare-fun getCurrentListMapNoExtraKeys!5458 (array!78602 array!78604 (_ BitVec 32) (_ BitVec 32) V!46363 V!46363 (_ BitVec 32) Int) ListLongMap!18077)

(assert (=> b!1217355 (= lt!553279 (getCurrentListMapNoExtraKeys!5458 lt!553283 lt!553277 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1217355 (= lt!553286 (getCurrentListMapNoExtraKeys!5458 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!553278 () Unit!40292)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1117 (array!78602 array!78604 (_ BitVec 32) (_ BitVec 32) V!46363 V!46363 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40292)

(assert (=> b!1217355 (= lt!553278 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1117 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!48268 () Bool)

(declare-fun tp!91694 () Bool)

(assert (=> mapNonEmpty!48268 (= mapRes!48268 (and tp!91694 e!691168))))

(declare-fun mapValue!48268 () ValueCell!14754)

(declare-fun mapKey!48268 () (_ BitVec 32))

(declare-fun mapRest!48268 () (Array (_ BitVec 32) ValueCell!14754))

(assert (=> mapNonEmpty!48268 (= (arr!37932 _values!996) (store mapRest!48268 mapKey!48268 mapValue!48268))))

(declare-fun b!1217356 () Bool)

(assert (=> b!1217356 (= e!691167 (bvslt from!1455 (size!38468 _keys!1208)))))

(declare-fun lt!553285 () V!46363)

(declare-fun lt!553280 () ListLongMap!18077)

(declare-fun +!4037 (ListLongMap!18077 tuple2!20096) ListLongMap!18077)

(declare-fun get!19371 (ValueCell!14754 V!46363) V!46363)

(assert (=> b!1217356 (= lt!553280 (+!4037 lt!553282 (tuple2!20097 (select (arr!37931 _keys!1208) from!1455) (get!19371 (select (arr!37932 _values!996) from!1455) lt!553285))))))

(declare-fun b!1217357 () Bool)

(declare-fun res!808520 () Bool)

(assert (=> b!1217357 (=> (not res!808520) (not e!691171))))

(assert (=> b!1217357 (= res!808520 (= (select (arr!37931 _keys!1208) i!673) k0!934))))

(declare-fun b!1217358 () Bool)

(declare-fun res!808515 () Bool)

(assert (=> b!1217358 (=> (not res!808515) (not e!691171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217358 (= res!808515 (validMask!0 mask!1564))))

(declare-fun b!1217359 () Bool)

(declare-fun res!808509 () Bool)

(assert (=> b!1217359 (=> (not res!808509) (not e!691171))))

(assert (=> b!1217359 (= res!808509 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26913))))

(declare-fun mapIsEmpty!48268 () Bool)

(assert (=> mapIsEmpty!48268 mapRes!48268))

(declare-fun b!1217360 () Bool)

(assert (=> b!1217360 (= e!691170 e!691163)))

(declare-fun res!808512 () Bool)

(assert (=> b!1217360 (=> res!808512 e!691163)))

(assert (=> b!1217360 (= res!808512 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1217360 (= lt!553280 (getCurrentListMapNoExtraKeys!5458 lt!553283 lt!553277 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1217360 (= lt!553277 (array!78605 (store (arr!37932 _values!996) i!673 (ValueCellFull!14754 lt!553285)) (size!38469 _values!996)))))

(declare-fun dynLambda!3363 (Int (_ BitVec 64)) V!46363)

(assert (=> b!1217360 (= lt!553285 (dynLambda!3363 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553284 () ListLongMap!18077)

(assert (=> b!1217360 (= lt!553284 (getCurrentListMapNoExtraKeys!5458 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1217361 () Bool)

(declare-fun res!808521 () Bool)

(assert (=> b!1217361 (=> (not res!808521) (not e!691171))))

(assert (=> b!1217361 (= res!808521 (and (= (size!38469 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38468 _keys!1208) (size!38469 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1217362 () Bool)

(assert (=> b!1217362 (= e!691171 e!691166)))

(declare-fun res!808514 () Bool)

(assert (=> b!1217362 (=> (not res!808514) (not e!691166))))

(assert (=> b!1217362 (= res!808514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553283 mask!1564))))

(assert (=> b!1217362 (= lt!553283 (array!78603 (store (arr!37931 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38468 _keys!1208)))))

(assert (= (and start!101362 res!808516) b!1217358))

(assert (= (and b!1217358 res!808515) b!1217361))

(assert (= (and b!1217361 res!808521) b!1217348))

(assert (= (and b!1217348 res!808513) b!1217359))

(assert (= (and b!1217359 res!808509) b!1217354))

(assert (= (and b!1217354 res!808518) b!1217350))

(assert (= (and b!1217350 res!808510) b!1217357))

(assert (= (and b!1217357 res!808520) b!1217362))

(assert (= (and b!1217362 res!808514) b!1217352))

(assert (= (and b!1217352 res!808511) b!1217349))

(assert (= (and b!1217349 (not res!808517)) b!1217360))

(assert (= (and b!1217360 (not res!808512)) b!1217355))

(assert (= (and b!1217355 (not res!808519)) b!1217356))

(assert (= (and b!1217347 condMapEmpty!48268) mapIsEmpty!48268))

(assert (= (and b!1217347 (not condMapEmpty!48268)) mapNonEmpty!48268))

(get-info :version)

(assert (= (and mapNonEmpty!48268 ((_ is ValueCellFull!14754) mapValue!48268)) b!1217353))

(assert (= (and b!1217347 ((_ is ValueCellFull!14754) mapDefault!48268)) b!1217351))

(assert (= start!101362 b!1217347))

(declare-fun b_lambda!21947 () Bool)

(assert (=> (not b_lambda!21947) (not b!1217360)))

(declare-fun t!40125 () Bool)

(declare-fun tb!11031 () Bool)

(assert (=> (and start!101362 (= defaultEntry!1004 defaultEntry!1004) t!40125) tb!11031))

(declare-fun result!22653 () Bool)

(assert (=> tb!11031 (= result!22653 tp_is_empty!30927)))

(assert (=> b!1217360 t!40125))

(declare-fun b_and!43593 () Bool)

(assert (= b_and!43591 (and (=> t!40125 result!22653) b_and!43593)))

(declare-fun m!1122121 () Bool)

(assert (=> b!1217352 m!1122121))

(declare-fun m!1122123 () Bool)

(assert (=> b!1217355 m!1122123))

(declare-fun m!1122125 () Bool)

(assert (=> b!1217355 m!1122125))

(declare-fun m!1122127 () Bool)

(assert (=> b!1217355 m!1122127))

(declare-fun m!1122129 () Bool)

(assert (=> b!1217355 m!1122129))

(declare-fun m!1122131 () Bool)

(assert (=> b!1217355 m!1122131))

(declare-fun m!1122133 () Bool)

(assert (=> b!1217355 m!1122133))

(assert (=> b!1217355 m!1122131))

(declare-fun m!1122135 () Bool)

(assert (=> b!1217362 m!1122135))

(declare-fun m!1122137 () Bool)

(assert (=> b!1217362 m!1122137))

(declare-fun m!1122139 () Bool)

(assert (=> b!1217357 m!1122139))

(declare-fun m!1122141 () Bool)

(assert (=> b!1217360 m!1122141))

(declare-fun m!1122143 () Bool)

(assert (=> b!1217360 m!1122143))

(declare-fun m!1122145 () Bool)

(assert (=> b!1217360 m!1122145))

(declare-fun m!1122147 () Bool)

(assert (=> b!1217360 m!1122147))

(declare-fun m!1122149 () Bool)

(assert (=> start!101362 m!1122149))

(declare-fun m!1122151 () Bool)

(assert (=> start!101362 m!1122151))

(assert (=> b!1217356 m!1122131))

(declare-fun m!1122153 () Bool)

(assert (=> b!1217356 m!1122153))

(assert (=> b!1217356 m!1122153))

(declare-fun m!1122155 () Bool)

(assert (=> b!1217356 m!1122155))

(declare-fun m!1122157 () Bool)

(assert (=> b!1217356 m!1122157))

(declare-fun m!1122159 () Bool)

(assert (=> b!1217350 m!1122159))

(declare-fun m!1122161 () Bool)

(assert (=> mapNonEmpty!48268 m!1122161))

(declare-fun m!1122163 () Bool)

(assert (=> b!1217358 m!1122163))

(declare-fun m!1122165 () Bool)

(assert (=> b!1217359 m!1122165))

(declare-fun m!1122167 () Bool)

(assert (=> b!1217348 m!1122167))

(declare-fun m!1122169 () Bool)

(assert (=> b!1217349 m!1122169))

(declare-fun m!1122171 () Bool)

(assert (=> b!1217349 m!1122171))

(check-sat (not b!1217349) (not b!1217348) (not b_lambda!21947) (not b!1217359) tp_is_empty!30927 (not b!1217355) (not start!101362) (not b!1217358) (not b!1217356) (not b!1217350) (not b_next!26223) b_and!43593 (not b!1217362) (not b!1217352) (not b!1217360) (not mapNonEmpty!48268))
(check-sat b_and!43593 (not b_next!26223))
