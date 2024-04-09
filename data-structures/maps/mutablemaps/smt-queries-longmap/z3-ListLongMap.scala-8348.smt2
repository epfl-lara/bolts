; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101676 () Bool)

(assert start!101676)

(declare-fun b_free!26361 () Bool)

(declare-fun b_next!26361 () Bool)

(assert (=> start!101676 (= b_free!26361 (not b_next!26361))))

(declare-fun tp!92127 () Bool)

(declare-fun b_and!43975 () Bool)

(assert (=> start!101676 (= tp!92127 b_and!43975)))

(declare-fun b!1222342 () Bool)

(declare-datatypes ((Unit!40402 0))(
  ( (Unit!40403) )
))
(declare-fun e!694229 () Unit!40402)

(declare-fun Unit!40404 () Unit!40402)

(assert (=> b!1222342 (= e!694229 Unit!40404)))

(declare-fun b!1222344 () Bool)

(declare-fun res!812225 () Bool)

(declare-fun e!694234 () Bool)

(assert (=> b!1222344 (=> (not res!812225) (not e!694234))))

(declare-datatypes ((array!78888 0))(
  ( (array!78889 (arr!38068 (Array (_ BitVec 32) (_ BitVec 64))) (size!38605 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78888)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1222344 (= res!812225 (= (select (arr!38068 _keys!1208) i!673) k0!934))))

(declare-fun b!1222345 () Bool)

(declare-fun Unit!40405 () Unit!40402)

(assert (=> b!1222345 (= e!694229 Unit!40405)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!556102 () Unit!40402)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78888 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40402)

(assert (=> b!1222345 (= lt!556102 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!78888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222345 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556104 () Unit!40402)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78888 (_ BitVec 32) (_ BitVec 32)) Unit!40402)

(assert (=> b!1222345 (= lt!556104 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27031 0))(
  ( (Nil!27028) (Cons!27027 (h!28236 (_ BitVec 64)) (t!40379 List!27031)) )
))
(declare-fun arrayNoDuplicates!0 (array!78888 (_ BitVec 32) List!27031) Bool)

(assert (=> b!1222345 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27028)))

(declare-fun lt!556106 () Unit!40402)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78888 (_ BitVec 64) (_ BitVec 32) List!27031) Unit!40402)

(assert (=> b!1222345 (= lt!556106 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27028))))

(assert (=> b!1222345 false))

(declare-fun b!1222346 () Bool)

(declare-fun e!694225 () Bool)

(declare-fun e!694231 () Bool)

(assert (=> b!1222346 (= e!694225 (not e!694231))))

(declare-fun res!812239 () Bool)

(assert (=> b!1222346 (=> res!812239 e!694231)))

(assert (=> b!1222346 (= res!812239 (bvsgt from!1455 i!673))))

(assert (=> b!1222346 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!556107 () Unit!40402)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78888 (_ BitVec 64) (_ BitVec 32)) Unit!40402)

