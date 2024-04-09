; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101502 () Bool)

(assert start!101502)

(declare-fun b_free!26283 () Bool)

(declare-fun b_next!26283 () Bool)

(assert (=> start!101502 (= b_free!26283 (not b_next!26283))))

(declare-fun tp!91883 () Bool)

(declare-fun b_and!43765 () Bool)

(assert (=> start!101502 (= tp!91883 b_and!43765)))

(declare-fun mapNonEmpty!48367 () Bool)

(declare-fun mapRes!48367 () Bool)

(declare-fun tp!91884 () Bool)

(declare-fun e!692455 () Bool)

(assert (=> mapNonEmpty!48367 (= mapRes!48367 (and tp!91884 e!692455))))

(declare-datatypes ((V!46443 0))(
  ( (V!46444 (val!15550 Int)) )
))
(declare-datatypes ((ValueCell!14784 0))(
  ( (ValueCellFull!14784 (v!18208 V!46443)) (EmptyCell!14784) )
))
(declare-fun mapValue!48367 () ValueCell!14784)

(declare-fun mapRest!48367 () (Array (_ BitVec 32) ValueCell!14784))

(declare-fun mapKey!48367 () (_ BitVec 32))

(declare-datatypes ((array!78726 0))(
  ( (array!78727 (arr!37990 (Array (_ BitVec 32) ValueCell!14784)) (size!38527 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78726)

(assert (=> mapNonEmpty!48367 (= (arr!37990 _values!996) (store mapRest!48367 mapKey!48367 mapValue!48367))))

(declare-fun b!1219470 () Bool)

(declare-fun res!810061 () Bool)

(declare-fun e!692451 () Bool)

(assert (=> b!1219470 (=> (not res!810061) (not e!692451))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78728 0))(
  ( (array!78729 (arr!37991 (Array (_ BitVec 32) (_ BitVec 64))) (size!38528 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78728)

(assert (=> b!1219470 (= res!810061 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38528 _keys!1208))))))

(declare-fun b!1219471 () Bool)

(declare-fun res!810053 () Bool)

(assert (=> b!1219471 (=> (not res!810053) (not e!692451))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78728 (_ BitVec 32)) Bool)

(assert (=> b!1219471 (= res!810053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1219472 () Bool)

(declare-fun e!692459 () Bool)

(declare-fun e!692449 () Bool)

(assert (=> b!1219472 (= e!692459 (and e!692449 mapRes!48367))))

(declare-fun condMapEmpty!48367 () Bool)

(declare-fun mapDefault!48367 () ValueCell!14784)

(assert (=> b!1219472 (= condMapEmpty!48367 (= (arr!37990 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14784)) mapDefault!48367)))))

(declare-fun b!1219473 () Bool)

(declare-fun e!692452 () Bool)

(declare-fun e!692457 () Bool)

(assert (=> b!1219473 (= e!692452 e!692457)))

(declare-fun res!810050 () Bool)

(assert (=> b!1219473 (=> res!810050 e!692457)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1219473 (= res!810050 (not (= (select (arr!37991 _keys!1208) from!1455) k0!934)))))

(declare-fun e!692458 () Bool)

(assert (=> b!1219473 e!692458))

(declare-fun res!810060 () Bool)

(assert (=> b!1219473 (=> (not res!810060) (not e!692458))))

(declare-fun lt!554430 () V!46443)

(declare-datatypes ((tuple2!20144 0))(
  ( (tuple2!20145 (_1!10082 (_ BitVec 64)) (_2!10082 V!46443)) )
))
(declare-datatypes ((List!26963 0))(
  ( (Nil!26960) (Cons!26959 (h!28168 tuple2!20144) (t!40233 List!26963)) )
))
(declare-datatypes ((ListLongMap!18125 0))(
  ( (ListLongMap!18126 (toList!9078 List!26963)) )
))
(declare-fun lt!554438 () ListLongMap!18125)

(declare-fun lt!554435 () ListLongMap!18125)

(declare-fun +!4055 (ListLongMap!18125 tuple2!20144) ListLongMap!18125)

(declare-fun get!19415 (ValueCell!14784 V!46443) V!46443)

(assert (=> b!1219473 (= res!810060 (= lt!554435 (+!4055 lt!554438 (tuple2!20145 (select (arr!37991 _keys!1208) from!1455) (get!19415 (select (arr!37990 _values!996) from!1455) lt!554430)))))))

(declare-fun b!1219474 () Bool)

(declare-fun e!692456 () Bool)

(assert (=> b!1219474 (= e!692451 e!692456)))

(declare-fun res!810058 () Bool)

(assert (=> b!1219474 (=> (not res!810058) (not e!692456))))

(declare-fun lt!554432 () array!78728)

(assert (=> b!1219474 (= res!810058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554432 mask!1564))))

(assert (=> b!1219474 (= lt!554432 (array!78729 (store (arr!37991 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38528 _keys!1208)))))

(declare-fun mapIsEmpty!48367 () Bool)

(assert (=> mapIsEmpty!48367 mapRes!48367))

(declare-fun b!1219475 () Bool)

(declare-fun res!810055 () Bool)

(assert (=> b!1219475 (=> (not res!810055) (not e!692456))))

(declare-datatypes ((List!26964 0))(
  ( (Nil!26961) (Cons!26960 (h!28169 (_ BitVec 64)) (t!40234 List!26964)) )
))
(declare-fun arrayNoDuplicates!0 (array!78728 (_ BitVec 32) List!26964) Bool)

(assert (=> b!1219475 (= res!810055 (arrayNoDuplicates!0 lt!554432 #b00000000000000000000000000000000 Nil!26961))))

(declare-fun b!1219476 () Bool)

(declare-fun e!692450 () Bool)

(assert (=> b!1219476 (= e!692456 (not e!692450))))

(declare-fun res!810063 () Bool)

(assert (=> b!1219476 (=> res!810063 e!692450)))

(assert (=> b!1219476 (= res!810063 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219476 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40332 0))(
  ( (Unit!40333) )
))
(declare-fun lt!554436 () Unit!40332)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78728 (_ BitVec 64) (_ BitVec 32)) Unit!40332)

(assert (=> b!1219476 (= lt!554436 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1219477 () Bool)

(declare-fun e!692453 () Bool)

(assert (=> b!1219477 (= e!692453 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1219478 () Bool)

(assert (=> b!1219478 (= e!692458 e!692453)))

(declare-fun res!810052 () Bool)

(assert (=> b!1219478 (=> res!810052 e!692453)))

(assert (=> b!1219478 (= res!810052 (not (= (select (arr!37991 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1219479 () Bool)

(declare-fun res!810064 () Bool)

(assert (=> b!1219479 (=> (not res!810064) (not e!692451))))

(assert (=> b!1219479 (= res!810064 (= (select (arr!37991 _keys!1208) i!673) k0!934))))

(declare-fun b!1219480 () Bool)

(declare-fun res!810059 () Bool)

(assert (=> b!1219480 (=> (not res!810059) (not e!692451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219480 (= res!810059 (validMask!0 mask!1564))))

(declare-fun res!810051 () Bool)

(assert (=> start!101502 (=> (not res!810051) (not e!692451))))

(assert (=> start!101502 (= res!810051 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38528 _keys!1208))))))

(assert (=> start!101502 e!692451))

(declare-fun tp_is_empty!30987 () Bool)

(assert (=> start!101502 tp_is_empty!30987))

(declare-fun array_inv!28824 (array!78728) Bool)

(assert (=> start!101502 (array_inv!28824 _keys!1208)))

(assert (=> start!101502 true))

(assert (=> start!101502 tp!91883))

(declare-fun array_inv!28825 (array!78726) Bool)

(assert (=> start!101502 (and (array_inv!28825 _values!996) e!692459)))

(declare-fun b!1219481 () Bool)

(assert (=> b!1219481 (= e!692457 (or (bvsge (size!38528 _keys!1208) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!38528 _keys!1208))))))

(assert (=> b!1219481 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!554429 () Unit!40332)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78728 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40332)

(assert (=> b!1219481 (= lt!554429 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1219482 () Bool)

(declare-fun res!810062 () Bool)

(assert (=> b!1219482 (=> (not res!810062) (not e!692451))))

(assert (=> b!1219482 (= res!810062 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26961))))

(declare-fun b!1219483 () Bool)

(assert (=> b!1219483 (= e!692455 tp_is_empty!30987)))

(declare-fun b!1219484 () Bool)

(declare-fun res!810054 () Bool)

(assert (=> b!1219484 (=> (not res!810054) (not e!692451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1219484 (= res!810054 (validKeyInArray!0 k0!934))))

(declare-fun b!1219485 () Bool)

(declare-fun e!692454 () Bool)

(assert (=> b!1219485 (= e!692450 e!692454)))

(declare-fun res!810065 () Bool)

(assert (=> b!1219485 (=> res!810065 e!692454)))

(assert (=> b!1219485 (= res!810065 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46443)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!554437 () array!78726)

(declare-fun minValue!944 () V!46443)

(declare-fun getCurrentListMapNoExtraKeys!5479 (array!78728 array!78726 (_ BitVec 32) (_ BitVec 32) V!46443 V!46443 (_ BitVec 32) Int) ListLongMap!18125)

(assert (=> b!1219485 (= lt!554435 (getCurrentListMapNoExtraKeys!5479 lt!554432 lt!554437 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1219485 (= lt!554437 (array!78727 (store (arr!37990 _values!996) i!673 (ValueCellFull!14784 lt!554430)) (size!38527 _values!996)))))

(declare-fun dynLambda!3382 (Int (_ BitVec 64)) V!46443)

(assert (=> b!1219485 (= lt!554430 (dynLambda!3382 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554428 () ListLongMap!18125)

(assert (=> b!1219485 (= lt!554428 (getCurrentListMapNoExtraKeys!5479 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1219486 () Bool)

(assert (=> b!1219486 (= e!692449 tp_is_empty!30987)))

(declare-fun b!1219487 () Bool)

(declare-fun res!810057 () Bool)

(assert (=> b!1219487 (=> (not res!810057) (not e!692451))))

(assert (=> b!1219487 (= res!810057 (and (= (size!38527 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38528 _keys!1208) (size!38527 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1219488 () Bool)

(assert (=> b!1219488 (= e!692454 e!692452)))

(declare-fun res!810056 () Bool)

(assert (=> b!1219488 (=> res!810056 e!692452)))

(assert (=> b!1219488 (= res!810056 (not (validKeyInArray!0 (select (arr!37991 _keys!1208) from!1455))))))

(declare-fun lt!554431 () ListLongMap!18125)

(assert (=> b!1219488 (= lt!554431 lt!554438)))

(declare-fun lt!554434 () ListLongMap!18125)

(declare-fun -!1932 (ListLongMap!18125 (_ BitVec 64)) ListLongMap!18125)

(assert (=> b!1219488 (= lt!554438 (-!1932 lt!554434 k0!934))))

(assert (=> b!1219488 (= lt!554431 (getCurrentListMapNoExtraKeys!5479 lt!554432 lt!554437 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1219488 (= lt!554434 (getCurrentListMapNoExtraKeys!5479 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!554433 () Unit!40332)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1134 (array!78728 array!78726 (_ BitVec 32) (_ BitVec 32) V!46443 V!46443 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40332)

(assert (=> b!1219488 (= lt!554433 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1134 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!101502 res!810051) b!1219480))

(assert (= (and b!1219480 res!810059) b!1219487))

(assert (= (and b!1219487 res!810057) b!1219471))

(assert (= (and b!1219471 res!810053) b!1219482))

(assert (= (and b!1219482 res!810062) b!1219470))

(assert (= (and b!1219470 res!810061) b!1219484))

(assert (= (and b!1219484 res!810054) b!1219479))

(assert (= (and b!1219479 res!810064) b!1219474))

(assert (= (and b!1219474 res!810058) b!1219475))

(assert (= (and b!1219475 res!810055) b!1219476))

(assert (= (and b!1219476 (not res!810063)) b!1219485))

(assert (= (and b!1219485 (not res!810065)) b!1219488))

(assert (= (and b!1219488 (not res!810056)) b!1219473))

(assert (= (and b!1219473 res!810060) b!1219478))

(assert (= (and b!1219478 (not res!810052)) b!1219477))

(assert (= (and b!1219473 (not res!810050)) b!1219481))

(assert (= (and b!1219472 condMapEmpty!48367) mapIsEmpty!48367))

(assert (= (and b!1219472 (not condMapEmpty!48367)) mapNonEmpty!48367))

(get-info :version)

(assert (= (and mapNonEmpty!48367 ((_ is ValueCellFull!14784) mapValue!48367)) b!1219483))

(assert (= (and b!1219472 ((_ is ValueCellFull!14784) mapDefault!48367)) b!1219486))

(assert (= start!101502 b!1219472))

(declare-fun b_lambda!22121 () Bool)

(assert (=> (not b_lambda!22121) (not b!1219485)))

(declare-fun t!40232 () Bool)

(declare-fun tb!11091 () Bool)

(assert (=> (and start!101502 (= defaultEntry!1004 defaultEntry!1004) t!40232) tb!11091))

(declare-fun result!22779 () Bool)

(assert (=> tb!11091 (= result!22779 tp_is_empty!30987)))

(assert (=> b!1219485 t!40232))

(declare-fun b_and!43767 () Bool)

(assert (= b_and!43765 (and (=> t!40232 result!22779) b_and!43767)))

(declare-fun m!1124291 () Bool)

(assert (=> b!1219482 m!1124291))

(declare-fun m!1124293 () Bool)

(assert (=> mapNonEmpty!48367 m!1124293))

(declare-fun m!1124295 () Bool)

(assert (=> b!1219484 m!1124295))

(declare-fun m!1124297 () Bool)

(assert (=> b!1219473 m!1124297))

(declare-fun m!1124299 () Bool)

(assert (=> b!1219473 m!1124299))

(assert (=> b!1219473 m!1124299))

(declare-fun m!1124301 () Bool)

(assert (=> b!1219473 m!1124301))

(declare-fun m!1124303 () Bool)

(assert (=> b!1219473 m!1124303))

(declare-fun m!1124305 () Bool)

(assert (=> b!1219480 m!1124305))

(declare-fun m!1124307 () Bool)

(assert (=> b!1219485 m!1124307))

(declare-fun m!1124309 () Bool)

(assert (=> b!1219485 m!1124309))

(declare-fun m!1124311 () Bool)

(assert (=> b!1219485 m!1124311))

(declare-fun m!1124313 () Bool)

(assert (=> b!1219485 m!1124313))

(declare-fun m!1124315 () Bool)

(assert (=> b!1219477 m!1124315))

(declare-fun m!1124317 () Bool)

(assert (=> b!1219479 m!1124317))

(declare-fun m!1124319 () Bool)

(assert (=> b!1219476 m!1124319))

(declare-fun m!1124321 () Bool)

(assert (=> b!1219476 m!1124321))

(declare-fun m!1124323 () Bool)

(assert (=> b!1219474 m!1124323))

(declare-fun m!1124325 () Bool)

(assert (=> b!1219474 m!1124325))

(declare-fun m!1124327 () Bool)

(assert (=> b!1219488 m!1124327))

(declare-fun m!1124329 () Bool)

(assert (=> b!1219488 m!1124329))

(assert (=> b!1219488 m!1124297))

(declare-fun m!1124331 () Bool)

(assert (=> b!1219488 m!1124331))

(assert (=> b!1219488 m!1124297))

(declare-fun m!1124333 () Bool)

(assert (=> b!1219488 m!1124333))

(declare-fun m!1124335 () Bool)

(assert (=> b!1219488 m!1124335))

(assert (=> b!1219478 m!1124297))

(declare-fun m!1124337 () Bool)

(assert (=> start!101502 m!1124337))

(declare-fun m!1124339 () Bool)

(assert (=> start!101502 m!1124339))

(declare-fun m!1124341 () Bool)

(assert (=> b!1219481 m!1124341))

(declare-fun m!1124343 () Bool)

(assert (=> b!1219481 m!1124343))

(declare-fun m!1124345 () Bool)

(assert (=> b!1219471 m!1124345))

(declare-fun m!1124347 () Bool)

(assert (=> b!1219475 m!1124347))

(check-sat (not b!1219485) (not b!1219480) (not b!1219481) (not start!101502) (not b!1219475) (not b!1219488) (not b!1219474) b_and!43767 (not b!1219473) (not b_next!26283) (not b!1219484) (not b!1219476) (not b!1219477) (not b!1219482) (not b_lambda!22121) (not mapNonEmpty!48367) tp_is_empty!30987 (not b!1219471))
(check-sat b_and!43767 (not b_next!26283))
