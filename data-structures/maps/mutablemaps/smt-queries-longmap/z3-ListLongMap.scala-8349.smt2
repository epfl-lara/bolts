; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101682 () Bool)

(assert start!101682)

(declare-fun b_free!26367 () Bool)

(declare-fun b_next!26367 () Bool)

(assert (=> start!101682 (= b_free!26367 (not b_next!26367))))

(declare-fun tp!92144 () Bool)

(declare-fun b_and!43987 () Bool)

(assert (=> start!101682 (= tp!92144 b_and!43987)))

(declare-fun mapNonEmpty!48502 () Bool)

(declare-fun mapRes!48502 () Bool)

(declare-fun tp!92145 () Bool)

(declare-fun e!694333 () Bool)

(assert (=> mapNonEmpty!48502 (= mapRes!48502 (and tp!92145 e!694333))))

(declare-datatypes ((V!46555 0))(
  ( (V!46556 (val!15592 Int)) )
))
(declare-datatypes ((ValueCell!14826 0))(
  ( (ValueCellFull!14826 (v!18254 V!46555)) (EmptyCell!14826) )
))
(declare-fun mapRest!48502 () (Array (_ BitVec 32) ValueCell!14826))

(declare-datatypes ((array!78900 0))(
  ( (array!78901 (arr!38074 (Array (_ BitVec 32) ValueCell!14826)) (size!38611 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78900)

(declare-fun mapValue!48502 () ValueCell!14826)

(declare-fun mapKey!48502 () (_ BitVec 32))

(assert (=> mapNonEmpty!48502 (= (arr!38074 _values!996) (store mapRest!48502 mapKey!48502 mapValue!48502))))

(declare-fun b!1222528 () Bool)

(declare-datatypes ((array!78902 0))(
  ( (array!78903 (arr!38075 (Array (_ BitVec 32) (_ BitVec 64))) (size!38612 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78902)

(declare-fun e!694332 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1222528 (= e!694332 (not (= (select (arr!38075 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!40412 0))(
  ( (Unit!40413) )
))
(declare-fun lt!556227 () Unit!40412)

(declare-fun e!694337 () Unit!40412)

(assert (=> b!1222528 (= lt!556227 e!694337)))

(declare-fun c!120276 () Bool)

(assert (=> b!1222528 (= c!120276 (= (select (arr!38075 _keys!1208) from!1455) k0!934))))

(declare-fun e!694338 () Bool)

(assert (=> b!1222528 e!694338))

(declare-fun res!812372 () Bool)

(assert (=> b!1222528 (=> (not res!812372) (not e!694338))))

(declare-datatypes ((tuple2!20224 0))(
  ( (tuple2!20225 (_1!10122 (_ BitVec 64)) (_2!10122 V!46555)) )
))
(declare-datatypes ((List!27037 0))(
  ( (Nil!27034) (Cons!27033 (h!28242 tuple2!20224) (t!40391 List!27037)) )
))
(declare-datatypes ((ListLongMap!18205 0))(
  ( (ListLongMap!18206 (toList!9118 List!27037)) )
))
(declare-fun lt!556229 () ListLongMap!18205)

(declare-fun lt!556220 () V!46555)

(declare-fun lt!556223 () ListLongMap!18205)

(declare-fun +!4083 (ListLongMap!18205 tuple2!20224) ListLongMap!18205)

(declare-fun get!19477 (ValueCell!14826 V!46555) V!46555)

(assert (=> b!1222528 (= res!812372 (= lt!556229 (+!4083 lt!556223 (tuple2!20225 (select (arr!38075 _keys!1208) from!1455) (get!19477 (select (arr!38074 _values!996) from!1455) lt!556220)))))))

(declare-fun b!1222529 () Bool)

(declare-fun tp_is_empty!31071 () Bool)

(assert (=> b!1222529 (= e!694333 tp_is_empty!31071)))

(declare-fun b!1222530 () Bool)

(declare-fun Unit!40414 () Unit!40412)

(assert (=> b!1222530 (= e!694337 Unit!40414)))

(declare-fun lt!556221 () Unit!40412)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78902 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40412)

(assert (=> b!1222530 (= lt!556221 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!78902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222530 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556231 () Unit!40412)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78902 (_ BitVec 32) (_ BitVec 32)) Unit!40412)

(assert (=> b!1222530 (= lt!556231 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27038 0))(
  ( (Nil!27035) (Cons!27034 (h!28243 (_ BitVec 64)) (t!40392 List!27038)) )
))
(declare-fun arrayNoDuplicates!0 (array!78902 (_ BitVec 32) List!27038) Bool)

(assert (=> b!1222530 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27035)))

(declare-fun lt!556224 () Unit!40412)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78902 (_ BitVec 64) (_ BitVec 32) List!27038) Unit!40412)

(assert (=> b!1222530 (= lt!556224 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27035))))

(assert (=> b!1222530 false))

(declare-fun mapIsEmpty!48502 () Bool)

(assert (=> mapIsEmpty!48502 mapRes!48502))

(declare-fun b!1222531 () Bool)

(declare-fun e!694339 () Bool)

(assert (=> b!1222531 (= e!694339 e!694332)))

(declare-fun res!812371 () Bool)

(assert (=> b!1222531 (=> res!812371 e!694332)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222531 (= res!812371 (not (validKeyInArray!0 (select (arr!38075 _keys!1208) from!1455))))))

(declare-fun lt!556228 () ListLongMap!18205)

(assert (=> b!1222531 (= lt!556228 lt!556223)))

(declare-fun lt!556225 () ListLongMap!18205)

(declare-fun -!1960 (ListLongMap!18205 (_ BitVec 64)) ListLongMap!18205)

(assert (=> b!1222531 (= lt!556223 (-!1960 lt!556225 k0!934))))

(declare-fun zeroValue!944 () V!46555)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!556233 () array!78902)

(declare-fun minValue!944 () V!46555)

(declare-fun lt!556230 () array!78900)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5516 (array!78902 array!78900 (_ BitVec 32) (_ BitVec 32) V!46555 V!46555 (_ BitVec 32) Int) ListLongMap!18205)

(assert (=> b!1222531 (= lt!556228 (getCurrentListMapNoExtraKeys!5516 lt!556233 lt!556230 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222531 (= lt!556225 (getCurrentListMapNoExtraKeys!5516 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556232 () Unit!40412)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1162 (array!78902 array!78900 (_ BitVec 32) (_ BitVec 32) V!46555 V!46555 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40412)

(assert (=> b!1222531 (= lt!556232 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1162 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222532 () Bool)

(declare-fun e!694334 () Bool)

(declare-fun e!694340 () Bool)

(assert (=> b!1222532 (= e!694334 (and e!694340 mapRes!48502))))

(declare-fun condMapEmpty!48502 () Bool)

(declare-fun mapDefault!48502 () ValueCell!14826)

(assert (=> b!1222532 (= condMapEmpty!48502 (= (arr!38074 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14826)) mapDefault!48502)))))

(declare-fun res!812367 () Bool)

(declare-fun e!694341 () Bool)

(assert (=> start!101682 (=> (not res!812367) (not e!694341))))

(assert (=> start!101682 (= res!812367 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38612 _keys!1208))))))

(assert (=> start!101682 e!694341))

(assert (=> start!101682 tp_is_empty!31071))

(declare-fun array_inv!28884 (array!78902) Bool)

(assert (=> start!101682 (array_inv!28884 _keys!1208)))

(assert (=> start!101682 true))

(assert (=> start!101682 tp!92144))

(declare-fun array_inv!28885 (array!78900) Bool)

(assert (=> start!101682 (and (array_inv!28885 _values!996) e!694334)))

(declare-fun b!1222533 () Bool)

(declare-fun e!694343 () Bool)

(declare-fun e!694335 () Bool)

(assert (=> b!1222533 (= e!694343 (not e!694335))))

(declare-fun res!812360 () Bool)

(assert (=> b!1222533 (=> res!812360 e!694335)))

(assert (=> b!1222533 (= res!812360 (bvsgt from!1455 i!673))))

(assert (=> b!1222533 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!556226 () Unit!40412)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78902 (_ BitVec 64) (_ BitVec 32)) Unit!40412)

(assert (=> b!1222533 (= lt!556226 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1222534 () Bool)

(declare-fun res!812368 () Bool)

(assert (=> b!1222534 (=> (not res!812368) (not e!694341))))

(assert (=> b!1222534 (= res!812368 (= (select (arr!38075 _keys!1208) i!673) k0!934))))

(declare-fun b!1222535 () Bool)

(assert (=> b!1222535 (= e!694341 e!694343)))

(declare-fun res!812366 () Bool)

(assert (=> b!1222535 (=> (not res!812366) (not e!694343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78902 (_ BitVec 32)) Bool)

(assert (=> b!1222535 (= res!812366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556233 mask!1564))))

(assert (=> b!1222535 (= lt!556233 (array!78903 (store (arr!38075 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38612 _keys!1208)))))

(declare-fun b!1222536 () Bool)

(declare-fun res!812373 () Bool)

(assert (=> b!1222536 (=> (not res!812373) (not e!694341))))

(assert (=> b!1222536 (= res!812373 (and (= (size!38611 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38612 _keys!1208) (size!38611 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1222537 () Bool)

(declare-fun res!812370 () Bool)

(assert (=> b!1222537 (=> (not res!812370) (not e!694343))))

(assert (=> b!1222537 (= res!812370 (arrayNoDuplicates!0 lt!556233 #b00000000000000000000000000000000 Nil!27035))))

(declare-fun b!1222538 () Bool)

(declare-fun res!812365 () Bool)

(assert (=> b!1222538 (=> (not res!812365) (not e!694341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222538 (= res!812365 (validMask!0 mask!1564))))

(declare-fun b!1222539 () Bool)

(assert (=> b!1222539 (= e!694340 tp_is_empty!31071)))

(declare-fun b!1222540 () Bool)

(declare-fun res!812364 () Bool)

(assert (=> b!1222540 (=> (not res!812364) (not e!694341))))

(assert (=> b!1222540 (= res!812364 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38612 _keys!1208))))))

(declare-fun b!1222541 () Bool)

(assert (=> b!1222541 (= e!694335 e!694339)))

(declare-fun res!812374 () Bool)

(assert (=> b!1222541 (=> res!812374 e!694339)))

(assert (=> b!1222541 (= res!812374 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1222541 (= lt!556229 (getCurrentListMapNoExtraKeys!5516 lt!556233 lt!556230 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1222541 (= lt!556230 (array!78901 (store (arr!38074 _values!996) i!673 (ValueCellFull!14826 lt!556220)) (size!38611 _values!996)))))

(declare-fun dynLambda!3413 (Int (_ BitVec 64)) V!46555)

(assert (=> b!1222541 (= lt!556220 (dynLambda!3413 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556222 () ListLongMap!18205)

(assert (=> b!1222541 (= lt!556222 (getCurrentListMapNoExtraKeys!5516 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1222542 () Bool)

(declare-fun Unit!40415 () Unit!40412)

(assert (=> b!1222542 (= e!694337 Unit!40415)))

(declare-fun b!1222543 () Bool)

(declare-fun res!812369 () Bool)

(assert (=> b!1222543 (=> (not res!812369) (not e!694341))))

(assert (=> b!1222543 (= res!812369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222544 () Bool)

(declare-fun res!812362 () Bool)

(assert (=> b!1222544 (=> (not res!812362) (not e!694341))))

(assert (=> b!1222544 (= res!812362 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27035))))

(declare-fun b!1222545 () Bool)

(declare-fun e!694336 () Bool)

(assert (=> b!1222545 (= e!694336 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1222546 () Bool)

(assert (=> b!1222546 (= e!694338 e!694336)))

(declare-fun res!812363 () Bool)

(assert (=> b!1222546 (=> res!812363 e!694336)))

(assert (=> b!1222546 (= res!812363 (not (= (select (arr!38075 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1222547 () Bool)

(declare-fun res!812361 () Bool)

(assert (=> b!1222547 (=> (not res!812361) (not e!694341))))

(assert (=> b!1222547 (= res!812361 (validKeyInArray!0 k0!934))))

(assert (= (and start!101682 res!812367) b!1222538))

(assert (= (and b!1222538 res!812365) b!1222536))

(assert (= (and b!1222536 res!812373) b!1222543))

(assert (= (and b!1222543 res!812369) b!1222544))

(assert (= (and b!1222544 res!812362) b!1222540))

(assert (= (and b!1222540 res!812364) b!1222547))

(assert (= (and b!1222547 res!812361) b!1222534))

(assert (= (and b!1222534 res!812368) b!1222535))

(assert (= (and b!1222535 res!812366) b!1222537))

(assert (= (and b!1222537 res!812370) b!1222533))

(assert (= (and b!1222533 (not res!812360)) b!1222541))

(assert (= (and b!1222541 (not res!812374)) b!1222531))

(assert (= (and b!1222531 (not res!812371)) b!1222528))

(assert (= (and b!1222528 res!812372) b!1222546))

(assert (= (and b!1222546 (not res!812363)) b!1222545))

(assert (= (and b!1222528 c!120276) b!1222530))

(assert (= (and b!1222528 (not c!120276)) b!1222542))

(assert (= (and b!1222532 condMapEmpty!48502) mapIsEmpty!48502))

(assert (= (and b!1222532 (not condMapEmpty!48502)) mapNonEmpty!48502))

(get-info :version)

(assert (= (and mapNonEmpty!48502 ((_ is ValueCellFull!14826) mapValue!48502)) b!1222529))

(assert (= (and b!1222532 ((_ is ValueCellFull!14826) mapDefault!48502)) b!1222539))

(assert (= start!101682 b!1222532))

(declare-fun b_lambda!22319 () Bool)

(assert (=> (not b_lambda!22319) (not b!1222541)))

(declare-fun t!40390 () Bool)

(declare-fun tb!11175 () Bool)

(assert (=> (and start!101682 (= defaultEntry!1004 defaultEntry!1004) t!40390) tb!11175))

(declare-fun result!22953 () Bool)

(assert (=> tb!11175 (= result!22953 tp_is_empty!31071)))

(assert (=> b!1222541 t!40390))

(declare-fun b_and!43989 () Bool)

(assert (= b_and!43987 (and (=> t!40390 result!22953) b_and!43989)))

(declare-fun m!1127507 () Bool)

(assert (=> b!1222534 m!1127507))

(declare-fun m!1127509 () Bool)

(assert (=> b!1222545 m!1127509))

(declare-fun m!1127511 () Bool)

(assert (=> b!1222538 m!1127511))

(declare-fun m!1127513 () Bool)

(assert (=> b!1222528 m!1127513))

(declare-fun m!1127515 () Bool)

(assert (=> b!1222528 m!1127515))

(assert (=> b!1222528 m!1127515))

(declare-fun m!1127517 () Bool)

(assert (=> b!1222528 m!1127517))

(declare-fun m!1127519 () Bool)

(assert (=> b!1222528 m!1127519))

(declare-fun m!1127521 () Bool)

(assert (=> b!1222533 m!1127521))

(declare-fun m!1127523 () Bool)

(assert (=> b!1222533 m!1127523))

(declare-fun m!1127525 () Bool)

(assert (=> b!1222541 m!1127525))

(declare-fun m!1127527 () Bool)

(assert (=> b!1222541 m!1127527))

(declare-fun m!1127529 () Bool)

(assert (=> b!1222541 m!1127529))

(declare-fun m!1127531 () Bool)

(assert (=> b!1222541 m!1127531))

(declare-fun m!1127533 () Bool)

(assert (=> b!1222530 m!1127533))

(declare-fun m!1127535 () Bool)

(assert (=> b!1222530 m!1127535))

(declare-fun m!1127537 () Bool)

(assert (=> b!1222530 m!1127537))

(declare-fun m!1127539 () Bool)

(assert (=> b!1222530 m!1127539))

(declare-fun m!1127541 () Bool)

(assert (=> b!1222530 m!1127541))

(declare-fun m!1127543 () Bool)

(assert (=> b!1222543 m!1127543))

(declare-fun m!1127545 () Bool)

(assert (=> b!1222537 m!1127545))

(assert (=> b!1222546 m!1127513))

(declare-fun m!1127547 () Bool)

(assert (=> start!101682 m!1127547))

(declare-fun m!1127549 () Bool)

(assert (=> start!101682 m!1127549))

(declare-fun m!1127551 () Bool)

(assert (=> b!1222544 m!1127551))

(declare-fun m!1127553 () Bool)

(assert (=> b!1222547 m!1127553))

(declare-fun m!1127555 () Bool)

(assert (=> b!1222531 m!1127555))

(assert (=> b!1222531 m!1127513))

(declare-fun m!1127557 () Bool)

(assert (=> b!1222531 m!1127557))

(declare-fun m!1127559 () Bool)

(assert (=> b!1222531 m!1127559))

(assert (=> b!1222531 m!1127513))

(declare-fun m!1127561 () Bool)

(assert (=> b!1222531 m!1127561))

(declare-fun m!1127563 () Bool)

(assert (=> b!1222531 m!1127563))

(declare-fun m!1127565 () Bool)

(assert (=> b!1222535 m!1127565))

(declare-fun m!1127567 () Bool)

(assert (=> b!1222535 m!1127567))

(declare-fun m!1127569 () Bool)

(assert (=> mapNonEmpty!48502 m!1127569))

(check-sat (not b!1222535) (not b!1222541) (not b!1222537) (not b!1222533) (not b!1222547) (not b!1222530) (not b!1222544) (not b!1222538) (not start!101682) (not b!1222531) (not b!1222545) (not b!1222528) (not mapNonEmpty!48502) (not b_lambda!22319) (not b_next!26367) tp_is_empty!31071 b_and!43989 (not b!1222543))
(check-sat b_and!43989 (not b_next!26367))
