; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101424 () Bool)

(assert start!101424)

(declare-fun b_free!26259 () Bool)

(declare-fun b_next!26259 () Bool)

(assert (=> start!101424 (= b_free!26259 (not b_next!26259))))

(declare-fun tp!91806 () Bool)

(declare-fun b_and!43681 () Bool)

(assert (=> start!101424 (= tp!91806 b_and!43681)))

(declare-fun b!1218483 () Bool)

(declare-fun e!691840 () Bool)

(declare-fun e!691845 () Bool)

(declare-fun mapRes!48325 () Bool)

(assert (=> b!1218483 (= e!691840 (and e!691845 mapRes!48325))))

(declare-fun condMapEmpty!48325 () Bool)

(declare-datatypes ((V!46411 0))(
  ( (V!46412 (val!15538 Int)) )
))
(declare-datatypes ((ValueCell!14772 0))(
  ( (ValueCellFull!14772 (v!18194 V!46411)) (EmptyCell!14772) )
))
(declare-datatypes ((array!78674 0))(
  ( (array!78675 (arr!37966 (Array (_ BitVec 32) ValueCell!14772)) (size!38503 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78674)

(declare-fun mapDefault!48325 () ValueCell!14772)

(assert (=> b!1218483 (= condMapEmpty!48325 (= (arr!37966 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14772)) mapDefault!48325)))))

(declare-fun b!1218484 () Bool)

(declare-fun res!809363 () Bool)

(declare-fun e!691836 () Bool)

(assert (=> b!1218484 (=> (not res!809363) (not e!691836))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218484 (= res!809363 (validKeyInArray!0 k0!934))))

(declare-fun b!1218485 () Bool)

(declare-fun res!809365 () Bool)

(assert (=> b!1218485 (=> (not res!809365) (not e!691836))))

(declare-datatypes ((array!78676 0))(
  ( (array!78677 (arr!37967 (Array (_ BitVec 32) (_ BitVec 64))) (size!38504 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78676)

(declare-datatypes ((List!26942 0))(
  ( (Nil!26939) (Cons!26938 (h!28147 (_ BitVec 64)) (t!40188 List!26942)) )
))
(declare-fun arrayNoDuplicates!0 (array!78676 (_ BitVec 32) List!26942) Bool)

(assert (=> b!1218485 (= res!809365 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26939))))

(declare-fun e!691839 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1218486 () Bool)

(assert (=> b!1218486 (= e!691839 (or (not (= (select (arr!37967 _keys!1208) from!1455) k0!934)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (size!38504 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun e!691837 () Bool)

(assert (=> b!1218486 e!691837))

(declare-fun res!809376 () Bool)

(assert (=> b!1218486 (=> (not res!809376) (not e!691837))))

(declare-datatypes ((tuple2!20122 0))(
  ( (tuple2!20123 (_1!10071 (_ BitVec 64)) (_2!10071 V!46411)) )
))
(declare-datatypes ((List!26943 0))(
  ( (Nil!26940) (Cons!26939 (h!28148 tuple2!20122) (t!40189 List!26943)) )
))
(declare-datatypes ((ListLongMap!18103 0))(
  ( (ListLongMap!18104 (toList!9067 List!26943)) )
))
(declare-fun lt!553898 () ListLongMap!18103)

(declare-fun lt!553894 () ListLongMap!18103)

(declare-fun lt!553895 () V!46411)

(declare-fun +!4048 (ListLongMap!18103 tuple2!20122) ListLongMap!18103)

(declare-fun get!19396 (ValueCell!14772 V!46411) V!46411)

(assert (=> b!1218486 (= res!809376 (= lt!553898 (+!4048 lt!553894 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895)))))))

(declare-fun mapIsEmpty!48325 () Bool)

(assert (=> mapIsEmpty!48325 mapRes!48325))

(declare-fun e!691838 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun b!1218488 () Bool)

(declare-fun arrayContainsKey!0 (array!78676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218488 (= e!691838 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1218489 () Bool)

(declare-fun e!691846 () Bool)

(declare-fun tp_is_empty!30963 () Bool)

(assert (=> b!1218489 (= e!691846 tp_is_empty!30963)))

(declare-fun b!1218490 () Bool)

(declare-fun res!809369 () Bool)

(assert (=> b!1218490 (=> (not res!809369) (not e!691836))))

(assert (=> b!1218490 (= res!809369 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38504 _keys!1208))))))

(declare-fun b!1218491 () Bool)

(declare-fun e!691844 () Bool)

(assert (=> b!1218491 (= e!691844 e!691839)))

(declare-fun res!809370 () Bool)

(assert (=> b!1218491 (=> res!809370 e!691839)))

(assert (=> b!1218491 (= res!809370 (not (validKeyInArray!0 (select (arr!37967 _keys!1208) from!1455))))))

(declare-fun lt!553892 () ListLongMap!18103)

(assert (=> b!1218491 (= lt!553892 lt!553894)))

(declare-fun lt!553893 () ListLongMap!18103)

(declare-fun -!1926 (ListLongMap!18103 (_ BitVec 64)) ListLongMap!18103)

(assert (=> b!1218491 (= lt!553894 (-!1926 lt!553893 k0!934))))

(declare-fun zeroValue!944 () V!46411)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!553901 () array!78676)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!553896 () array!78674)

(declare-fun minValue!944 () V!46411)

(declare-fun getCurrentListMapNoExtraKeys!5471 (array!78676 array!78674 (_ BitVec 32) (_ BitVec 32) V!46411 V!46411 (_ BitVec 32) Int) ListLongMap!18103)

(assert (=> b!1218491 (= lt!553892 (getCurrentListMapNoExtraKeys!5471 lt!553901 lt!553896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1218491 (= lt!553893 (getCurrentListMapNoExtraKeys!5471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40318 0))(
  ( (Unit!40319) )
))
(declare-fun lt!553900 () Unit!40318)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1128 (array!78676 array!78674 (_ BitVec 32) (_ BitVec 32) V!46411 V!46411 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40318)

(assert (=> b!1218491 (= lt!553900 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1128 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1218492 () Bool)

(declare-fun e!691841 () Bool)

(assert (=> b!1218492 (= e!691841 e!691844)))

(declare-fun res!809367 () Bool)

(assert (=> b!1218492 (=> res!809367 e!691844)))

(assert (=> b!1218492 (= res!809367 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1218492 (= lt!553898 (getCurrentListMapNoExtraKeys!5471 lt!553901 lt!553896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1218492 (= lt!553896 (array!78675 (store (arr!37966 _values!996) i!673 (ValueCellFull!14772 lt!553895)) (size!38503 _values!996)))))

(declare-fun dynLambda!3375 (Int (_ BitVec 64)) V!46411)

(assert (=> b!1218492 (= lt!553895 (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553897 () ListLongMap!18103)

(assert (=> b!1218492 (= lt!553897 (getCurrentListMapNoExtraKeys!5471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1218493 () Bool)

(declare-fun res!809377 () Bool)

(assert (=> b!1218493 (=> (not res!809377) (not e!691836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78676 (_ BitVec 32)) Bool)

(assert (=> b!1218493 (= res!809377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1218494 () Bool)

(assert (=> b!1218494 (= e!691837 e!691838)))

(declare-fun res!809368 () Bool)

(assert (=> b!1218494 (=> res!809368 e!691838)))

(assert (=> b!1218494 (= res!809368 (not (= (select (arr!37967 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1218495 () Bool)

(declare-fun e!691842 () Bool)

(assert (=> b!1218495 (= e!691836 e!691842)))

(declare-fun res!809372 () Bool)

(assert (=> b!1218495 (=> (not res!809372) (not e!691842))))

(assert (=> b!1218495 (= res!809372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553901 mask!1564))))

(assert (=> b!1218495 (= lt!553901 (array!78677 (store (arr!37967 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38504 _keys!1208)))))

(declare-fun b!1218496 () Bool)

(declare-fun res!809371 () Bool)

(assert (=> b!1218496 (=> (not res!809371) (not e!691836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1218496 (= res!809371 (validMask!0 mask!1564))))

(declare-fun b!1218487 () Bool)

(declare-fun res!809366 () Bool)

(assert (=> b!1218487 (=> (not res!809366) (not e!691836))))

(assert (=> b!1218487 (= res!809366 (= (select (arr!37967 _keys!1208) i!673) k0!934))))

(declare-fun res!809374 () Bool)

(assert (=> start!101424 (=> (not res!809374) (not e!691836))))

(assert (=> start!101424 (= res!809374 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38504 _keys!1208))))))

(assert (=> start!101424 e!691836))

(assert (=> start!101424 tp_is_empty!30963))

(declare-fun array_inv!28808 (array!78676) Bool)

(assert (=> start!101424 (array_inv!28808 _keys!1208)))

(assert (=> start!101424 true))

(assert (=> start!101424 tp!91806))

(declare-fun array_inv!28809 (array!78674) Bool)

(assert (=> start!101424 (and (array_inv!28809 _values!996) e!691840)))

(declare-fun b!1218497 () Bool)

(declare-fun res!809373 () Bool)

(assert (=> b!1218497 (=> (not res!809373) (not e!691842))))

(assert (=> b!1218497 (= res!809373 (arrayNoDuplicates!0 lt!553901 #b00000000000000000000000000000000 Nil!26939))))

(declare-fun b!1218498 () Bool)

(assert (=> b!1218498 (= e!691845 tp_is_empty!30963)))

(declare-fun b!1218499 () Bool)

(declare-fun res!809364 () Bool)

(assert (=> b!1218499 (=> (not res!809364) (not e!691836))))

(assert (=> b!1218499 (= res!809364 (and (= (size!38503 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38504 _keys!1208) (size!38503 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!48325 () Bool)

(declare-fun tp!91805 () Bool)

(assert (=> mapNonEmpty!48325 (= mapRes!48325 (and tp!91805 e!691846))))

(declare-fun mapKey!48325 () (_ BitVec 32))

(declare-fun mapValue!48325 () ValueCell!14772)

(declare-fun mapRest!48325 () (Array (_ BitVec 32) ValueCell!14772))

(assert (=> mapNonEmpty!48325 (= (arr!37966 _values!996) (store mapRest!48325 mapKey!48325 mapValue!48325))))

(declare-fun b!1218500 () Bool)

(assert (=> b!1218500 (= e!691842 (not e!691841))))

(declare-fun res!809375 () Bool)

(assert (=> b!1218500 (=> res!809375 e!691841)))

(assert (=> b!1218500 (= res!809375 (bvsgt from!1455 i!673))))

(assert (=> b!1218500 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!553899 () Unit!40318)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78676 (_ BitVec 64) (_ BitVec 32)) Unit!40318)

(assert (=> b!1218500 (= lt!553899 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!101424 res!809374) b!1218496))

(assert (= (and b!1218496 res!809371) b!1218499))

(assert (= (and b!1218499 res!809364) b!1218493))

(assert (= (and b!1218493 res!809377) b!1218485))

(assert (= (and b!1218485 res!809365) b!1218490))

(assert (= (and b!1218490 res!809369) b!1218484))

(assert (= (and b!1218484 res!809363) b!1218487))

(assert (= (and b!1218487 res!809366) b!1218495))

(assert (= (and b!1218495 res!809372) b!1218497))

(assert (= (and b!1218497 res!809373) b!1218500))

(assert (= (and b!1218500 (not res!809375)) b!1218492))

(assert (= (and b!1218492 (not res!809367)) b!1218491))

(assert (= (and b!1218491 (not res!809370)) b!1218486))

(assert (= (and b!1218486 res!809376) b!1218494))

(assert (= (and b!1218494 (not res!809368)) b!1218488))

(assert (= (and b!1218483 condMapEmpty!48325) mapIsEmpty!48325))

(assert (= (and b!1218483 (not condMapEmpty!48325)) mapNonEmpty!48325))

(get-info :version)

(assert (= (and mapNonEmpty!48325 ((_ is ValueCellFull!14772) mapValue!48325)) b!1218489))

(assert (= (and b!1218483 ((_ is ValueCellFull!14772) mapDefault!48325)) b!1218498))

(assert (= start!101424 b!1218483))

(declare-fun b_lambda!22021 () Bool)

(assert (=> (not b_lambda!22021) (not b!1218492)))

(declare-fun t!40187 () Bool)

(declare-fun tb!11067 () Bool)

(assert (=> (and start!101424 (= defaultEntry!1004 defaultEntry!1004) t!40187) tb!11067))

(declare-fun result!22727 () Bool)

(assert (=> tb!11067 (= result!22727 tp_is_empty!30963)))

(assert (=> b!1218492 t!40187))

(declare-fun b_and!43683 () Bool)

(assert (= b_and!43681 (and (=> t!40187 result!22727) b_and!43683)))

(declare-fun m!1123263 () Bool)

(assert (=> b!1218486 m!1123263))

(declare-fun m!1123265 () Bool)

(assert (=> b!1218486 m!1123265))

(assert (=> b!1218486 m!1123265))

(declare-fun m!1123267 () Bool)

(assert (=> b!1218486 m!1123267))

(declare-fun m!1123269 () Bool)

(assert (=> b!1218486 m!1123269))

(declare-fun m!1123271 () Bool)

(assert (=> b!1218487 m!1123271))

(declare-fun m!1123273 () Bool)

(assert (=> b!1218496 m!1123273))

(assert (=> b!1218494 m!1123263))

(declare-fun m!1123275 () Bool)

(assert (=> start!101424 m!1123275))

(declare-fun m!1123277 () Bool)

(assert (=> start!101424 m!1123277))

(declare-fun m!1123279 () Bool)

(assert (=> b!1218488 m!1123279))

(declare-fun m!1123281 () Bool)

(assert (=> mapNonEmpty!48325 m!1123281))

(declare-fun m!1123283 () Bool)

(assert (=> b!1218497 m!1123283))

(declare-fun m!1123285 () Bool)

(assert (=> b!1218500 m!1123285))

(declare-fun m!1123287 () Bool)

(assert (=> b!1218500 m!1123287))

(declare-fun m!1123289 () Bool)

(assert (=> b!1218493 m!1123289))

(declare-fun m!1123291 () Bool)

(assert (=> b!1218485 m!1123291))

(declare-fun m!1123293 () Bool)

(assert (=> b!1218491 m!1123293))

(declare-fun m!1123295 () Bool)

(assert (=> b!1218491 m!1123295))

(declare-fun m!1123297 () Bool)

(assert (=> b!1218491 m!1123297))

(assert (=> b!1218491 m!1123263))

(declare-fun m!1123299 () Bool)

(assert (=> b!1218491 m!1123299))

(assert (=> b!1218491 m!1123263))

(declare-fun m!1123301 () Bool)

(assert (=> b!1218491 m!1123301))

(declare-fun m!1123303 () Bool)

(assert (=> b!1218492 m!1123303))

(declare-fun m!1123305 () Bool)

(assert (=> b!1218492 m!1123305))

(declare-fun m!1123307 () Bool)

(assert (=> b!1218492 m!1123307))

(declare-fun m!1123309 () Bool)

(assert (=> b!1218492 m!1123309))

(declare-fun m!1123311 () Bool)

(assert (=> b!1218495 m!1123311))

(declare-fun m!1123313 () Bool)

(assert (=> b!1218495 m!1123313))

(declare-fun m!1123315 () Bool)

(assert (=> b!1218484 m!1123315))

(check-sat (not b!1218493) tp_is_empty!30963 (not b!1218491) (not b!1218485) b_and!43683 (not b!1218496) (not b!1218495) (not b!1218500) (not start!101424) (not b_lambda!22021) (not b!1218486) (not mapNonEmpty!48325) (not b!1218492) (not b!1218484) (not b!1218488) (not b_next!26259) (not b!1218497))
(check-sat b_and!43683 (not b_next!26259))
(get-model)

(declare-fun b_lambda!22025 () Bool)

(assert (= b_lambda!22021 (or (and start!101424 b_free!26259) b_lambda!22025)))

(check-sat (not b!1218493) tp_is_empty!30963 (not b_lambda!22025) (not b!1218491) (not b!1218485) b_and!43683 (not b!1218496) (not b!1218495) (not b!1218500) (not start!101424) (not b!1218486) (not mapNonEmpty!48325) (not b!1218492) (not b!1218484) (not b!1218488) (not b_next!26259) (not b!1218497))
(check-sat b_and!43683 (not b_next!26259))
(get-model)

(declare-fun b!1218569 () Bool)

(declare-fun e!691888 () Bool)

(declare-fun call!60647 () Bool)

(assert (=> b!1218569 (= e!691888 call!60647)))

(declare-fun b!1218570 () Bool)

(declare-fun e!691891 () Bool)

(assert (=> b!1218570 (= e!691891 e!691888)))

(declare-fun c!120071 () Bool)

(assert (=> b!1218570 (= c!120071 (validKeyInArray!0 (select (arr!37967 lt!553901) #b00000000000000000000000000000000)))))

(declare-fun b!1218571 () Bool)

(declare-fun e!691890 () Bool)

(declare-fun contains!7029 (List!26942 (_ BitVec 64)) Bool)

(assert (=> b!1218571 (= e!691890 (contains!7029 Nil!26939 (select (arr!37967 lt!553901) #b00000000000000000000000000000000)))))

(declare-fun b!1218572 () Bool)

(assert (=> b!1218572 (= e!691888 call!60647)))

(declare-fun b!1218573 () Bool)

(declare-fun e!691889 () Bool)

(assert (=> b!1218573 (= e!691889 e!691891)))

(declare-fun res!809430 () Bool)

(assert (=> b!1218573 (=> (not res!809430) (not e!691891))))

(assert (=> b!1218573 (= res!809430 (not e!691890))))

(declare-fun res!809429 () Bool)

(assert (=> b!1218573 (=> (not res!809429) (not e!691890))))

(assert (=> b!1218573 (= res!809429 (validKeyInArray!0 (select (arr!37967 lt!553901) #b00000000000000000000000000000000)))))

(declare-fun d!133569 () Bool)

(declare-fun res!809431 () Bool)

(assert (=> d!133569 (=> res!809431 e!691889)))

(assert (=> d!133569 (= res!809431 (bvsge #b00000000000000000000000000000000 (size!38504 lt!553901)))))

(assert (=> d!133569 (= (arrayNoDuplicates!0 lt!553901 #b00000000000000000000000000000000 Nil!26939) e!691889)))

(declare-fun bm!60644 () Bool)

(assert (=> bm!60644 (= call!60647 (arrayNoDuplicates!0 lt!553901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120071 (Cons!26938 (select (arr!37967 lt!553901) #b00000000000000000000000000000000) Nil!26939) Nil!26939)))))

(assert (= (and d!133569 (not res!809431)) b!1218573))

(assert (= (and b!1218573 res!809429) b!1218571))

(assert (= (and b!1218573 res!809430) b!1218570))

(assert (= (and b!1218570 c!120071) b!1218569))

(assert (= (and b!1218570 (not c!120071)) b!1218572))

(assert (= (or b!1218569 b!1218572) bm!60644))

(declare-fun m!1123371 () Bool)

(assert (=> b!1218570 m!1123371))

(assert (=> b!1218570 m!1123371))

(declare-fun m!1123373 () Bool)

(assert (=> b!1218570 m!1123373))

(assert (=> b!1218571 m!1123371))

(assert (=> b!1218571 m!1123371))

(declare-fun m!1123375 () Bool)

(assert (=> b!1218571 m!1123375))

(assert (=> b!1218573 m!1123371))

(assert (=> b!1218573 m!1123371))

(assert (=> b!1218573 m!1123373))

(assert (=> bm!60644 m!1123371))

(declare-fun m!1123377 () Bool)

(assert (=> bm!60644 m!1123377))

(assert (=> b!1218497 d!133569))

(declare-fun d!133571 () Bool)

(assert (=> d!133571 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1218496 d!133571))

(declare-fun d!133573 () Bool)

(declare-fun e!691894 () Bool)

(assert (=> d!133573 e!691894))

(declare-fun res!809437 () Bool)

(assert (=> d!133573 (=> (not res!809437) (not e!691894))))

(declare-fun lt!553941 () ListLongMap!18103)

(declare-fun contains!7030 (ListLongMap!18103 (_ BitVec 64)) Bool)

(assert (=> d!133573 (= res!809437 (contains!7030 lt!553941 (_1!10071 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895)))))))

(declare-fun lt!553942 () List!26943)

(assert (=> d!133573 (= lt!553941 (ListLongMap!18104 lt!553942))))

(declare-fun lt!553940 () Unit!40318)

(declare-fun lt!553943 () Unit!40318)

(assert (=> d!133573 (= lt!553940 lt!553943)))

(declare-datatypes ((Option!697 0))(
  ( (Some!696 (v!18196 V!46411)) (None!695) )
))
(declare-fun getValueByKey!646 (List!26943 (_ BitVec 64)) Option!697)

(assert (=> d!133573 (= (getValueByKey!646 lt!553942 (_1!10071 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895)))) (Some!696 (_2!10071 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!321 (List!26943 (_ BitVec 64) V!46411) Unit!40318)

(assert (=> d!133573 (= lt!553943 (lemmaContainsTupThenGetReturnValue!321 lt!553942 (_1!10071 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895))) (_2!10071 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895)))))))

(declare-fun insertStrictlySorted!413 (List!26943 (_ BitVec 64) V!46411) List!26943)

(assert (=> d!133573 (= lt!553942 (insertStrictlySorted!413 (toList!9067 lt!553894) (_1!10071 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895))) (_2!10071 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895)))))))

(assert (=> d!133573 (= (+!4048 lt!553894 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895))) lt!553941)))

(declare-fun b!1218578 () Bool)

(declare-fun res!809436 () Bool)

(assert (=> b!1218578 (=> (not res!809436) (not e!691894))))

(assert (=> b!1218578 (= res!809436 (= (getValueByKey!646 (toList!9067 lt!553941) (_1!10071 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895)))) (Some!696 (_2!10071 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895))))))))

(declare-fun b!1218579 () Bool)

(declare-fun contains!7031 (List!26943 tuple2!20122) Bool)

(assert (=> b!1218579 (= e!691894 (contains!7031 (toList!9067 lt!553941) (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895))))))

(assert (= (and d!133573 res!809437) b!1218578))

(assert (= (and b!1218578 res!809436) b!1218579))

(declare-fun m!1123379 () Bool)

(assert (=> d!133573 m!1123379))

(declare-fun m!1123381 () Bool)

(assert (=> d!133573 m!1123381))

(declare-fun m!1123383 () Bool)

(assert (=> d!133573 m!1123383))

(declare-fun m!1123385 () Bool)

(assert (=> d!133573 m!1123385))

(declare-fun m!1123387 () Bool)

(assert (=> b!1218578 m!1123387))

(declare-fun m!1123389 () Bool)

(assert (=> b!1218579 m!1123389))

(assert (=> b!1218486 d!133573))

(declare-fun d!133575 () Bool)

(declare-fun c!120074 () Bool)

(assert (=> d!133575 (= c!120074 ((_ is ValueCellFull!14772) (select (arr!37966 _values!996) from!1455)))))

(declare-fun e!691897 () V!46411)

(assert (=> d!133575 (= (get!19396 (select (arr!37966 _values!996) from!1455) lt!553895) e!691897)))

(declare-fun b!1218584 () Bool)

(declare-fun get!19397 (ValueCell!14772 V!46411) V!46411)

(assert (=> b!1218584 (= e!691897 (get!19397 (select (arr!37966 _values!996) from!1455) lt!553895))))

(declare-fun b!1218585 () Bool)

(declare-fun get!19398 (ValueCell!14772 V!46411) V!46411)

(assert (=> b!1218585 (= e!691897 (get!19398 (select (arr!37966 _values!996) from!1455) lt!553895))))

(assert (= (and d!133575 c!120074) b!1218584))

(assert (= (and d!133575 (not c!120074)) b!1218585))

(assert (=> b!1218584 m!1123265))

(declare-fun m!1123391 () Bool)

(assert (=> b!1218584 m!1123391))

(assert (=> b!1218585 m!1123265))

(declare-fun m!1123393 () Bool)

(assert (=> b!1218585 m!1123393))

(assert (=> b!1218486 d!133575))

(declare-fun bm!60647 () Bool)

(declare-fun call!60650 () Bool)

(assert (=> bm!60647 (= call!60650 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!553901 mask!1564))))

(declare-fun d!133577 () Bool)

(declare-fun res!809443 () Bool)

(declare-fun e!691905 () Bool)

(assert (=> d!133577 (=> res!809443 e!691905)))

(assert (=> d!133577 (= res!809443 (bvsge #b00000000000000000000000000000000 (size!38504 lt!553901)))))

(assert (=> d!133577 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553901 mask!1564) e!691905)))

(declare-fun b!1218594 () Bool)

(declare-fun e!691906 () Bool)

(assert (=> b!1218594 (= e!691906 call!60650)))

(declare-fun b!1218595 () Bool)

(assert (=> b!1218595 (= e!691905 e!691906)))

(declare-fun c!120077 () Bool)

(assert (=> b!1218595 (= c!120077 (validKeyInArray!0 (select (arr!37967 lt!553901) #b00000000000000000000000000000000)))))

(declare-fun b!1218596 () Bool)

(declare-fun e!691904 () Bool)

(assert (=> b!1218596 (= e!691906 e!691904)))

(declare-fun lt!553950 () (_ BitVec 64))

(assert (=> b!1218596 (= lt!553950 (select (arr!37967 lt!553901) #b00000000000000000000000000000000))))

(declare-fun lt!553951 () Unit!40318)

(assert (=> b!1218596 (= lt!553951 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!553901 lt!553950 #b00000000000000000000000000000000))))

(assert (=> b!1218596 (arrayContainsKey!0 lt!553901 lt!553950 #b00000000000000000000000000000000)))

(declare-fun lt!553952 () Unit!40318)

(assert (=> b!1218596 (= lt!553952 lt!553951)))

(declare-fun res!809442 () Bool)

(declare-datatypes ((SeekEntryResult!9942 0))(
  ( (MissingZero!9942 (index!42138 (_ BitVec 32))) (Found!9942 (index!42139 (_ BitVec 32))) (Intermediate!9942 (undefined!10754 Bool) (index!42140 (_ BitVec 32)) (x!107346 (_ BitVec 32))) (Undefined!9942) (MissingVacant!9942 (index!42141 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78676 (_ BitVec 32)) SeekEntryResult!9942)

(assert (=> b!1218596 (= res!809442 (= (seekEntryOrOpen!0 (select (arr!37967 lt!553901) #b00000000000000000000000000000000) lt!553901 mask!1564) (Found!9942 #b00000000000000000000000000000000)))))

(assert (=> b!1218596 (=> (not res!809442) (not e!691904))))

(declare-fun b!1218597 () Bool)

(assert (=> b!1218597 (= e!691904 call!60650)))

(assert (= (and d!133577 (not res!809443)) b!1218595))

(assert (= (and b!1218595 c!120077) b!1218596))

(assert (= (and b!1218595 (not c!120077)) b!1218594))

(assert (= (and b!1218596 res!809442) b!1218597))

(assert (= (or b!1218597 b!1218594) bm!60647))

(declare-fun m!1123395 () Bool)

(assert (=> bm!60647 m!1123395))

(assert (=> b!1218595 m!1123371))

(assert (=> b!1218595 m!1123371))

(assert (=> b!1218595 m!1123373))

(assert (=> b!1218596 m!1123371))

(declare-fun m!1123397 () Bool)

(assert (=> b!1218596 m!1123397))

(declare-fun m!1123399 () Bool)

(assert (=> b!1218596 m!1123399))

(assert (=> b!1218596 m!1123371))

(declare-fun m!1123401 () Bool)

(assert (=> b!1218596 m!1123401))

(assert (=> b!1218495 d!133577))

(declare-fun b!1218598 () Bool)

(declare-fun e!691907 () Bool)

(declare-fun call!60651 () Bool)

(assert (=> b!1218598 (= e!691907 call!60651)))

(declare-fun b!1218599 () Bool)

(declare-fun e!691910 () Bool)

(assert (=> b!1218599 (= e!691910 e!691907)))

(declare-fun c!120078 () Bool)

(assert (=> b!1218599 (= c!120078 (validKeyInArray!0 (select (arr!37967 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1218600 () Bool)

(declare-fun e!691909 () Bool)

(assert (=> b!1218600 (= e!691909 (contains!7029 Nil!26939 (select (arr!37967 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1218601 () Bool)

(assert (=> b!1218601 (= e!691907 call!60651)))

(declare-fun b!1218602 () Bool)

(declare-fun e!691908 () Bool)

(assert (=> b!1218602 (= e!691908 e!691910)))

(declare-fun res!809445 () Bool)

(assert (=> b!1218602 (=> (not res!809445) (not e!691910))))

(assert (=> b!1218602 (= res!809445 (not e!691909))))

(declare-fun res!809444 () Bool)

(assert (=> b!1218602 (=> (not res!809444) (not e!691909))))

(assert (=> b!1218602 (= res!809444 (validKeyInArray!0 (select (arr!37967 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!133579 () Bool)

(declare-fun res!809446 () Bool)

(assert (=> d!133579 (=> res!809446 e!691908)))

(assert (=> d!133579 (= res!809446 (bvsge #b00000000000000000000000000000000 (size!38504 _keys!1208)))))

(assert (=> d!133579 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26939) e!691908)))

(declare-fun bm!60648 () Bool)

(assert (=> bm!60648 (= call!60651 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120078 (Cons!26938 (select (arr!37967 _keys!1208) #b00000000000000000000000000000000) Nil!26939) Nil!26939)))))

(assert (= (and d!133579 (not res!809446)) b!1218602))

(assert (= (and b!1218602 res!809444) b!1218600))

(assert (= (and b!1218602 res!809445) b!1218599))

(assert (= (and b!1218599 c!120078) b!1218598))

(assert (= (and b!1218599 (not c!120078)) b!1218601))

(assert (= (or b!1218598 b!1218601) bm!60648))

(declare-fun m!1123403 () Bool)

(assert (=> b!1218599 m!1123403))

(assert (=> b!1218599 m!1123403))

(declare-fun m!1123405 () Bool)

(assert (=> b!1218599 m!1123405))

(assert (=> b!1218600 m!1123403))

(assert (=> b!1218600 m!1123403))

(declare-fun m!1123407 () Bool)

(assert (=> b!1218600 m!1123407))

(assert (=> b!1218602 m!1123403))

(assert (=> b!1218602 m!1123403))

(assert (=> b!1218602 m!1123405))

(assert (=> bm!60648 m!1123403))

(declare-fun m!1123409 () Bool)

(assert (=> bm!60648 m!1123409))

(assert (=> b!1218485 d!133579))

(declare-fun d!133581 () Bool)

(assert (=> d!133581 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1218484 d!133581))

(declare-fun bm!60649 () Bool)

(declare-fun call!60652 () Bool)

(assert (=> bm!60649 (= call!60652 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun d!133583 () Bool)

(declare-fun res!809448 () Bool)

(declare-fun e!691912 () Bool)

(assert (=> d!133583 (=> res!809448 e!691912)))

(assert (=> d!133583 (= res!809448 (bvsge #b00000000000000000000000000000000 (size!38504 _keys!1208)))))

(assert (=> d!133583 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!691912)))

(declare-fun b!1218603 () Bool)

(declare-fun e!691913 () Bool)

(assert (=> b!1218603 (= e!691913 call!60652)))

(declare-fun b!1218604 () Bool)

(assert (=> b!1218604 (= e!691912 e!691913)))

(declare-fun c!120079 () Bool)

(assert (=> b!1218604 (= c!120079 (validKeyInArray!0 (select (arr!37967 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1218605 () Bool)

(declare-fun e!691911 () Bool)

(assert (=> b!1218605 (= e!691913 e!691911)))

(declare-fun lt!553953 () (_ BitVec 64))

(assert (=> b!1218605 (= lt!553953 (select (arr!37967 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!553954 () Unit!40318)

(assert (=> b!1218605 (= lt!553954 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!553953 #b00000000000000000000000000000000))))

(assert (=> b!1218605 (arrayContainsKey!0 _keys!1208 lt!553953 #b00000000000000000000000000000000)))

(declare-fun lt!553955 () Unit!40318)

(assert (=> b!1218605 (= lt!553955 lt!553954)))

(declare-fun res!809447 () Bool)

(assert (=> b!1218605 (= res!809447 (= (seekEntryOrOpen!0 (select (arr!37967 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9942 #b00000000000000000000000000000000)))))

(assert (=> b!1218605 (=> (not res!809447) (not e!691911))))

(declare-fun b!1218606 () Bool)

(assert (=> b!1218606 (= e!691911 call!60652)))

(assert (= (and d!133583 (not res!809448)) b!1218604))

(assert (= (and b!1218604 c!120079) b!1218605))

(assert (= (and b!1218604 (not c!120079)) b!1218603))

(assert (= (and b!1218605 res!809447) b!1218606))

(assert (= (or b!1218606 b!1218603) bm!60649))

(declare-fun m!1123411 () Bool)

(assert (=> bm!60649 m!1123411))

(assert (=> b!1218604 m!1123403))

(assert (=> b!1218604 m!1123403))

(assert (=> b!1218604 m!1123405))

(assert (=> b!1218605 m!1123403))

(declare-fun m!1123413 () Bool)

(assert (=> b!1218605 m!1123413))

(declare-fun m!1123415 () Bool)

(assert (=> b!1218605 m!1123415))

(assert (=> b!1218605 m!1123403))

(declare-fun m!1123417 () Bool)

(assert (=> b!1218605 m!1123417))

(assert (=> b!1218493 d!133583))

(declare-fun b!1218632 () Bool)

(declare-fun e!691934 () Bool)

(declare-fun e!691933 () Bool)

(assert (=> b!1218632 (= e!691934 e!691933)))

(assert (=> b!1218632 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38504 lt!553901)))))

(declare-fun res!809457 () Bool)

(declare-fun lt!553975 () ListLongMap!18103)

(assert (=> b!1218632 (= res!809457 (contains!7030 lt!553975 (select (arr!37967 lt!553901) from!1455)))))

(assert (=> b!1218632 (=> (not res!809457) (not e!691933))))

(declare-fun bm!60652 () Bool)

(declare-fun call!60655 () ListLongMap!18103)

(assert (=> bm!60652 (= call!60655 (getCurrentListMapNoExtraKeys!5471 lt!553901 lt!553896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1218633 () Bool)

(declare-fun e!691930 () ListLongMap!18103)

(assert (=> b!1218633 (= e!691930 call!60655)))

(declare-fun b!1218634 () Bool)

(declare-fun lt!553971 () Unit!40318)

(declare-fun lt!553976 () Unit!40318)

(assert (=> b!1218634 (= lt!553971 lt!553976)))

(declare-fun lt!553972 () (_ BitVec 64))

(declare-fun lt!553974 () ListLongMap!18103)

(declare-fun lt!553973 () V!46411)

(declare-fun lt!553970 () (_ BitVec 64))

(assert (=> b!1218634 (not (contains!7030 (+!4048 lt!553974 (tuple2!20123 lt!553972 lt!553973)) lt!553970))))

(declare-fun addStillNotContains!302 (ListLongMap!18103 (_ BitVec 64) V!46411 (_ BitVec 64)) Unit!40318)

(assert (=> b!1218634 (= lt!553976 (addStillNotContains!302 lt!553974 lt!553972 lt!553973 lt!553970))))

(assert (=> b!1218634 (= lt!553970 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1218634 (= lt!553973 (get!19396 (select (arr!37966 lt!553896) from!1455) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1218634 (= lt!553972 (select (arr!37967 lt!553901) from!1455))))

(assert (=> b!1218634 (= lt!553974 call!60655)))

(assert (=> b!1218634 (= e!691930 (+!4048 call!60655 (tuple2!20123 (select (arr!37967 lt!553901) from!1455) (get!19396 (select (arr!37966 lt!553896) from!1455) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1218635 () Bool)

(declare-fun e!691931 () ListLongMap!18103)

(assert (=> b!1218635 (= e!691931 e!691930)))

(declare-fun c!120091 () Bool)

(assert (=> b!1218635 (= c!120091 (validKeyInArray!0 (select (arr!37967 lt!553901) from!1455)))))

(declare-fun b!1218636 () Bool)

(declare-fun e!691928 () Bool)

(assert (=> b!1218636 (= e!691934 e!691928)))

(declare-fun c!120088 () Bool)

(assert (=> b!1218636 (= c!120088 (bvslt from!1455 (size!38504 lt!553901)))))

(declare-fun b!1218637 () Bool)

(declare-fun e!691929 () Bool)

(assert (=> b!1218637 (= e!691929 e!691934)))

(declare-fun c!120089 () Bool)

(declare-fun e!691932 () Bool)

(assert (=> b!1218637 (= c!120089 e!691932)))

(declare-fun res!809459 () Bool)

(assert (=> b!1218637 (=> (not res!809459) (not e!691932))))

(assert (=> b!1218637 (= res!809459 (bvslt from!1455 (size!38504 lt!553901)))))

(declare-fun b!1218638 () Bool)

(assert (=> b!1218638 (= e!691928 (= lt!553975 (getCurrentListMapNoExtraKeys!5471 lt!553901 lt!553896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!133585 () Bool)

(assert (=> d!133585 e!691929))

(declare-fun res!809458 () Bool)

(assert (=> d!133585 (=> (not res!809458) (not e!691929))))

(assert (=> d!133585 (= res!809458 (not (contains!7030 lt!553975 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133585 (= lt!553975 e!691931)))

(declare-fun c!120090 () Bool)

(assert (=> d!133585 (= c!120090 (bvsge from!1455 (size!38504 lt!553901)))))

(assert (=> d!133585 (validMask!0 mask!1564)))

(assert (=> d!133585 (= (getCurrentListMapNoExtraKeys!5471 lt!553901 lt!553896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!553975)))

(declare-fun b!1218631 () Bool)

(assert (=> b!1218631 (= e!691931 (ListLongMap!18104 Nil!26940))))

(declare-fun b!1218639 () Bool)

(declare-fun isEmpty!999 (ListLongMap!18103) Bool)

(assert (=> b!1218639 (= e!691928 (isEmpty!999 lt!553975))))

(declare-fun b!1218640 () Bool)

(declare-fun res!809460 () Bool)

(assert (=> b!1218640 (=> (not res!809460) (not e!691929))))

(assert (=> b!1218640 (= res!809460 (not (contains!7030 lt!553975 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1218641 () Bool)

(assert (=> b!1218641 (= e!691932 (validKeyInArray!0 (select (arr!37967 lt!553901) from!1455)))))

(assert (=> b!1218641 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1218642 () Bool)

(assert (=> b!1218642 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38504 lt!553901)))))

(assert (=> b!1218642 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38503 lt!553896)))))

(declare-fun apply!1007 (ListLongMap!18103 (_ BitVec 64)) V!46411)

(assert (=> b!1218642 (= e!691933 (= (apply!1007 lt!553975 (select (arr!37967 lt!553901) from!1455)) (get!19396 (select (arr!37966 lt!553896) from!1455) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!133585 c!120090) b!1218631))

(assert (= (and d!133585 (not c!120090)) b!1218635))

(assert (= (and b!1218635 c!120091) b!1218634))

(assert (= (and b!1218635 (not c!120091)) b!1218633))

(assert (= (or b!1218634 b!1218633) bm!60652))

(assert (= (and d!133585 res!809458) b!1218640))

(assert (= (and b!1218640 res!809460) b!1218637))

(assert (= (and b!1218637 res!809459) b!1218641))

(assert (= (and b!1218637 c!120089) b!1218632))

(assert (= (and b!1218637 (not c!120089)) b!1218636))

(assert (= (and b!1218632 res!809457) b!1218642))

(assert (= (and b!1218636 c!120088) b!1218638))

(assert (= (and b!1218636 (not c!120088)) b!1218639))

(declare-fun b_lambda!22027 () Bool)

(assert (=> (not b_lambda!22027) (not b!1218634)))

(assert (=> b!1218634 t!40187))

(declare-fun b_and!43689 () Bool)

(assert (= b_and!43683 (and (=> t!40187 result!22727) b_and!43689)))

(declare-fun b_lambda!22029 () Bool)

(assert (=> (not b_lambda!22029) (not b!1218642)))

(assert (=> b!1218642 t!40187))

(declare-fun b_and!43691 () Bool)

(assert (= b_and!43689 (and (=> t!40187 result!22727) b_and!43691)))

(declare-fun m!1123419 () Bool)

(assert (=> d!133585 m!1123419))

(assert (=> d!133585 m!1123273))

(declare-fun m!1123421 () Bool)

(assert (=> b!1218639 m!1123421))

(declare-fun m!1123423 () Bool)

(assert (=> bm!60652 m!1123423))

(declare-fun m!1123425 () Bool)

(assert (=> b!1218642 m!1123425))

(declare-fun m!1123427 () Bool)

(assert (=> b!1218642 m!1123427))

(declare-fun m!1123429 () Bool)

(assert (=> b!1218642 m!1123429))

(assert (=> b!1218642 m!1123307))

(declare-fun m!1123431 () Bool)

(assert (=> b!1218642 m!1123431))

(assert (=> b!1218642 m!1123429))

(assert (=> b!1218642 m!1123425))

(assert (=> b!1218642 m!1123307))

(assert (=> b!1218641 m!1123425))

(assert (=> b!1218641 m!1123425))

(declare-fun m!1123433 () Bool)

(assert (=> b!1218641 m!1123433))

(declare-fun m!1123435 () Bool)

(assert (=> b!1218640 m!1123435))

(assert (=> b!1218632 m!1123425))

(assert (=> b!1218632 m!1123425))

(declare-fun m!1123437 () Bool)

(assert (=> b!1218632 m!1123437))

(assert (=> b!1218634 m!1123429))

(assert (=> b!1218634 m!1123307))

(assert (=> b!1218634 m!1123429))

(assert (=> b!1218634 m!1123307))

(assert (=> b!1218634 m!1123431))

(declare-fun m!1123439 () Bool)

(assert (=> b!1218634 m!1123439))

(declare-fun m!1123441 () Bool)

(assert (=> b!1218634 m!1123441))

(assert (=> b!1218634 m!1123441))

(declare-fun m!1123443 () Bool)

(assert (=> b!1218634 m!1123443))

(assert (=> b!1218634 m!1123425))

(declare-fun m!1123445 () Bool)

(assert (=> b!1218634 m!1123445))

(assert (=> b!1218635 m!1123425))

(assert (=> b!1218635 m!1123425))

(assert (=> b!1218635 m!1123433))

(assert (=> b!1218638 m!1123423))

(assert (=> b!1218492 d!133585))

(declare-fun b!1218644 () Bool)

(declare-fun e!691941 () Bool)

(declare-fun e!691940 () Bool)

(assert (=> b!1218644 (= e!691941 e!691940)))

(assert (=> b!1218644 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38504 _keys!1208)))))

(declare-fun lt!553982 () ListLongMap!18103)

(declare-fun res!809461 () Bool)

(assert (=> b!1218644 (= res!809461 (contains!7030 lt!553982 (select (arr!37967 _keys!1208) from!1455)))))

(assert (=> b!1218644 (=> (not res!809461) (not e!691940))))

(declare-fun call!60656 () ListLongMap!18103)

(declare-fun bm!60653 () Bool)

(assert (=> bm!60653 (= call!60656 (getCurrentListMapNoExtraKeys!5471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1218645 () Bool)

(declare-fun e!691937 () ListLongMap!18103)

(assert (=> b!1218645 (= e!691937 call!60656)))

(declare-fun b!1218646 () Bool)

(declare-fun lt!553978 () Unit!40318)

(declare-fun lt!553983 () Unit!40318)

(assert (=> b!1218646 (= lt!553978 lt!553983)))

(declare-fun lt!553981 () ListLongMap!18103)

(declare-fun lt!553980 () V!46411)

(declare-fun lt!553977 () (_ BitVec 64))

(declare-fun lt!553979 () (_ BitVec 64))

(assert (=> b!1218646 (not (contains!7030 (+!4048 lt!553981 (tuple2!20123 lt!553979 lt!553980)) lt!553977))))

(assert (=> b!1218646 (= lt!553983 (addStillNotContains!302 lt!553981 lt!553979 lt!553980 lt!553977))))

(assert (=> b!1218646 (= lt!553977 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1218646 (= lt!553980 (get!19396 (select (arr!37966 _values!996) from!1455) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1218646 (= lt!553979 (select (arr!37967 _keys!1208) from!1455))))

(assert (=> b!1218646 (= lt!553981 call!60656)))

(assert (=> b!1218646 (= e!691937 (+!4048 call!60656 (tuple2!20123 (select (arr!37967 _keys!1208) from!1455) (get!19396 (select (arr!37966 _values!996) from!1455) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1218647 () Bool)

(declare-fun e!691938 () ListLongMap!18103)

(assert (=> b!1218647 (= e!691938 e!691937)))

(declare-fun c!120095 () Bool)

(assert (=> b!1218647 (= c!120095 (validKeyInArray!0 (select (arr!37967 _keys!1208) from!1455)))))

(declare-fun b!1218648 () Bool)

(declare-fun e!691935 () Bool)

(assert (=> b!1218648 (= e!691941 e!691935)))

(declare-fun c!120092 () Bool)

(assert (=> b!1218648 (= c!120092 (bvslt from!1455 (size!38504 _keys!1208)))))

(declare-fun b!1218649 () Bool)

(declare-fun e!691936 () Bool)

(assert (=> b!1218649 (= e!691936 e!691941)))

(declare-fun c!120093 () Bool)

(declare-fun e!691939 () Bool)

(assert (=> b!1218649 (= c!120093 e!691939)))

(declare-fun res!809463 () Bool)

(assert (=> b!1218649 (=> (not res!809463) (not e!691939))))

(assert (=> b!1218649 (= res!809463 (bvslt from!1455 (size!38504 _keys!1208)))))

(declare-fun b!1218650 () Bool)

(assert (=> b!1218650 (= e!691935 (= lt!553982 (getCurrentListMapNoExtraKeys!5471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!133587 () Bool)

(assert (=> d!133587 e!691936))

(declare-fun res!809462 () Bool)

(assert (=> d!133587 (=> (not res!809462) (not e!691936))))

(assert (=> d!133587 (= res!809462 (not (contains!7030 lt!553982 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133587 (= lt!553982 e!691938)))

(declare-fun c!120094 () Bool)

(assert (=> d!133587 (= c!120094 (bvsge from!1455 (size!38504 _keys!1208)))))

(assert (=> d!133587 (validMask!0 mask!1564)))

(assert (=> d!133587 (= (getCurrentListMapNoExtraKeys!5471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!553982)))

(declare-fun b!1218643 () Bool)

(assert (=> b!1218643 (= e!691938 (ListLongMap!18104 Nil!26940))))

(declare-fun b!1218651 () Bool)

(assert (=> b!1218651 (= e!691935 (isEmpty!999 lt!553982))))

(declare-fun b!1218652 () Bool)

(declare-fun res!809464 () Bool)

(assert (=> b!1218652 (=> (not res!809464) (not e!691936))))

(assert (=> b!1218652 (= res!809464 (not (contains!7030 lt!553982 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1218653 () Bool)

(assert (=> b!1218653 (= e!691939 (validKeyInArray!0 (select (arr!37967 _keys!1208) from!1455)))))

(assert (=> b!1218653 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1218654 () Bool)

(assert (=> b!1218654 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38504 _keys!1208)))))

(assert (=> b!1218654 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38503 _values!996)))))

(assert (=> b!1218654 (= e!691940 (= (apply!1007 lt!553982 (select (arr!37967 _keys!1208) from!1455)) (get!19396 (select (arr!37966 _values!996) from!1455) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!133587 c!120094) b!1218643))

(assert (= (and d!133587 (not c!120094)) b!1218647))

(assert (= (and b!1218647 c!120095) b!1218646))

(assert (= (and b!1218647 (not c!120095)) b!1218645))

(assert (= (or b!1218646 b!1218645) bm!60653))

(assert (= (and d!133587 res!809462) b!1218652))

(assert (= (and b!1218652 res!809464) b!1218649))

(assert (= (and b!1218649 res!809463) b!1218653))

(assert (= (and b!1218649 c!120093) b!1218644))

(assert (= (and b!1218649 (not c!120093)) b!1218648))

(assert (= (and b!1218644 res!809461) b!1218654))

(assert (= (and b!1218648 c!120092) b!1218650))

(assert (= (and b!1218648 (not c!120092)) b!1218651))

(declare-fun b_lambda!22031 () Bool)

(assert (=> (not b_lambda!22031) (not b!1218646)))

(assert (=> b!1218646 t!40187))

(declare-fun b_and!43693 () Bool)

(assert (= b_and!43691 (and (=> t!40187 result!22727) b_and!43693)))

(declare-fun b_lambda!22033 () Bool)

(assert (=> (not b_lambda!22033) (not b!1218654)))

(assert (=> b!1218654 t!40187))

(declare-fun b_and!43695 () Bool)

(assert (= b_and!43693 (and (=> t!40187 result!22727) b_and!43695)))

(declare-fun m!1123447 () Bool)

(assert (=> d!133587 m!1123447))

(assert (=> d!133587 m!1123273))

(declare-fun m!1123449 () Bool)

(assert (=> b!1218651 m!1123449))

(declare-fun m!1123451 () Bool)

(assert (=> bm!60653 m!1123451))

(assert (=> b!1218654 m!1123263))

(declare-fun m!1123453 () Bool)

(assert (=> b!1218654 m!1123453))

(assert (=> b!1218654 m!1123265))

(assert (=> b!1218654 m!1123307))

(declare-fun m!1123455 () Bool)

(assert (=> b!1218654 m!1123455))

(assert (=> b!1218654 m!1123265))

(assert (=> b!1218654 m!1123263))

(assert (=> b!1218654 m!1123307))

(assert (=> b!1218653 m!1123263))

(assert (=> b!1218653 m!1123263))

(assert (=> b!1218653 m!1123299))

(declare-fun m!1123457 () Bool)

(assert (=> b!1218652 m!1123457))

(assert (=> b!1218644 m!1123263))

(assert (=> b!1218644 m!1123263))

(declare-fun m!1123459 () Bool)

(assert (=> b!1218644 m!1123459))

(assert (=> b!1218646 m!1123265))

(assert (=> b!1218646 m!1123307))

(assert (=> b!1218646 m!1123265))

(assert (=> b!1218646 m!1123307))

(assert (=> b!1218646 m!1123455))

(declare-fun m!1123461 () Bool)

(assert (=> b!1218646 m!1123461))

(declare-fun m!1123463 () Bool)

(assert (=> b!1218646 m!1123463))

(assert (=> b!1218646 m!1123463))

(declare-fun m!1123465 () Bool)

(assert (=> b!1218646 m!1123465))

(assert (=> b!1218646 m!1123263))

(declare-fun m!1123467 () Bool)

(assert (=> b!1218646 m!1123467))

(assert (=> b!1218647 m!1123263))

(assert (=> b!1218647 m!1123263))

(assert (=> b!1218647 m!1123299))

(assert (=> b!1218650 m!1123451))

(assert (=> b!1218492 d!133587))

(declare-fun d!133589 () Bool)

(assert (=> d!133589 (= (validKeyInArray!0 (select (arr!37967 _keys!1208) from!1455)) (and (not (= (select (arr!37967 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!37967 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1218491 d!133589))

(declare-fun d!133591 () Bool)

(declare-fun lt!553986 () ListLongMap!18103)

(assert (=> d!133591 (not (contains!7030 lt!553986 k0!934))))

(declare-fun removeStrictlySorted!106 (List!26943 (_ BitVec 64)) List!26943)

(assert (=> d!133591 (= lt!553986 (ListLongMap!18104 (removeStrictlySorted!106 (toList!9067 lt!553893) k0!934)))))

(assert (=> d!133591 (= (-!1926 lt!553893 k0!934) lt!553986)))

(declare-fun bs!34325 () Bool)

(assert (= bs!34325 d!133591))

(declare-fun m!1123469 () Bool)

(assert (=> bs!34325 m!1123469))

(declare-fun m!1123471 () Bool)

(assert (=> bs!34325 m!1123471))

(assert (=> b!1218491 d!133591))

(declare-fun bm!60658 () Bool)

(declare-fun call!60661 () ListLongMap!18103)

(assert (=> bm!60658 (= call!60661 (getCurrentListMapNoExtraKeys!5471 (array!78677 (store (arr!37967 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38504 _keys!1208)) (array!78675 (store (arr!37966 _values!996) i!673 (ValueCellFull!14772 (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38503 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1218661 () Bool)

(declare-fun e!691947 () Bool)

(declare-fun call!60662 () ListLongMap!18103)

(assert (=> b!1218661 (= e!691947 (= call!60661 call!60662))))

(assert (=> b!1218661 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38503 _values!996)))))

(declare-fun b!1218662 () Bool)

(declare-fun e!691946 () Bool)

(assert (=> b!1218662 (= e!691946 e!691947)))

(declare-fun c!120098 () Bool)

(assert (=> b!1218662 (= c!120098 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1218663 () Bool)

(assert (=> b!1218663 (= e!691947 (= call!60661 (-!1926 call!60662 k0!934)))))

(assert (=> b!1218663 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38503 _values!996)))))

(declare-fun bm!60659 () Bool)

(assert (=> bm!60659 (= call!60662 (getCurrentListMapNoExtraKeys!5471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun d!133593 () Bool)

(assert (=> d!133593 e!691946))

(declare-fun res!809467 () Bool)

(assert (=> d!133593 (=> (not res!809467) (not e!691946))))

(assert (=> d!133593 (= res!809467 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38504 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38504 _keys!1208))))))))

(declare-fun lt!553989 () Unit!40318)

(declare-fun choose!1830 (array!78676 array!78674 (_ BitVec 32) (_ BitVec 32) V!46411 V!46411 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40318)

(assert (=> d!133593 (= lt!553989 (choose!1830 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133593 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 _keys!1208)))))

(assert (=> d!133593 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1128 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!553989)))

(assert (= (and d!133593 res!809467) b!1218662))

(assert (= (and b!1218662 c!120098) b!1218663))

(assert (= (and b!1218662 (not c!120098)) b!1218661))

(assert (= (or b!1218663 b!1218661) bm!60659))

(assert (= (or b!1218663 b!1218661) bm!60658))

(declare-fun b_lambda!22035 () Bool)

(assert (=> (not b_lambda!22035) (not bm!60658)))

(assert (=> bm!60658 t!40187))

(declare-fun b_and!43697 () Bool)

(assert (= b_and!43695 (and (=> t!40187 result!22727) b_and!43697)))

(assert (=> bm!60658 m!1123313))

(assert (=> bm!60658 m!1123307))

(declare-fun m!1123473 () Bool)

(assert (=> bm!60658 m!1123473))

(declare-fun m!1123475 () Bool)

(assert (=> bm!60658 m!1123475))

(declare-fun m!1123477 () Bool)

(assert (=> b!1218663 m!1123477))

(assert (=> bm!60659 m!1123293))

(declare-fun m!1123479 () Bool)

(assert (=> d!133593 m!1123479))

(assert (=> b!1218491 d!133593))

(declare-fun b!1218665 () Bool)

(declare-fun e!691954 () Bool)

(declare-fun e!691953 () Bool)

(assert (=> b!1218665 (= e!691954 e!691953)))

(assert (=> b!1218665 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 lt!553901)))))

(declare-fun lt!553995 () ListLongMap!18103)

(declare-fun res!809468 () Bool)

(assert (=> b!1218665 (= res!809468 (contains!7030 lt!553995 (select (arr!37967 lt!553901) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1218665 (=> (not res!809468) (not e!691953))))

(declare-fun call!60663 () ListLongMap!18103)

(declare-fun bm!60660 () Bool)

(assert (=> bm!60660 (= call!60663 (getCurrentListMapNoExtraKeys!5471 lt!553901 lt!553896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1218666 () Bool)

(declare-fun e!691950 () ListLongMap!18103)

(assert (=> b!1218666 (= e!691950 call!60663)))

(declare-fun b!1218667 () Bool)

(declare-fun lt!553991 () Unit!40318)

(declare-fun lt!553996 () Unit!40318)

(assert (=> b!1218667 (= lt!553991 lt!553996)))

(declare-fun lt!553993 () V!46411)

(declare-fun lt!553994 () ListLongMap!18103)

(declare-fun lt!553992 () (_ BitVec 64))

(declare-fun lt!553990 () (_ BitVec 64))

(assert (=> b!1218667 (not (contains!7030 (+!4048 lt!553994 (tuple2!20123 lt!553992 lt!553993)) lt!553990))))

(assert (=> b!1218667 (= lt!553996 (addStillNotContains!302 lt!553994 lt!553992 lt!553993 lt!553990))))

(assert (=> b!1218667 (= lt!553990 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1218667 (= lt!553993 (get!19396 (select (arr!37966 lt!553896) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1218667 (= lt!553992 (select (arr!37967 lt!553901) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1218667 (= lt!553994 call!60663)))

(assert (=> b!1218667 (= e!691950 (+!4048 call!60663 (tuple2!20123 (select (arr!37967 lt!553901) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19396 (select (arr!37966 lt!553896) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1218668 () Bool)

(declare-fun e!691951 () ListLongMap!18103)

(assert (=> b!1218668 (= e!691951 e!691950)))

(declare-fun c!120102 () Bool)

(assert (=> b!1218668 (= c!120102 (validKeyInArray!0 (select (arr!37967 lt!553901) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1218669 () Bool)

(declare-fun e!691948 () Bool)

(assert (=> b!1218669 (= e!691954 e!691948)))

(declare-fun c!120099 () Bool)

(assert (=> b!1218669 (= c!120099 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 lt!553901)))))

(declare-fun b!1218670 () Bool)

(declare-fun e!691949 () Bool)

(assert (=> b!1218670 (= e!691949 e!691954)))

(declare-fun c!120100 () Bool)

(declare-fun e!691952 () Bool)

(assert (=> b!1218670 (= c!120100 e!691952)))

(declare-fun res!809470 () Bool)

(assert (=> b!1218670 (=> (not res!809470) (not e!691952))))

(assert (=> b!1218670 (= res!809470 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 lt!553901)))))

(declare-fun b!1218671 () Bool)

(assert (=> b!1218671 (= e!691948 (= lt!553995 (getCurrentListMapNoExtraKeys!5471 lt!553901 lt!553896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!133595 () Bool)

(assert (=> d!133595 e!691949))

(declare-fun res!809469 () Bool)

(assert (=> d!133595 (=> (not res!809469) (not e!691949))))

(assert (=> d!133595 (= res!809469 (not (contains!7030 lt!553995 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133595 (= lt!553995 e!691951)))

(declare-fun c!120101 () Bool)

(assert (=> d!133595 (= c!120101 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 lt!553901)))))

(assert (=> d!133595 (validMask!0 mask!1564)))

(assert (=> d!133595 (= (getCurrentListMapNoExtraKeys!5471 lt!553901 lt!553896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!553995)))

(declare-fun b!1218664 () Bool)

(assert (=> b!1218664 (= e!691951 (ListLongMap!18104 Nil!26940))))

(declare-fun b!1218672 () Bool)

(assert (=> b!1218672 (= e!691948 (isEmpty!999 lt!553995))))

(declare-fun b!1218673 () Bool)

(declare-fun res!809471 () Bool)

(assert (=> b!1218673 (=> (not res!809471) (not e!691949))))

(assert (=> b!1218673 (= res!809471 (not (contains!7030 lt!553995 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1218674 () Bool)

(assert (=> b!1218674 (= e!691952 (validKeyInArray!0 (select (arr!37967 lt!553901) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1218674 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1218675 () Bool)

(assert (=> b!1218675 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 lt!553901)))))

(assert (=> b!1218675 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38503 lt!553896)))))

(assert (=> b!1218675 (= e!691953 (= (apply!1007 lt!553995 (select (arr!37967 lt!553901) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19396 (select (arr!37966 lt!553896) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!133595 c!120101) b!1218664))

(assert (= (and d!133595 (not c!120101)) b!1218668))

(assert (= (and b!1218668 c!120102) b!1218667))

(assert (= (and b!1218668 (not c!120102)) b!1218666))

(assert (= (or b!1218667 b!1218666) bm!60660))

(assert (= (and d!133595 res!809469) b!1218673))

(assert (= (and b!1218673 res!809471) b!1218670))

(assert (= (and b!1218670 res!809470) b!1218674))

(assert (= (and b!1218670 c!120100) b!1218665))

(assert (= (and b!1218670 (not c!120100)) b!1218669))

(assert (= (and b!1218665 res!809468) b!1218675))

(assert (= (and b!1218669 c!120099) b!1218671))

(assert (= (and b!1218669 (not c!120099)) b!1218672))

(declare-fun b_lambda!22037 () Bool)

(assert (=> (not b_lambda!22037) (not b!1218667)))

(assert (=> b!1218667 t!40187))

(declare-fun b_and!43699 () Bool)

(assert (= b_and!43697 (and (=> t!40187 result!22727) b_and!43699)))

(declare-fun b_lambda!22039 () Bool)

(assert (=> (not b_lambda!22039) (not b!1218675)))

(assert (=> b!1218675 t!40187))

(declare-fun b_and!43701 () Bool)

(assert (= b_and!43699 (and (=> t!40187 result!22727) b_and!43701)))

(declare-fun m!1123481 () Bool)

(assert (=> d!133595 m!1123481))

(assert (=> d!133595 m!1123273))

(declare-fun m!1123483 () Bool)

(assert (=> b!1218672 m!1123483))

(declare-fun m!1123485 () Bool)

(assert (=> bm!60660 m!1123485))

(declare-fun m!1123487 () Bool)

(assert (=> b!1218675 m!1123487))

(declare-fun m!1123489 () Bool)

(assert (=> b!1218675 m!1123489))

(declare-fun m!1123491 () Bool)

(assert (=> b!1218675 m!1123491))

(assert (=> b!1218675 m!1123307))

(declare-fun m!1123493 () Bool)

(assert (=> b!1218675 m!1123493))

(assert (=> b!1218675 m!1123491))

(assert (=> b!1218675 m!1123487))

(assert (=> b!1218675 m!1123307))

(assert (=> b!1218674 m!1123487))

(assert (=> b!1218674 m!1123487))

(declare-fun m!1123495 () Bool)

(assert (=> b!1218674 m!1123495))

(declare-fun m!1123497 () Bool)

(assert (=> b!1218673 m!1123497))

(assert (=> b!1218665 m!1123487))

(assert (=> b!1218665 m!1123487))

(declare-fun m!1123499 () Bool)

(assert (=> b!1218665 m!1123499))

(assert (=> b!1218667 m!1123491))

(assert (=> b!1218667 m!1123307))

(assert (=> b!1218667 m!1123491))

(assert (=> b!1218667 m!1123307))

(assert (=> b!1218667 m!1123493))

(declare-fun m!1123501 () Bool)

(assert (=> b!1218667 m!1123501))

(declare-fun m!1123503 () Bool)

(assert (=> b!1218667 m!1123503))

(assert (=> b!1218667 m!1123503))

(declare-fun m!1123505 () Bool)

(assert (=> b!1218667 m!1123505))

(assert (=> b!1218667 m!1123487))

(declare-fun m!1123507 () Bool)

(assert (=> b!1218667 m!1123507))

(assert (=> b!1218668 m!1123487))

(assert (=> b!1218668 m!1123487))

(assert (=> b!1218668 m!1123495))

(assert (=> b!1218671 m!1123485))

(assert (=> b!1218491 d!133595))

(declare-fun b!1218677 () Bool)

(declare-fun e!691961 () Bool)

(declare-fun e!691960 () Bool)

(assert (=> b!1218677 (= e!691961 e!691960)))

(assert (=> b!1218677 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 _keys!1208)))))

(declare-fun res!809472 () Bool)

(declare-fun lt!554002 () ListLongMap!18103)

(assert (=> b!1218677 (= res!809472 (contains!7030 lt!554002 (select (arr!37967 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1218677 (=> (not res!809472) (not e!691960))))

(declare-fun call!60664 () ListLongMap!18103)

(declare-fun bm!60661 () Bool)

(assert (=> bm!60661 (= call!60664 (getCurrentListMapNoExtraKeys!5471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1218678 () Bool)

(declare-fun e!691957 () ListLongMap!18103)

(assert (=> b!1218678 (= e!691957 call!60664)))

(declare-fun b!1218679 () Bool)

(declare-fun lt!553998 () Unit!40318)

(declare-fun lt!554003 () Unit!40318)

(assert (=> b!1218679 (= lt!553998 lt!554003)))

(declare-fun lt!554000 () V!46411)

(declare-fun lt!553999 () (_ BitVec 64))

(declare-fun lt!553997 () (_ BitVec 64))

(declare-fun lt!554001 () ListLongMap!18103)

(assert (=> b!1218679 (not (contains!7030 (+!4048 lt!554001 (tuple2!20123 lt!553999 lt!554000)) lt!553997))))

(assert (=> b!1218679 (= lt!554003 (addStillNotContains!302 lt!554001 lt!553999 lt!554000 lt!553997))))

(assert (=> b!1218679 (= lt!553997 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1218679 (= lt!554000 (get!19396 (select (arr!37966 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1218679 (= lt!553999 (select (arr!37967 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1218679 (= lt!554001 call!60664)))

(assert (=> b!1218679 (= e!691957 (+!4048 call!60664 (tuple2!20123 (select (arr!37967 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19396 (select (arr!37966 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1218680 () Bool)

(declare-fun e!691958 () ListLongMap!18103)

(assert (=> b!1218680 (= e!691958 e!691957)))

(declare-fun c!120106 () Bool)

(assert (=> b!1218680 (= c!120106 (validKeyInArray!0 (select (arr!37967 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1218681 () Bool)

(declare-fun e!691955 () Bool)

(assert (=> b!1218681 (= e!691961 e!691955)))

(declare-fun c!120103 () Bool)

(assert (=> b!1218681 (= c!120103 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 _keys!1208)))))

(declare-fun b!1218682 () Bool)

(declare-fun e!691956 () Bool)

(assert (=> b!1218682 (= e!691956 e!691961)))

(declare-fun c!120104 () Bool)

(declare-fun e!691959 () Bool)

(assert (=> b!1218682 (= c!120104 e!691959)))

(declare-fun res!809474 () Bool)

(assert (=> b!1218682 (=> (not res!809474) (not e!691959))))

(assert (=> b!1218682 (= res!809474 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 _keys!1208)))))

(declare-fun b!1218683 () Bool)

(assert (=> b!1218683 (= e!691955 (= lt!554002 (getCurrentListMapNoExtraKeys!5471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun d!133597 () Bool)

(assert (=> d!133597 e!691956))

(declare-fun res!809473 () Bool)

(assert (=> d!133597 (=> (not res!809473) (not e!691956))))

(assert (=> d!133597 (= res!809473 (not (contains!7030 lt!554002 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133597 (= lt!554002 e!691958)))

(declare-fun c!120105 () Bool)

(assert (=> d!133597 (= c!120105 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 _keys!1208)))))

(assert (=> d!133597 (validMask!0 mask!1564)))

(assert (=> d!133597 (= (getCurrentListMapNoExtraKeys!5471 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!554002)))

(declare-fun b!1218676 () Bool)

(assert (=> b!1218676 (= e!691958 (ListLongMap!18104 Nil!26940))))

(declare-fun b!1218684 () Bool)

(assert (=> b!1218684 (= e!691955 (isEmpty!999 lt!554002))))

(declare-fun b!1218685 () Bool)

(declare-fun res!809475 () Bool)

(assert (=> b!1218685 (=> (not res!809475) (not e!691956))))

(assert (=> b!1218685 (= res!809475 (not (contains!7030 lt!554002 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1218686 () Bool)

(assert (=> b!1218686 (= e!691959 (validKeyInArray!0 (select (arr!37967 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1218686 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1218687 () Bool)

(assert (=> b!1218687 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38504 _keys!1208)))))

(assert (=> b!1218687 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38503 _values!996)))))

(assert (=> b!1218687 (= e!691960 (= (apply!1007 lt!554002 (select (arr!37967 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19396 (select (arr!37966 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3375 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!133597 c!120105) b!1218676))

(assert (= (and d!133597 (not c!120105)) b!1218680))

(assert (= (and b!1218680 c!120106) b!1218679))

(assert (= (and b!1218680 (not c!120106)) b!1218678))

(assert (= (or b!1218679 b!1218678) bm!60661))

(assert (= (and d!133597 res!809473) b!1218685))

(assert (= (and b!1218685 res!809475) b!1218682))

(assert (= (and b!1218682 res!809474) b!1218686))

(assert (= (and b!1218682 c!120104) b!1218677))

(assert (= (and b!1218682 (not c!120104)) b!1218681))

(assert (= (and b!1218677 res!809472) b!1218687))

(assert (= (and b!1218681 c!120103) b!1218683))

(assert (= (and b!1218681 (not c!120103)) b!1218684))

(declare-fun b_lambda!22041 () Bool)

(assert (=> (not b_lambda!22041) (not b!1218679)))

(assert (=> b!1218679 t!40187))

(declare-fun b_and!43703 () Bool)

(assert (= b_and!43701 (and (=> t!40187 result!22727) b_and!43703)))

(declare-fun b_lambda!22043 () Bool)

(assert (=> (not b_lambda!22043) (not b!1218687)))

(assert (=> b!1218687 t!40187))

(declare-fun b_and!43705 () Bool)

(assert (= b_and!43703 (and (=> t!40187 result!22727) b_and!43705)))

(declare-fun m!1123509 () Bool)

(assert (=> d!133597 m!1123509))

(assert (=> d!133597 m!1123273))

(declare-fun m!1123511 () Bool)

(assert (=> b!1218684 m!1123511))

(declare-fun m!1123513 () Bool)

(assert (=> bm!60661 m!1123513))

(declare-fun m!1123515 () Bool)

(assert (=> b!1218687 m!1123515))

(declare-fun m!1123517 () Bool)

(assert (=> b!1218687 m!1123517))

(declare-fun m!1123519 () Bool)

(assert (=> b!1218687 m!1123519))

(assert (=> b!1218687 m!1123307))

(declare-fun m!1123521 () Bool)

(assert (=> b!1218687 m!1123521))

(assert (=> b!1218687 m!1123519))

(assert (=> b!1218687 m!1123515))

(assert (=> b!1218687 m!1123307))

(assert (=> b!1218686 m!1123515))

(assert (=> b!1218686 m!1123515))

(declare-fun m!1123523 () Bool)

(assert (=> b!1218686 m!1123523))

(declare-fun m!1123525 () Bool)

(assert (=> b!1218685 m!1123525))

(assert (=> b!1218677 m!1123515))

(assert (=> b!1218677 m!1123515))

(declare-fun m!1123527 () Bool)

(assert (=> b!1218677 m!1123527))

(assert (=> b!1218679 m!1123519))

(assert (=> b!1218679 m!1123307))

(assert (=> b!1218679 m!1123519))

(assert (=> b!1218679 m!1123307))

(assert (=> b!1218679 m!1123521))

(declare-fun m!1123529 () Bool)

(assert (=> b!1218679 m!1123529))

(declare-fun m!1123531 () Bool)

(assert (=> b!1218679 m!1123531))

(assert (=> b!1218679 m!1123531))

(declare-fun m!1123533 () Bool)

(assert (=> b!1218679 m!1123533))

(assert (=> b!1218679 m!1123515))

(declare-fun m!1123535 () Bool)

(assert (=> b!1218679 m!1123535))

(assert (=> b!1218680 m!1123515))

(assert (=> b!1218680 m!1123515))

(assert (=> b!1218680 m!1123523))

(assert (=> b!1218683 m!1123513))

(assert (=> b!1218491 d!133597))

(declare-fun d!133599 () Bool)

(declare-fun res!809480 () Bool)

(declare-fun e!691966 () Bool)

(assert (=> d!133599 (=> res!809480 e!691966)))

(assert (=> d!133599 (= res!809480 (= (select (arr!37967 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133599 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!691966)))

(declare-fun b!1218692 () Bool)

(declare-fun e!691967 () Bool)

(assert (=> b!1218692 (= e!691966 e!691967)))

(declare-fun res!809481 () Bool)

(assert (=> b!1218692 (=> (not res!809481) (not e!691967))))

(assert (=> b!1218692 (= res!809481 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38504 _keys!1208)))))

(declare-fun b!1218693 () Bool)

(assert (=> b!1218693 (= e!691967 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133599 (not res!809480)) b!1218692))

(assert (= (and b!1218692 res!809481) b!1218693))

(assert (=> d!133599 m!1123403))

(declare-fun m!1123537 () Bool)

(assert (=> b!1218693 m!1123537))

(assert (=> b!1218500 d!133599))

(declare-fun d!133601 () Bool)

(assert (=> d!133601 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!554006 () Unit!40318)

(declare-fun choose!13 (array!78676 (_ BitVec 64) (_ BitVec 32)) Unit!40318)

(assert (=> d!133601 (= lt!554006 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133601 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133601 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!554006)))

(declare-fun bs!34326 () Bool)

(assert (= bs!34326 d!133601))

(assert (=> bs!34326 m!1123285))

(declare-fun m!1123539 () Bool)

(assert (=> bs!34326 m!1123539))

(assert (=> b!1218500 d!133601))

(declare-fun d!133603 () Bool)

(assert (=> d!133603 (= (array_inv!28808 _keys!1208) (bvsge (size!38504 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101424 d!133603))

(declare-fun d!133605 () Bool)

(assert (=> d!133605 (= (array_inv!28809 _values!996) (bvsge (size!38503 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101424 d!133605))

(declare-fun d!133607 () Bool)

(declare-fun res!809482 () Bool)

(declare-fun e!691968 () Bool)

(assert (=> d!133607 (=> res!809482 e!691968)))

(assert (=> d!133607 (= res!809482 (= (select (arr!37967 _keys!1208) i!673) k0!934))))

(assert (=> d!133607 (= (arrayContainsKey!0 _keys!1208 k0!934 i!673) e!691968)))

(declare-fun b!1218694 () Bool)

(declare-fun e!691969 () Bool)

(assert (=> b!1218694 (= e!691968 e!691969)))

(declare-fun res!809483 () Bool)

(assert (=> b!1218694 (=> (not res!809483) (not e!691969))))

(assert (=> b!1218694 (= res!809483 (bvslt (bvadd i!673 #b00000000000000000000000000000001) (size!38504 _keys!1208)))))

(declare-fun b!1218695 () Bool)

(assert (=> b!1218695 (= e!691969 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd i!673 #b00000000000000000000000000000001)))))

(assert (= (and d!133607 (not res!809482)) b!1218694))

(assert (= (and b!1218694 res!809483) b!1218695))

(assert (=> d!133607 m!1123271))

(declare-fun m!1123541 () Bool)

(assert (=> b!1218695 m!1123541))

(assert (=> b!1218488 d!133607))

(declare-fun mapIsEmpty!48331 () Bool)

(declare-fun mapRes!48331 () Bool)

(assert (=> mapIsEmpty!48331 mapRes!48331))

(declare-fun condMapEmpty!48331 () Bool)

(declare-fun mapDefault!48331 () ValueCell!14772)

(assert (=> mapNonEmpty!48325 (= condMapEmpty!48331 (= mapRest!48325 ((as const (Array (_ BitVec 32) ValueCell!14772)) mapDefault!48331)))))

(declare-fun e!691975 () Bool)

(assert (=> mapNonEmpty!48325 (= tp!91805 (and e!691975 mapRes!48331))))

(declare-fun mapNonEmpty!48331 () Bool)

(declare-fun tp!91815 () Bool)

(declare-fun e!691974 () Bool)

(assert (=> mapNonEmpty!48331 (= mapRes!48331 (and tp!91815 e!691974))))

(declare-fun mapKey!48331 () (_ BitVec 32))

(declare-fun mapRest!48331 () (Array (_ BitVec 32) ValueCell!14772))

(declare-fun mapValue!48331 () ValueCell!14772)

(assert (=> mapNonEmpty!48331 (= mapRest!48325 (store mapRest!48331 mapKey!48331 mapValue!48331))))

(declare-fun b!1218703 () Bool)

(assert (=> b!1218703 (= e!691975 tp_is_empty!30963)))

(declare-fun b!1218702 () Bool)

(assert (=> b!1218702 (= e!691974 tp_is_empty!30963)))

(assert (= (and mapNonEmpty!48325 condMapEmpty!48331) mapIsEmpty!48331))

(assert (= (and mapNonEmpty!48325 (not condMapEmpty!48331)) mapNonEmpty!48331))

(assert (= (and mapNonEmpty!48331 ((_ is ValueCellFull!14772) mapValue!48331)) b!1218702))

(assert (= (and mapNonEmpty!48325 ((_ is ValueCellFull!14772) mapDefault!48331)) b!1218703))

(declare-fun m!1123543 () Bool)

(assert (=> mapNonEmpty!48331 m!1123543))

(declare-fun b_lambda!22045 () Bool)

(assert (= b_lambda!22031 (or (and start!101424 b_free!26259) b_lambda!22045)))

(declare-fun b_lambda!22047 () Bool)

(assert (= b_lambda!22039 (or (and start!101424 b_free!26259) b_lambda!22047)))

(declare-fun b_lambda!22049 () Bool)

(assert (= b_lambda!22029 (or (and start!101424 b_free!26259) b_lambda!22049)))

(declare-fun b_lambda!22051 () Bool)

(assert (= b_lambda!22043 (or (and start!101424 b_free!26259) b_lambda!22051)))

(declare-fun b_lambda!22053 () Bool)

(assert (= b_lambda!22041 (or (and start!101424 b_free!26259) b_lambda!22053)))

(declare-fun b_lambda!22055 () Bool)

(assert (= b_lambda!22033 (or (and start!101424 b_free!26259) b_lambda!22055)))

(declare-fun b_lambda!22057 () Bool)

(assert (= b_lambda!22037 (or (and start!101424 b_free!26259) b_lambda!22057)))

(declare-fun b_lambda!22059 () Bool)

(assert (= b_lambda!22027 (or (and start!101424 b_free!26259) b_lambda!22059)))

(declare-fun b_lambda!22061 () Bool)

(assert (= b_lambda!22035 (or (and start!101424 b_free!26259) b_lambda!22061)))

(check-sat (not bm!60649) (not mapNonEmpty!48331) (not bm!60644) (not b!1218635) (not b!1218640) (not b!1218672) (not b_lambda!22059) (not bm!60658) (not b!1218679) (not b_lambda!22045) (not b_lambda!22057) (not b!1218685) (not b!1218602) (not b_lambda!22049) (not b!1218595) (not d!133601) (not b!1218675) (not bm!60660) (not d!133585) (not b!1218638) (not b!1218650) (not bm!60652) tp_is_empty!30963 (not bm!60648) (not b_lambda!22055) (not b!1218646) (not b!1218686) (not b_lambda!22025) (not b!1218654) (not b_lambda!22047) (not b_lambda!22051) (not b!1218653) (not b!1218578) (not b!1218642) (not b!1218641) (not d!133587) (not b!1218687) (not d!133573) (not bm!60661) (not bm!60653) (not b!1218634) (not b!1218673) (not b!1218639) (not b!1218652) (not b!1218668) (not b!1218604) (not d!133591) (not b!1218671) (not b!1218600) (not b!1218644) (not b!1218683) (not d!133595) (not b!1218596) (not d!133593) (not b!1218684) (not b_lambda!22053) (not d!133597) (not b!1218693) (not b!1218632) (not b!1218570) (not b!1218695) b_and!43705 (not b!1218579) (not b!1218667) (not b!1218605) (not b_lambda!22061) (not b!1218584) (not b!1218651) (not b_next!26259) (not b!1218680) (not b!1218599) (not b!1218647) (not b!1218665) (not b!1218663) (not b!1218585) (not b!1218674) (not b!1218677) (not b!1218573) (not bm!60659) (not b!1218571) (not bm!60647))
(check-sat b_and!43705 (not b_next!26259))