(assert (=> b!1222346 (= lt!556107 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1222347 () Bool)

(declare-fun e!694232 () Bool)

(assert (=> b!1222347 (= e!694232 (bvslt from!1455 (size!38605 _keys!1208)))))

(declare-fun lt!556096 () Unit!40402)

(assert (=> b!1222347 (= lt!556096 e!694229)))

(declare-fun c!120267 () Bool)

(assert (=> b!1222347 (= c!120267 (= (select (arr!38068 _keys!1208) from!1455) k0!934))))

(declare-fun e!694224 () Bool)

(assert (=> b!1222347 e!694224))

(declare-fun res!812232 () Bool)

(assert (=> b!1222347 (=> (not res!812232) (not e!694224))))

(declare-datatypes ((V!46547 0))(
  ( (V!46548 (val!15589 Int)) )
))
(declare-datatypes ((tuple2!20218 0))(
  ( (tuple2!20219 (_1!10119 (_ BitVec 64)) (_2!10119 V!46547)) )
))
(declare-datatypes ((List!27032 0))(
  ( (Nil!27029) (Cons!27028 (h!28237 tuple2!20218) (t!40380 List!27032)) )
))
(declare-datatypes ((ListLongMap!18199 0))(
  ( (ListLongMap!18200 (toList!9115 List!27032)) )
))
(declare-fun lt!556100 () ListLongMap!18199)

(declare-datatypes ((ValueCell!14823 0))(
  ( (ValueCellFull!14823 (v!18251 V!46547)) (EmptyCell!14823) )
))
(declare-datatypes ((array!78890 0))(
  ( (array!78891 (arr!38069 (Array (_ BitVec 32) ValueCell!14823)) (size!38606 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78890)

(declare-fun lt!556105 () V!46547)

(declare-fun lt!556097 () ListLongMap!18199)

(declare-fun +!4081 (ListLongMap!18199 tuple2!20218) ListLongMap!18199)

(declare-fun get!19473 (ValueCell!14823 V!46547) V!46547)

(assert (=> b!1222347 (= res!812232 (= lt!556097 (+!4081 lt!556100 (tuple2!20219 (select (arr!38068 _keys!1208) from!1455) (get!19473 (select (arr!38069 _values!996) from!1455) lt!556105)))))))

(declare-fun mapIsEmpty!48493 () Bool)

(declare-fun mapRes!48493 () Bool)

(assert (=> mapIsEmpty!48493 mapRes!48493))

(declare-fun mapNonEmpty!48493 () Bool)

(declare-fun tp!92126 () Bool)

(declare-fun e!694233 () Bool)

(assert (=> mapNonEmpty!48493 (= mapRes!48493 (and tp!92126 e!694233))))

(declare-fun mapKey!48493 () (_ BitVec 32))

(declare-fun mapRest!48493 () (Array (_ BitVec 32) ValueCell!14823))

(declare-fun mapValue!48493 () ValueCell!14823)

(assert (=> mapNonEmpty!48493 (= (arr!38069 _values!996) (store mapRest!48493 mapKey!48493 mapValue!48493))))

(declare-fun b!1222348 () Bool)

(declare-fun res!812236 () Bool)

(assert (=> b!1222348 (=> (not res!812236) (not e!694234))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1222348 (= res!812236 (and (= (size!38606 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38605 _keys!1208) (size!38606 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1222349 () Bool)

(declare-fun e!694230 () Bool)

(declare-fun tp_is_empty!31065 () Bool)

(assert (=> b!1222349 (= e!694230 tp_is_empty!31065)))

(declare-fun b!1222350 () Bool)

(declare-fun res!812230 () Bool)

(assert (=> b!1222350 (=> (not res!812230) (not e!694234))))

(assert (=> b!1222350 (= res!812230 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38605 _keys!1208))))))

(declare-fun b!1222351 () Bool)

(declare-fun e!694228 () Bool)

(assert (=> b!1222351 (= e!694231 e!694228)))

(declare-fun res!812229 () Bool)

(assert (=> b!1222351 (=> res!812229 e!694228)))

(assert (=> b!1222351 (= res!812229 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46547)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46547)

(declare-fun lt!556095 () array!78890)

(declare-fun lt!556101 () array!78888)

(declare-fun getCurrentListMapNoExtraKeys!5513 (array!78888 array!78890 (_ BitVec 32) (_ BitVec 32) V!46547 V!46547 (_ BitVec 32) Int) ListLongMap!18199)

(assert (=> b!1222351 (= lt!556097 (getCurrentListMapNoExtraKeys!5513 lt!556101 lt!556095 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1222351 (= lt!556095 (array!78891 (store (arr!38069 _values!996) i!673 (ValueCellFull!14823 lt!556105)) (size!38606 _values!996)))))

(declare-fun dynLambda!3411 (Int (_ BitVec 64)) V!46547)

(assert (=> b!1222351 (= lt!556105 (dynLambda!3411 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556103 () ListLongMap!18199)

(assert (=> b!1222351 (= lt!556103 (getCurrentListMapNoExtraKeys!5513 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1222352 () Bool)

(assert (=> b!1222352 (= e!694228 e!694232)))

(declare-fun res!812231 () Bool)

(assert (=> b!1222352 (=> res!812231 e!694232)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222352 (= res!812231 (not (validKeyInArray!0 (select (arr!38068 _keys!1208) from!1455))))))

(declare-fun lt!556099 () ListLongMap!18199)

(assert (=> b!1222352 (= lt!556099 lt!556100)))

(declare-fun lt!556098 () ListLongMap!18199)

(declare-fun -!1958 (ListLongMap!18199 (_ BitVec 64)) ListLongMap!18199)

(assert (=> b!1222352 (= lt!556100 (-!1958 lt!556098 k0!934))))

(assert (=> b!1222352 (= lt!556099 (getCurrentListMapNoExtraKeys!5513 lt!556101 lt!556095 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222352 (= lt!556098 (getCurrentListMapNoExtraKeys!5513 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556094 () Unit!40402)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1160 (array!78888 array!78890 (_ BitVec 32) (_ BitVec 32) V!46547 V!46547 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40402)

(assert (=> b!1222352 (= lt!556094 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1160 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222353 () Bool)

(declare-fun res!812227 () Bool)

(assert (=> b!1222353 (=> (not res!812227) (not e!694234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78888 (_ BitVec 32)) Bool)

(assert (=> b!1222353 (= res!812227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222354 () Bool)

(declare-fun res!812226 () Bool)

(assert (=> b!1222354 (=> (not res!812226) (not e!694225))))

(assert (=> b!1222354 (= res!812226 (arrayNoDuplicates!0 lt!556101 #b00000000000000000000000000000000 Nil!27028))))

(declare-fun res!812237 () Bool)

(assert (=> start!101676 (=> (not res!812237) (not e!694234))))

(assert (=> start!101676 (= res!812237 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38605 _keys!1208))))))

(assert (=> start!101676 e!694234))

(assert (=> start!101676 tp_is_empty!31065))

(declare-fun array_inv!28880 (array!78888) Bool)

(assert (=> start!101676 (array_inv!28880 _keys!1208)))

(assert (=> start!101676 true))

(assert (=> start!101676 tp!92127))

(declare-fun e!694226 () Bool)

(declare-fun array_inv!28881 (array!78890) Bool)

(assert (=> start!101676 (and (array_inv!28881 _values!996) e!694226)))

(declare-fun b!1222343 () Bool)

(assert (=> b!1222343 (= e!694226 (and e!694230 mapRes!48493))))

(declare-fun condMapEmpty!48493 () Bool)

(declare-fun mapDefault!48493 () ValueCell!14823)

(assert (=> b!1222343 (= condMapEmpty!48493 (= (arr!38069 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14823)) mapDefault!48493)))))

(declare-fun b!1222355 () Bool)

(declare-fun res!812228 () Bool)

(assert (=> b!1222355 (=> (not res!812228) (not e!694234))))

(assert (=> b!1222355 (= res!812228 (validKeyInArray!0 k0!934))))

(declare-fun b!1222356 () Bool)

(assert (=> b!1222356 (= e!694233 tp_is_empty!31065)))

(declare-fun e!694235 () Bool)

(declare-fun b!1222357 () Bool)

(assert (=> b!1222357 (= e!694235 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1222358 () Bool)

(assert (=> b!1222358 (= e!694224 e!694235)))

(declare-fun res!812233 () Bool)

(assert (=> b!1222358 (=> res!812233 e!694235)))

(assert (=> b!1222358 (= res!812233 (not (= (select (arr!38068 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1222359 () Bool)

(declare-fun res!812238 () Bool)

(assert (=> b!1222359 (=> (not res!812238) (not e!694234))))

(assert (=> b!1222359 (= res!812238 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27028))))

(declare-fun b!1222360 () Bool)

(declare-fun res!812234 () Bool)

(assert (=> b!1222360 (=> (not res!812234) (not e!694234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222360 (= res!812234 (validMask!0 mask!1564))))

(declare-fun b!1222361 () Bool)

(assert (=> b!1222361 (= e!694234 e!694225)))

(declare-fun res!812235 () Bool)

(assert (=> b!1222361 (=> (not res!812235) (not e!694225))))

(assert (=> b!1222361 (= res!812235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556101 mask!1564))))

(assert (=> b!1222361 (= lt!556101 (array!78889 (store (arr!38068 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38605 _keys!1208)))))

(assert (= (and start!101676 res!812237) b!1222360))

(assert (= (and b!1222360 res!812234) b!1222348))

(assert (= (and b!1222348 res!812236) b!1222353))

(assert (= (and b!1222353 res!812227) b!1222359))

(assert (= (and b!1222359 res!812238) b!1222350))

(assert (= (and b!1222350 res!812230) b!1222355))

(assert (= (and b!1222355 res!812228) b!1222344))

(assert (= (and b!1222344 res!812225) b!1222361))

(assert (= (and b!1222361 res!812235) b!1222354))

(assert (= (and b!1222354 res!812226) b!1222346))

(assert (= (and b!1222346 (not res!812239)) b!1222351))

(assert (= (and b!1222351 (not res!812229)) b!1222352))

(assert (= (and b!1222352 (not res!812231)) b!1222347))

(assert (= (and b!1222347 res!812232) b!1222358))

(assert (= (and b!1222358 (not res!812233)) b!1222357))

(assert (= (and b!1222347 c!120267) b!1222345))

(assert (= (and b!1222347 (not c!120267)) b!1222342))

(assert (= (and b!1222343 condMapEmpty!48493) mapIsEmpty!48493))

(assert (= (and b!1222343 (not condMapEmpty!48493)) mapNonEmpty!48493))

(get-info :version)

(assert (= (and mapNonEmpty!48493 ((_ is ValueCellFull!14823) mapValue!48493)) b!1222356))

(assert (= (and b!1222343 ((_ is ValueCellFull!14823) mapDefault!48493)) b!1222349))

(assert (= start!101676 b!1222343))

(declare-fun b_lambda!22313 () Bool)

(assert (=> (not b_lambda!22313) (not b!1222351)))

(declare-fun t!40378 () Bool)

(declare-fun tb!11169 () Bool)

(assert (=> (and start!101676 (= defaultEntry!1004 defaultEntry!1004) t!40378) tb!11169))

(declare-fun result!22941 () Bool)

(assert (=> tb!11169 (= result!22941 tp_is_empty!31065)))

(assert (=> b!1222351 t!40378))

(declare-fun b_and!43977 () Bool)

(assert (= b_and!43975 (and (=> t!40378 result!22941) b_and!43977)))

(declare-fun m!1127315 () Bool)

(assert (=> b!1222352 m!1127315))

(declare-fun m!1127317 () Bool)

(assert (=> b!1222352 m!1127317))

(declare-fun m!1127319 () Bool)

(assert (=> b!1222352 m!1127319))

(declare-fun m!1127321 () Bool)

(assert (=> b!1222352 m!1127321))

(declare-fun m!1127323 () Bool)

(assert (=> b!1222352 m!1127323))

(declare-fun m!1127325 () Bool)

(assert (=> b!1222352 m!1127325))

(assert (=> b!1222352 m!1127321))

(declare-fun m!1127327 () Bool)

(assert (=> b!1222360 m!1127327))

(declare-fun m!1127329 () Bool)

(assert (=> b!1222355 m!1127329))

(declare-fun m!1127331 () Bool)

(assert (=> b!1222354 m!1127331))

(declare-fun m!1127333 () Bool)

(assert (=> b!1222359 m!1127333))

(declare-fun m!1127335 () Bool)

(assert (=> b!1222344 m!1127335))

(declare-fun m!1127337 () Bool)

(assert (=> b!1222346 m!1127337))

(declare-fun m!1127339 () Bool)

(assert (=> b!1222346 m!1127339))

(assert (=> b!1222347 m!1127321))

(declare-fun m!1127341 () Bool)

(assert (=> b!1222347 m!1127341))

(assert (=> b!1222347 m!1127341))

(declare-fun m!1127343 () Bool)

(assert (=> b!1222347 m!1127343))

(declare-fun m!1127345 () Bool)

(assert (=> b!1222347 m!1127345))

(declare-fun m!1127347 () Bool)

(assert (=> start!101676 m!1127347))

(declare-fun m!1127349 () Bool)

(assert (=> start!101676 m!1127349))

(declare-fun m!1127351 () Bool)

(assert (=> b!1222351 m!1127351))

(declare-fun m!1127353 () Bool)

(assert (=> b!1222351 m!1127353))

(declare-fun m!1127355 () Bool)

(assert (=> b!1222351 m!1127355))

(declare-fun m!1127357 () Bool)

(assert (=> b!1222351 m!1127357))

(declare-fun m!1127359 () Bool)

(assert (=> b!1222357 m!1127359))

(declare-fun m!1127361 () Bool)

(assert (=> b!1222361 m!1127361))

(declare-fun m!1127363 () Bool)

(assert (=> b!1222361 m!1127363))

(declare-fun m!1127365 () Bool)

(assert (=> b!1222353 m!1127365))

(declare-fun m!1127367 () Bool)

(assert (=> mapNonEmpty!48493 m!1127367))

(assert (=> b!1222358 m!1127321))

(declare-fun m!1127369 () Bool)

(assert (=> b!1222345 m!1127369))

(declare-fun m!1127371 () Bool)

(assert (=> b!1222345 m!1127371))

(declare-fun m!1127373 () Bool)

(assert (=> b!1222345 m!1127373))

(declare-fun m!1127375 () Bool)

(assert (=> b!1222345 m!1127375))

(declare-fun m!1127377 () Bool)

(assert (=> b!1222345 m!1127377))

(check-sat (not b!1222346) (not b_lambda!22313) (not b!1222355) (not mapNonEmpty!48493) (not b!1222360) (not b!1222354) (not b!1222361) (not b!1222345) (not b!1222347) (not start!101676) tp_is_empty!31065 (not b!1222351) (not b!1222352) (not b!1222359) (not b!1222357) (not b_next!26361) b_and!43977 (not b!1222353))
(check-sat b_and!43977 (not b_next!26361))
