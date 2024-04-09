; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100716 () Bool)

(assert start!100716)

(declare-fun b_free!25911 () Bool)

(declare-fun b_next!25911 () Bool)

(assert (=> start!100716 (= b_free!25911 (not b_next!25911))))

(declare-fun tp!90731 () Bool)

(declare-fun b_and!42783 () Bool)

(assert (=> start!100716 (= tp!90731 b_and!42783)))

(declare-datatypes ((V!45947 0))(
  ( (V!45948 (val!15364 Int)) )
))
(declare-fun zeroValue!944 () V!45947)

(declare-datatypes ((array!77984 0))(
  ( (array!77985 (arr!37631 (Array (_ BitVec 32) (_ BitVec 64))) (size!38168 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77984)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19836 0))(
  ( (tuple2!19837 (_1!9928 (_ BitVec 64)) (_2!9928 V!45947)) )
))
(declare-datatypes ((List!26663 0))(
  ( (Nil!26660) (Cons!26659 (h!27868 tuple2!19836) (t!39561 List!26663)) )
))
(declare-datatypes ((ListLongMap!17817 0))(
  ( (ListLongMap!17818 (toList!8924 List!26663)) )
))
(declare-fun call!58220 () ListLongMap!17817)

(declare-fun bm!58216 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14598 0))(
  ( (ValueCellFull!14598 (v!18007 V!45947)) (EmptyCell!14598) )
))
(declare-datatypes ((array!77986 0))(
  ( (array!77987 (arr!37632 (Array (_ BitVec 32) ValueCell!14598)) (size!38169 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77986)

(declare-fun minValue!944 () V!45947)

(declare-fun getCurrentListMapNoExtraKeys!5333 (array!77984 array!77986 (_ BitVec 32) (_ BitVec 32) V!45947 V!45947 (_ BitVec 32) Int) ListLongMap!17817)

(assert (=> bm!58216 (= call!58220 (getCurrentListMapNoExtraKeys!5333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204361 () Bool)

(declare-fun res!801343 () Bool)

(declare-fun e!683967 () Bool)

(assert (=> b!1204361 (=> (not res!801343) (not e!683967))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1204361 (= res!801343 (validKeyInArray!0 k0!934))))

(declare-fun b!1204362 () Bool)

(declare-fun res!801351 () Bool)

(assert (=> b!1204362 (=> (not res!801351) (not e!683967))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1204362 (= res!801351 (= (select (arr!37631 _keys!1208) i!673) k0!934))))

(declare-fun bm!58217 () Bool)

(declare-fun call!58219 () ListLongMap!17817)

(declare-fun call!58222 () ListLongMap!17817)

(assert (=> bm!58217 (= call!58219 call!58222)))

(declare-fun bm!58218 () Bool)

(declare-fun call!58223 () Bool)

(declare-fun call!58226 () Bool)

(assert (=> bm!58218 (= call!58223 call!58226)))

(declare-fun mapNonEmpty!47772 () Bool)

(declare-fun mapRes!47772 () Bool)

(declare-fun tp!90730 () Bool)

(declare-fun e!683968 () Bool)

(assert (=> mapNonEmpty!47772 (= mapRes!47772 (and tp!90730 e!683968))))

(declare-fun mapValue!47772 () ValueCell!14598)

(declare-fun mapKey!47772 () (_ BitVec 32))

(declare-fun mapRest!47772 () (Array (_ BitVec 32) ValueCell!14598))

(assert (=> mapNonEmpty!47772 (= (arr!37632 _values!996) (store mapRest!47772 mapKey!47772 mapValue!47772))))

(declare-fun b!1204363 () Bool)

(declare-datatypes ((Unit!39858 0))(
  ( (Unit!39859) )
))
(declare-fun e!683961 () Unit!39858)

(declare-fun lt!546121 () Unit!39858)

(assert (=> b!1204363 (= e!683961 lt!546121)))

(declare-fun lt!546122 () Unit!39858)

(declare-fun call!58225 () Unit!39858)

(assert (=> b!1204363 (= lt!546122 call!58225)))

(declare-fun lt!546126 () ListLongMap!17817)

(assert (=> b!1204363 (= lt!546126 call!58222)))

(assert (=> b!1204363 call!58226))

(declare-fun addStillContains!1022 (ListLongMap!17817 (_ BitVec 64) V!45947 (_ BitVec 64)) Unit!39858)

(assert (=> b!1204363 (= lt!546121 (addStillContains!1022 lt!546126 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun contains!6926 (ListLongMap!17817 (_ BitVec 64)) Bool)

(declare-fun +!3958 (ListLongMap!17817 tuple2!19836) ListLongMap!17817)

(assert (=> b!1204363 (contains!6926 (+!3958 lt!546126 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1204364 () Bool)

(declare-fun res!801342 () Bool)

(assert (=> b!1204364 (=> (not res!801342) (not e!683967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77984 (_ BitVec 32)) Bool)

(assert (=> b!1204364 (= res!801342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1204365 () Bool)

(declare-fun res!801350 () Bool)

(declare-fun e!683964 () Bool)

(assert (=> b!1204365 (=> (not res!801350) (not e!683964))))

(declare-fun lt!546127 () array!77984)

(declare-datatypes ((List!26664 0))(
  ( (Nil!26661) (Cons!26660 (h!27869 (_ BitVec 64)) (t!39562 List!26664)) )
))
(declare-fun arrayNoDuplicates!0 (array!77984 (_ BitVec 32) List!26664) Bool)

(assert (=> b!1204365 (= res!801350 (arrayNoDuplicates!0 lt!546127 #b00000000000000000000000000000000 Nil!26661))))

(declare-fun b!1204366 () Bool)

(declare-fun e!683963 () Bool)

(declare-fun call!58221 () ListLongMap!17817)

(declare-fun -!1839 (ListLongMap!17817 (_ BitVec 64)) ListLongMap!17817)

(assert (=> b!1204366 (= e!683963 (= call!58221 (-!1839 call!58220 k0!934)))))

(declare-fun b!1204367 () Bool)

(assert (=> b!1204367 call!58223))

(declare-fun lt!546128 () Unit!39858)

(declare-fun call!58224 () Unit!39858)

(assert (=> b!1204367 (= lt!546128 call!58224)))

(declare-fun e!683966 () Unit!39858)

(assert (=> b!1204367 (= e!683966 lt!546128)))

(declare-fun b!1204368 () Bool)

(declare-fun res!801348 () Bool)

(assert (=> b!1204368 (=> (not res!801348) (not e!683967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1204368 (= res!801348 (validMask!0 mask!1564))))

(declare-fun res!801352 () Bool)

(assert (=> start!100716 (=> (not res!801352) (not e!683967))))

(assert (=> start!100716 (= res!801352 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38168 _keys!1208))))))

(assert (=> start!100716 e!683967))

(declare-fun tp_is_empty!30615 () Bool)

(assert (=> start!100716 tp_is_empty!30615))

(declare-fun array_inv!28572 (array!77984) Bool)

(assert (=> start!100716 (array_inv!28572 _keys!1208)))

(assert (=> start!100716 true))

(assert (=> start!100716 tp!90731))

(declare-fun e!683970 () Bool)

(declare-fun array_inv!28573 (array!77986) Bool)

(assert (=> start!100716 (and (array_inv!28573 _values!996) e!683970)))

(declare-fun bm!58219 () Bool)

(declare-fun lt!546119 () ListLongMap!17817)

(declare-fun c!118022 () Bool)

(declare-fun c!118026 () Bool)

(assert (=> bm!58219 (= call!58225 (addStillContains!1022 lt!546119 (ite (or c!118022 c!118026) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118022 c!118026) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1204369 () Bool)

(assert (=> b!1204369 (= e!683963 (= call!58221 call!58220))))

(declare-fun e!683960 () Bool)

(declare-fun b!1204370 () Bool)

(declare-fun arrayContainsKey!0 (array!77984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1204370 (= e!683960 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1204371 () Bool)

(declare-fun e!683962 () Unit!39858)

(declare-fun Unit!39860 () Unit!39858)

(assert (=> b!1204371 (= e!683962 Unit!39860)))

(declare-fun bm!58220 () Bool)

(assert (=> bm!58220 (= call!58226 (contains!6926 (ite c!118022 lt!546126 call!58219) k0!934))))

(declare-fun b!1204372 () Bool)

(assert (=> b!1204372 (= e!683968 tp_is_empty!30615)))

(declare-fun b!1204373 () Bool)

(declare-fun e!683965 () Bool)

(declare-fun e!683972 () Bool)

(assert (=> b!1204373 (= e!683965 e!683972)))

(declare-fun res!801349 () Bool)

(assert (=> b!1204373 (=> res!801349 e!683972)))

(assert (=> b!1204373 (= res!801349 (not (= from!1455 i!673)))))

(declare-fun lt!546118 () array!77986)

(declare-fun lt!546123 () ListLongMap!17817)

(assert (=> b!1204373 (= lt!546123 (getCurrentListMapNoExtraKeys!5333 lt!546127 lt!546118 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3255 (Int (_ BitVec 64)) V!45947)

(assert (=> b!1204373 (= lt!546118 (array!77987 (store (arr!37632 _values!996) i!673 (ValueCellFull!14598 (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38169 _values!996)))))

(declare-fun lt!546117 () ListLongMap!17817)

(assert (=> b!1204373 (= lt!546117 (getCurrentListMapNoExtraKeys!5333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1204374 () Bool)

(assert (=> b!1204374 (= e!683964 (not e!683965))))

(declare-fun res!801345 () Bool)

(assert (=> b!1204374 (=> res!801345 e!683965)))

(assert (=> b!1204374 (= res!801345 (bvsgt from!1455 i!673))))

(assert (=> b!1204374 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!546124 () Unit!39858)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77984 (_ BitVec 64) (_ BitVec 32)) Unit!39858)

(assert (=> b!1204374 (= lt!546124 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1204375 () Bool)

(assert (=> b!1204375 (= e!683967 e!683964)))

(declare-fun res!801353 () Bool)

(assert (=> b!1204375 (=> (not res!801353) (not e!683964))))

(assert (=> b!1204375 (= res!801353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546127 mask!1564))))

(assert (=> b!1204375 (= lt!546127 (array!77985 (store (arr!37631 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38168 _keys!1208)))))

(declare-fun bm!58221 () Bool)

(assert (=> bm!58221 (= call!58221 (getCurrentListMapNoExtraKeys!5333 lt!546127 lt!546118 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204376 () Bool)

(declare-fun res!801346 () Bool)

(assert (=> b!1204376 (=> (not res!801346) (not e!683967))))

(assert (=> b!1204376 (= res!801346 (and (= (size!38169 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38168 _keys!1208) (size!38169 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1204377 () Bool)

(declare-fun c!118024 () Bool)

(declare-fun lt!546120 () Bool)

(assert (=> b!1204377 (= c!118024 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546120))))

(assert (=> b!1204377 (= e!683966 e!683962)))

(declare-fun b!1204378 () Bool)

(declare-fun e!683974 () Bool)

(assert (=> b!1204378 (= e!683974 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1204378 e!683960))

(declare-fun c!118023 () Bool)

(assert (=> b!1204378 (= c!118023 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!546116 () Unit!39858)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!563 (array!77984 array!77986 (_ BitVec 32) (_ BitVec 32) V!45947 V!45947 (_ BitVec 64) (_ BitVec 32) Int) Unit!39858)

(assert (=> b!1204378 (= lt!546116 (lemmaListMapContainsThenArrayContainsFrom!563 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546114 () Unit!39858)

(assert (=> b!1204378 (= lt!546114 e!683961)))

(assert (=> b!1204378 (= c!118022 (and (not lt!546120) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1204378 (= lt!546120 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1204379 () Bool)

(declare-fun lt!546125 () Unit!39858)

(assert (=> b!1204379 (= e!683962 lt!546125)))

(assert (=> b!1204379 (= lt!546125 call!58224)))

(assert (=> b!1204379 call!58223))

(declare-fun b!1204380 () Bool)

(declare-fun e!683973 () Bool)

(assert (=> b!1204380 (= e!683973 e!683974)))

(declare-fun res!801341 () Bool)

(assert (=> b!1204380 (=> res!801341 e!683974)))

(assert (=> b!1204380 (= res!801341 (not (contains!6926 lt!546119 k0!934)))))

(assert (=> b!1204380 (= lt!546119 (getCurrentListMapNoExtraKeys!5333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204381 () Bool)

(declare-fun e!683969 () Bool)

(assert (=> b!1204381 (= e!683970 (and e!683969 mapRes!47772))))

(declare-fun condMapEmpty!47772 () Bool)

(declare-fun mapDefault!47772 () ValueCell!14598)

(assert (=> b!1204381 (= condMapEmpty!47772 (= (arr!37632 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14598)) mapDefault!47772)))))

(declare-fun bm!58222 () Bool)

(assert (=> bm!58222 (= call!58222 (+!3958 lt!546119 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!58223 () Bool)

(assert (=> bm!58223 (= call!58224 call!58225)))

(declare-fun b!1204382 () Bool)

(assert (=> b!1204382 (= e!683961 e!683966)))

(assert (=> b!1204382 (= c!118026 (and (not lt!546120) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1204383 () Bool)

(declare-fun res!801344 () Bool)

(assert (=> b!1204383 (=> (not res!801344) (not e!683967))))

(assert (=> b!1204383 (= res!801344 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26661))))

(declare-fun mapIsEmpty!47772 () Bool)

(assert (=> mapIsEmpty!47772 mapRes!47772))

(declare-fun b!1204384 () Bool)

(assert (=> b!1204384 (= e!683972 e!683973)))

(declare-fun res!801354 () Bool)

(assert (=> b!1204384 (=> res!801354 e!683973)))

(assert (=> b!1204384 (= res!801354 (not (= (select (arr!37631 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1204384 e!683963))

(declare-fun c!118025 () Bool)

(assert (=> b!1204384 (= c!118025 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!546115 () Unit!39858)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1043 (array!77984 array!77986 (_ BitVec 32) (_ BitVec 32) V!45947 V!45947 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39858)

(assert (=> b!1204384 (= lt!546115 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1043 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204385 () Bool)

(assert (=> b!1204385 (= e!683969 tp_is_empty!30615)))

(declare-fun b!1204386 () Bool)

(assert (=> b!1204386 (= e!683960 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!546120) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1204387 () Bool)

(declare-fun res!801347 () Bool)

(assert (=> b!1204387 (=> (not res!801347) (not e!683967))))

(assert (=> b!1204387 (= res!801347 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38168 _keys!1208))))))

(assert (= (and start!100716 res!801352) b!1204368))

(assert (= (and b!1204368 res!801348) b!1204376))

(assert (= (and b!1204376 res!801346) b!1204364))

(assert (= (and b!1204364 res!801342) b!1204383))

(assert (= (and b!1204383 res!801344) b!1204387))

(assert (= (and b!1204387 res!801347) b!1204361))

(assert (= (and b!1204361 res!801343) b!1204362))

(assert (= (and b!1204362 res!801351) b!1204375))

(assert (= (and b!1204375 res!801353) b!1204365))

(assert (= (and b!1204365 res!801350) b!1204374))

(assert (= (and b!1204374 (not res!801345)) b!1204373))

(assert (= (and b!1204373 (not res!801349)) b!1204384))

(assert (= (and b!1204384 c!118025) b!1204366))

(assert (= (and b!1204384 (not c!118025)) b!1204369))

(assert (= (or b!1204366 b!1204369) bm!58221))

(assert (= (or b!1204366 b!1204369) bm!58216))

(assert (= (and b!1204384 (not res!801354)) b!1204380))

(assert (= (and b!1204380 (not res!801341)) b!1204378))

(assert (= (and b!1204378 c!118022) b!1204363))

(assert (= (and b!1204378 (not c!118022)) b!1204382))

(assert (= (and b!1204382 c!118026) b!1204367))

(assert (= (and b!1204382 (not c!118026)) b!1204377))

(assert (= (and b!1204377 c!118024) b!1204379))

(assert (= (and b!1204377 (not c!118024)) b!1204371))

(assert (= (or b!1204367 b!1204379) bm!58223))

(assert (= (or b!1204367 b!1204379) bm!58217))

(assert (= (or b!1204367 b!1204379) bm!58218))

(assert (= (or b!1204363 bm!58218) bm!58220))

(assert (= (or b!1204363 bm!58223) bm!58219))

(assert (= (or b!1204363 bm!58217) bm!58222))

(assert (= (and b!1204378 c!118023) b!1204370))

(assert (= (and b!1204378 (not c!118023)) b!1204386))

(assert (= (and b!1204381 condMapEmpty!47772) mapIsEmpty!47772))

(assert (= (and b!1204381 (not condMapEmpty!47772)) mapNonEmpty!47772))

(get-info :version)

(assert (= (and mapNonEmpty!47772 ((_ is ValueCellFull!14598) mapValue!47772)) b!1204372))

(assert (= (and b!1204381 ((_ is ValueCellFull!14598) mapDefault!47772)) b!1204385))

(assert (= start!100716 b!1204381))

(declare-fun b_lambda!21249 () Bool)

(assert (=> (not b_lambda!21249) (not b!1204373)))

(declare-fun t!39560 () Bool)

(declare-fun tb!10719 () Bool)

(assert (=> (and start!100716 (= defaultEntry!1004 defaultEntry!1004) t!39560) tb!10719))

(declare-fun result!22011 () Bool)

(assert (=> tb!10719 (= result!22011 tp_is_empty!30615)))

(assert (=> b!1204373 t!39560))

(declare-fun b_and!42785 () Bool)

(assert (= b_and!42783 (and (=> t!39560 result!22011) b_and!42785)))

(declare-fun m!1110399 () Bool)

(assert (=> bm!58216 m!1110399))

(declare-fun m!1110401 () Bool)

(assert (=> b!1204370 m!1110401))

(declare-fun m!1110403 () Bool)

(assert (=> b!1204380 m!1110403))

(assert (=> b!1204380 m!1110399))

(declare-fun m!1110405 () Bool)

(assert (=> b!1204362 m!1110405))

(declare-fun m!1110407 () Bool)

(assert (=> bm!58221 m!1110407))

(declare-fun m!1110409 () Bool)

(assert (=> b!1204363 m!1110409))

(declare-fun m!1110411 () Bool)

(assert (=> b!1204363 m!1110411))

(assert (=> b!1204363 m!1110411))

(declare-fun m!1110413 () Bool)

(assert (=> b!1204363 m!1110413))

(declare-fun m!1110415 () Bool)

(assert (=> b!1204368 m!1110415))

(declare-fun m!1110417 () Bool)

(assert (=> start!100716 m!1110417))

(declare-fun m!1110419 () Bool)

(assert (=> start!100716 m!1110419))

(declare-fun m!1110421 () Bool)

(assert (=> b!1204374 m!1110421))

(declare-fun m!1110423 () Bool)

(assert (=> b!1204374 m!1110423))

(declare-fun m!1110425 () Bool)

(assert (=> b!1204364 m!1110425))

(declare-fun m!1110427 () Bool)

(assert (=> b!1204361 m!1110427))

(declare-fun m!1110429 () Bool)

(assert (=> b!1204373 m!1110429))

(declare-fun m!1110431 () Bool)

(assert (=> b!1204373 m!1110431))

(declare-fun m!1110433 () Bool)

(assert (=> b!1204373 m!1110433))

(declare-fun m!1110435 () Bool)

(assert (=> b!1204373 m!1110435))

(declare-fun m!1110437 () Bool)

(assert (=> bm!58220 m!1110437))

(declare-fun m!1110439 () Bool)

(assert (=> mapNonEmpty!47772 m!1110439))

(declare-fun m!1110441 () Bool)

(assert (=> b!1204375 m!1110441))

(declare-fun m!1110443 () Bool)

(assert (=> b!1204375 m!1110443))

(declare-fun m!1110445 () Bool)

(assert (=> b!1204384 m!1110445))

(declare-fun m!1110447 () Bool)

(assert (=> b!1204384 m!1110447))

(declare-fun m!1110449 () Bool)

(assert (=> bm!58222 m!1110449))

(declare-fun m!1110451 () Bool)

(assert (=> b!1204366 m!1110451))

(declare-fun m!1110453 () Bool)

(assert (=> bm!58219 m!1110453))

(assert (=> b!1204378 m!1110401))

(declare-fun m!1110455 () Bool)

(assert (=> b!1204378 m!1110455))

(declare-fun m!1110457 () Bool)

(assert (=> b!1204365 m!1110457))

(declare-fun m!1110459 () Bool)

(assert (=> b!1204383 m!1110459))

(check-sat (not b!1204374) b_and!42785 (not b!1204370) (not bm!58222) (not b!1204366) (not b!1204365) (not b!1204364) (not b!1204378) (not b!1204375) (not b!1204383) (not b!1204368) (not b_lambda!21249) (not b!1204373) (not bm!58220) (not start!100716) (not b!1204380) (not b!1204361) (not bm!58221) (not bm!58216) (not b_next!25911) tp_is_empty!30615 (not mapNonEmpty!47772) (not b!1204363) (not b!1204384) (not bm!58219))
(check-sat b_and!42785 (not b_next!25911))
(get-model)

(declare-fun b_lambda!21253 () Bool)

(assert (= b_lambda!21249 (or (and start!100716 b_free!25911) b_lambda!21253)))

(check-sat (not b!1204374) b_and!42785 (not b!1204370) (not bm!58222) (not b!1204366) (not b!1204364) (not b!1204378) (not b!1204375) (not b!1204383) (not b!1204368) (not b!1204373) (not bm!58220) (not start!100716) (not b!1204380) (not b!1204361) (not b_lambda!21253) (not b!1204365) (not bm!58221) (not bm!58216) (not b_next!25911) tp_is_empty!30615 (not mapNonEmpty!47772) (not b!1204363) (not b!1204384) (not bm!58219))
(check-sat b_and!42785 (not b_next!25911))
(get-model)

(declare-fun d!132713 () Bool)

(declare-fun e!684022 () Bool)

(assert (=> d!132713 e!684022))

(declare-fun res!801401 () Bool)

(assert (=> d!132713 (=> (not res!801401) (not e!684022))))

(declare-fun lt!546183 () ListLongMap!17817)

(assert (=> d!132713 (= res!801401 (contains!6926 lt!546183 (_1!9928 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!546184 () List!26663)

(assert (=> d!132713 (= lt!546183 (ListLongMap!17818 lt!546184))))

(declare-fun lt!546182 () Unit!39858)

(declare-fun lt!546185 () Unit!39858)

(assert (=> d!132713 (= lt!546182 lt!546185)))

(declare-datatypes ((Option!687 0))(
  ( (Some!686 (v!18009 V!45947)) (None!685) )
))
(declare-fun getValueByKey!636 (List!26663 (_ BitVec 64)) Option!687)

(assert (=> d!132713 (= (getValueByKey!636 lt!546184 (_1!9928 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!686 (_2!9928 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!311 (List!26663 (_ BitVec 64) V!45947) Unit!39858)

(assert (=> d!132713 (= lt!546185 (lemmaContainsTupThenGetReturnValue!311 lt!546184 (_1!9928 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9928 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun insertStrictlySorted!403 (List!26663 (_ BitVec 64) V!45947) List!26663)

(assert (=> d!132713 (= lt!546184 (insertStrictlySorted!403 (toList!8924 lt!546119) (_1!9928 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9928 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132713 (= (+!3958 lt!546119 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!546183)))

(declare-fun b!1204477 () Bool)

(declare-fun res!801402 () Bool)

(assert (=> b!1204477 (=> (not res!801402) (not e!684022))))

(assert (=> b!1204477 (= res!801402 (= (getValueByKey!636 (toList!8924 lt!546183) (_1!9928 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!686 (_2!9928 (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1204478 () Bool)

(declare-fun contains!6928 (List!26663 tuple2!19836) Bool)

(assert (=> b!1204478 (= e!684022 (contains!6928 (toList!8924 lt!546183) (ite (or c!118022 c!118026) (tuple2!19837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!132713 res!801401) b!1204477))

(assert (= (and b!1204477 res!801402) b!1204478))

(declare-fun m!1110523 () Bool)

(assert (=> d!132713 m!1110523))

(declare-fun m!1110525 () Bool)

(assert (=> d!132713 m!1110525))

(declare-fun m!1110527 () Bool)

(assert (=> d!132713 m!1110527))

(declare-fun m!1110529 () Bool)

(assert (=> d!132713 m!1110529))

(declare-fun m!1110531 () Bool)

(assert (=> b!1204477 m!1110531))

(declare-fun m!1110533 () Bool)

(assert (=> b!1204478 m!1110533))

(assert (=> bm!58222 d!132713))

(declare-fun d!132715 () Bool)

(assert (=> d!132715 (contains!6926 (+!3958 lt!546126 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!546188 () Unit!39858)

(declare-fun choose!1799 (ListLongMap!17817 (_ BitVec 64) V!45947 (_ BitVec 64)) Unit!39858)

(assert (=> d!132715 (= lt!546188 (choose!1799 lt!546126 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> d!132715 (contains!6926 lt!546126 k0!934)))

(assert (=> d!132715 (= (addStillContains!1022 lt!546126 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934) lt!546188)))

(declare-fun bs!34083 () Bool)

(assert (= bs!34083 d!132715))

(assert (=> bs!34083 m!1110411))

(assert (=> bs!34083 m!1110411))

(assert (=> bs!34083 m!1110413))

(declare-fun m!1110535 () Bool)

(assert (=> bs!34083 m!1110535))

(declare-fun m!1110537 () Bool)

(assert (=> bs!34083 m!1110537))

(assert (=> b!1204363 d!132715))

(declare-fun d!132717 () Bool)

(declare-fun e!684027 () Bool)

(assert (=> d!132717 e!684027))

(declare-fun res!801405 () Bool)

(assert (=> d!132717 (=> res!801405 e!684027)))

(declare-fun lt!546200 () Bool)

(assert (=> d!132717 (= res!801405 (not lt!546200))))

(declare-fun lt!546197 () Bool)

(assert (=> d!132717 (= lt!546200 lt!546197)))

(declare-fun lt!546199 () Unit!39858)

(declare-fun e!684028 () Unit!39858)

(assert (=> d!132717 (= lt!546199 e!684028)))

(declare-fun c!118044 () Bool)

(assert (=> d!132717 (= c!118044 lt!546197)))

(declare-fun containsKey!590 (List!26663 (_ BitVec 64)) Bool)

(assert (=> d!132717 (= lt!546197 (containsKey!590 (toList!8924 (+!3958 lt!546126 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> d!132717 (= (contains!6926 (+!3958 lt!546126 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934) lt!546200)))

(declare-fun b!1204486 () Bool)

(declare-fun lt!546198 () Unit!39858)

(assert (=> b!1204486 (= e!684028 lt!546198)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!419 (List!26663 (_ BitVec 64)) Unit!39858)

(assert (=> b!1204486 (= lt!546198 (lemmaContainsKeyImpliesGetValueByKeyDefined!419 (toList!8924 (+!3958 lt!546126 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun isDefined!459 (Option!687) Bool)

(assert (=> b!1204486 (isDefined!459 (getValueByKey!636 (toList!8924 (+!3958 lt!546126 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun b!1204487 () Bool)

(declare-fun Unit!39864 () Unit!39858)

(assert (=> b!1204487 (= e!684028 Unit!39864)))

(declare-fun b!1204488 () Bool)

(assert (=> b!1204488 (= e!684027 (isDefined!459 (getValueByKey!636 (toList!8924 (+!3958 lt!546126 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934)))))

(assert (= (and d!132717 c!118044) b!1204486))

(assert (= (and d!132717 (not c!118044)) b!1204487))

(assert (= (and d!132717 (not res!801405)) b!1204488))

(declare-fun m!1110539 () Bool)

(assert (=> d!132717 m!1110539))

(declare-fun m!1110541 () Bool)

(assert (=> b!1204486 m!1110541))

(declare-fun m!1110543 () Bool)

(assert (=> b!1204486 m!1110543))

(assert (=> b!1204486 m!1110543))

(declare-fun m!1110545 () Bool)

(assert (=> b!1204486 m!1110545))

(assert (=> b!1204488 m!1110543))

(assert (=> b!1204488 m!1110543))

(assert (=> b!1204488 m!1110545))

(assert (=> b!1204363 d!132717))

(declare-fun d!132719 () Bool)

(declare-fun e!684029 () Bool)

(assert (=> d!132719 e!684029))

(declare-fun res!801406 () Bool)

(assert (=> d!132719 (=> (not res!801406) (not e!684029))))

(declare-fun lt!546202 () ListLongMap!17817)

(assert (=> d!132719 (= res!801406 (contains!6926 lt!546202 (_1!9928 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!546203 () List!26663)

(assert (=> d!132719 (= lt!546202 (ListLongMap!17818 lt!546203))))

(declare-fun lt!546201 () Unit!39858)

(declare-fun lt!546204 () Unit!39858)

(assert (=> d!132719 (= lt!546201 lt!546204)))

(assert (=> d!132719 (= (getValueByKey!636 lt!546203 (_1!9928 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!686 (_2!9928 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!132719 (= lt!546204 (lemmaContainsTupThenGetReturnValue!311 lt!546203 (_1!9928 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9928 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!132719 (= lt!546203 (insertStrictlySorted!403 (toList!8924 lt!546126) (_1!9928 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9928 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!132719 (= (+!3958 lt!546126 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) lt!546202)))

(declare-fun b!1204489 () Bool)

(declare-fun res!801407 () Bool)

(assert (=> b!1204489 (=> (not res!801407) (not e!684029))))

(assert (=> b!1204489 (= res!801407 (= (getValueByKey!636 (toList!8924 lt!546202) (_1!9928 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!686 (_2!9928 (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1204490 () Bool)

(assert (=> b!1204490 (= e!684029 (contains!6928 (toList!8924 lt!546202) (tuple2!19837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(assert (= (and d!132719 res!801406) b!1204489))

(assert (= (and b!1204489 res!801407) b!1204490))

(declare-fun m!1110547 () Bool)

(assert (=> d!132719 m!1110547))

(declare-fun m!1110549 () Bool)

(assert (=> d!132719 m!1110549))

(declare-fun m!1110551 () Bool)

(assert (=> d!132719 m!1110551))

(declare-fun m!1110553 () Bool)

(assert (=> d!132719 m!1110553))

(declare-fun m!1110555 () Bool)

(assert (=> b!1204489 m!1110555))

(declare-fun m!1110557 () Bool)

(assert (=> b!1204490 m!1110557))

(assert (=> b!1204363 d!132719))

(declare-fun d!132721 () Bool)

(assert (=> d!132721 (= (array_inv!28572 _keys!1208) (bvsge (size!38168 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100716 d!132721))

(declare-fun d!132723 () Bool)

(assert (=> d!132723 (= (array_inv!28573 _values!996) (bvsge (size!38169 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100716 d!132723))

(declare-fun d!132725 () Bool)

(declare-fun e!684030 () Bool)

(assert (=> d!132725 e!684030))

(declare-fun res!801408 () Bool)

(assert (=> d!132725 (=> res!801408 e!684030)))

(declare-fun lt!546208 () Bool)

(assert (=> d!132725 (= res!801408 (not lt!546208))))

(declare-fun lt!546205 () Bool)

(assert (=> d!132725 (= lt!546208 lt!546205)))

(declare-fun lt!546207 () Unit!39858)

(declare-fun e!684031 () Unit!39858)

(assert (=> d!132725 (= lt!546207 e!684031)))

(declare-fun c!118045 () Bool)

(assert (=> d!132725 (= c!118045 lt!546205)))

(assert (=> d!132725 (= lt!546205 (containsKey!590 (toList!8924 (ite c!118022 lt!546126 call!58219)) k0!934))))

(assert (=> d!132725 (= (contains!6926 (ite c!118022 lt!546126 call!58219) k0!934) lt!546208)))

(declare-fun b!1204491 () Bool)

(declare-fun lt!546206 () Unit!39858)

(assert (=> b!1204491 (= e!684031 lt!546206)))

(assert (=> b!1204491 (= lt!546206 (lemmaContainsKeyImpliesGetValueByKeyDefined!419 (toList!8924 (ite c!118022 lt!546126 call!58219)) k0!934))))

(assert (=> b!1204491 (isDefined!459 (getValueByKey!636 (toList!8924 (ite c!118022 lt!546126 call!58219)) k0!934))))

(declare-fun b!1204492 () Bool)

(declare-fun Unit!39865 () Unit!39858)

(assert (=> b!1204492 (= e!684031 Unit!39865)))

(declare-fun b!1204493 () Bool)

(assert (=> b!1204493 (= e!684030 (isDefined!459 (getValueByKey!636 (toList!8924 (ite c!118022 lt!546126 call!58219)) k0!934)))))

(assert (= (and d!132725 c!118045) b!1204491))

(assert (= (and d!132725 (not c!118045)) b!1204492))

(assert (= (and d!132725 (not res!801408)) b!1204493))

(declare-fun m!1110559 () Bool)

(assert (=> d!132725 m!1110559))

(declare-fun m!1110561 () Bool)

(assert (=> b!1204491 m!1110561))

(declare-fun m!1110563 () Bool)

(assert (=> b!1204491 m!1110563))

(assert (=> b!1204491 m!1110563))

(declare-fun m!1110565 () Bool)

(assert (=> b!1204491 m!1110565))

(assert (=> b!1204493 m!1110563))

(assert (=> b!1204493 m!1110563))

(assert (=> b!1204493 m!1110565))

(assert (=> bm!58220 d!132725))

(declare-fun d!132727 () Bool)

(declare-fun e!684032 () Bool)

(assert (=> d!132727 e!684032))

(declare-fun res!801409 () Bool)

(assert (=> d!132727 (=> res!801409 e!684032)))

(declare-fun lt!546212 () Bool)

(assert (=> d!132727 (= res!801409 (not lt!546212))))

(declare-fun lt!546209 () Bool)

(assert (=> d!132727 (= lt!546212 lt!546209)))

(declare-fun lt!546211 () Unit!39858)

(declare-fun e!684033 () Unit!39858)

(assert (=> d!132727 (= lt!546211 e!684033)))

(declare-fun c!118046 () Bool)

(assert (=> d!132727 (= c!118046 lt!546209)))

(assert (=> d!132727 (= lt!546209 (containsKey!590 (toList!8924 lt!546119) k0!934))))

(assert (=> d!132727 (= (contains!6926 lt!546119 k0!934) lt!546212)))

(declare-fun b!1204494 () Bool)

(declare-fun lt!546210 () Unit!39858)

(assert (=> b!1204494 (= e!684033 lt!546210)))

(assert (=> b!1204494 (= lt!546210 (lemmaContainsKeyImpliesGetValueByKeyDefined!419 (toList!8924 lt!546119) k0!934))))

(assert (=> b!1204494 (isDefined!459 (getValueByKey!636 (toList!8924 lt!546119) k0!934))))

(declare-fun b!1204495 () Bool)

(declare-fun Unit!39866 () Unit!39858)

(assert (=> b!1204495 (= e!684033 Unit!39866)))

(declare-fun b!1204496 () Bool)

(assert (=> b!1204496 (= e!684032 (isDefined!459 (getValueByKey!636 (toList!8924 lt!546119) k0!934)))))

(assert (= (and d!132727 c!118046) b!1204494))

(assert (= (and d!132727 (not c!118046)) b!1204495))

(assert (= (and d!132727 (not res!801409)) b!1204496))

(declare-fun m!1110567 () Bool)

(assert (=> d!132727 m!1110567))

(declare-fun m!1110569 () Bool)

(assert (=> b!1204494 m!1110569))

(declare-fun m!1110571 () Bool)

(assert (=> b!1204494 m!1110571))

(assert (=> b!1204494 m!1110571))

(declare-fun m!1110573 () Bool)

(assert (=> b!1204494 m!1110573))

(assert (=> b!1204496 m!1110571))

(assert (=> b!1204496 m!1110571))

(assert (=> b!1204496 m!1110573))

(assert (=> b!1204380 d!132727))

(declare-fun b!1204521 () Bool)

(declare-fun e!684053 () ListLongMap!17817)

(declare-fun e!684050 () ListLongMap!17817)

(assert (=> b!1204521 (= e!684053 e!684050)))

(declare-fun c!118055 () Bool)

(assert (=> b!1204521 (= c!118055 (validKeyInArray!0 (select (arr!37631 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1204522 () Bool)

(declare-fun lt!546229 () Unit!39858)

(declare-fun lt!546227 () Unit!39858)

(assert (=> b!1204522 (= lt!546229 lt!546227)))

(declare-fun lt!546232 () ListLongMap!17817)

(declare-fun lt!546228 () (_ BitVec 64))

(declare-fun lt!546231 () V!45947)

(declare-fun lt!546230 () (_ BitVec 64))

(assert (=> b!1204522 (not (contains!6926 (+!3958 lt!546232 (tuple2!19837 lt!546230 lt!546231)) lt!546228))))

(declare-fun addStillNotContains!292 (ListLongMap!17817 (_ BitVec 64) V!45947 (_ BitVec 64)) Unit!39858)

(assert (=> b!1204522 (= lt!546227 (addStillNotContains!292 lt!546232 lt!546230 lt!546231 lt!546228))))

(assert (=> b!1204522 (= lt!546228 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!19224 (ValueCell!14598 V!45947) V!45947)

(assert (=> b!1204522 (= lt!546231 (get!19224 (select (arr!37632 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204522 (= lt!546230 (select (arr!37631 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!58253 () ListLongMap!17817)

(assert (=> b!1204522 (= lt!546232 call!58253)))

(assert (=> b!1204522 (= e!684050 (+!3958 call!58253 (tuple2!19837 (select (arr!37631 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19224 (select (arr!37632 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1204523 () Bool)

(declare-fun e!684054 () Bool)

(declare-fun e!684048 () Bool)

(assert (=> b!1204523 (= e!684054 e!684048)))

(assert (=> b!1204523 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 _keys!1208)))))

(declare-fun res!801419 () Bool)

(declare-fun lt!546233 () ListLongMap!17817)

(assert (=> b!1204523 (= res!801419 (contains!6926 lt!546233 (select (arr!37631 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204523 (=> (not res!801419) (not e!684048))))

(declare-fun b!1204524 () Bool)

(declare-fun e!684049 () Bool)

(assert (=> b!1204524 (= e!684054 e!684049)))

(declare-fun c!118057 () Bool)

(assert (=> b!1204524 (= c!118057 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 _keys!1208)))))

(declare-fun b!1204525 () Bool)

(assert (=> b!1204525 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 _keys!1208)))))

(assert (=> b!1204525 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38169 _values!996)))))

(declare-fun apply!997 (ListLongMap!17817 (_ BitVec 64)) V!45947)

(assert (=> b!1204525 (= e!684048 (= (apply!997 lt!546233 (select (arr!37631 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19224 (select (arr!37632 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204526 () Bool)

(assert (=> b!1204526 (= e!684050 call!58253)))

(declare-fun d!132729 () Bool)

(declare-fun e!684051 () Bool)

(assert (=> d!132729 e!684051))

(declare-fun res!801418 () Bool)

(assert (=> d!132729 (=> (not res!801418) (not e!684051))))

(assert (=> d!132729 (= res!801418 (not (contains!6926 lt!546233 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132729 (= lt!546233 e!684053)))

(declare-fun c!118056 () Bool)

(assert (=> d!132729 (= c!118056 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 _keys!1208)))))

(assert (=> d!132729 (validMask!0 mask!1564)))

(assert (=> d!132729 (= (getCurrentListMapNoExtraKeys!5333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!546233)))

(declare-fun b!1204527 () Bool)

(assert (=> b!1204527 (= e!684053 (ListLongMap!17818 Nil!26660))))

(declare-fun b!1204528 () Bool)

(declare-fun res!801421 () Bool)

(assert (=> b!1204528 (=> (not res!801421) (not e!684051))))

(assert (=> b!1204528 (= res!801421 (not (contains!6926 lt!546233 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1204529 () Bool)

(assert (=> b!1204529 (= e!684049 (= lt!546233 (getCurrentListMapNoExtraKeys!5333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204530 () Bool)

(declare-fun e!684052 () Bool)

(assert (=> b!1204530 (= e!684052 (validKeyInArray!0 (select (arr!37631 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204530 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun bm!58250 () Bool)

(assert (=> bm!58250 (= call!58253 (getCurrentListMapNoExtraKeys!5333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204531 () Bool)

(declare-fun isEmpty!987 (ListLongMap!17817) Bool)

(assert (=> b!1204531 (= e!684049 (isEmpty!987 lt!546233))))

(declare-fun b!1204532 () Bool)

(assert (=> b!1204532 (= e!684051 e!684054)))

(declare-fun c!118058 () Bool)

(assert (=> b!1204532 (= c!118058 e!684052)))

(declare-fun res!801420 () Bool)

(assert (=> b!1204532 (=> (not res!801420) (not e!684052))))

(assert (=> b!1204532 (= res!801420 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 _keys!1208)))))

(assert (= (and d!132729 c!118056) b!1204527))

(assert (= (and d!132729 (not c!118056)) b!1204521))

(assert (= (and b!1204521 c!118055) b!1204522))

(assert (= (and b!1204521 (not c!118055)) b!1204526))

(assert (= (or b!1204522 b!1204526) bm!58250))

(assert (= (and d!132729 res!801418) b!1204528))

(assert (= (and b!1204528 res!801421) b!1204532))

(assert (= (and b!1204532 res!801420) b!1204530))

(assert (= (and b!1204532 c!118058) b!1204523))

(assert (= (and b!1204532 (not c!118058)) b!1204524))

(assert (= (and b!1204523 res!801419) b!1204525))

(assert (= (and b!1204524 c!118057) b!1204529))

(assert (= (and b!1204524 (not c!118057)) b!1204531))

(declare-fun b_lambda!21255 () Bool)

(assert (=> (not b_lambda!21255) (not b!1204522)))

(assert (=> b!1204522 t!39560))

(declare-fun b_and!42791 () Bool)

(assert (= b_and!42785 (and (=> t!39560 result!22011) b_and!42791)))

(declare-fun b_lambda!21257 () Bool)

(assert (=> (not b_lambda!21257) (not b!1204525)))

(assert (=> b!1204525 t!39560))

(declare-fun b_and!42793 () Bool)

(assert (= b_and!42791 (and (=> t!39560 result!22011) b_and!42793)))

(declare-fun m!1110575 () Bool)

(assert (=> b!1204528 m!1110575))

(declare-fun m!1110577 () Bool)

(assert (=> d!132729 m!1110577))

(assert (=> d!132729 m!1110415))

(declare-fun m!1110579 () Bool)

(assert (=> b!1204523 m!1110579))

(assert (=> b!1204523 m!1110579))

(declare-fun m!1110581 () Bool)

(assert (=> b!1204523 m!1110581))

(declare-fun m!1110583 () Bool)

(assert (=> b!1204529 m!1110583))

(assert (=> b!1204530 m!1110579))

(assert (=> b!1204530 m!1110579))

(declare-fun m!1110585 () Bool)

(assert (=> b!1204530 m!1110585))

(assert (=> bm!58250 m!1110583))

(declare-fun m!1110587 () Bool)

(assert (=> b!1204531 m!1110587))

(declare-fun m!1110589 () Bool)

(assert (=> b!1204522 m!1110589))

(declare-fun m!1110591 () Bool)

(assert (=> b!1204522 m!1110591))

(declare-fun m!1110593 () Bool)

(assert (=> b!1204522 m!1110593))

(assert (=> b!1204522 m!1110431))

(declare-fun m!1110595 () Bool)

(assert (=> b!1204522 m!1110595))

(assert (=> b!1204522 m!1110431))

(assert (=> b!1204522 m!1110593))

(assert (=> b!1204522 m!1110579))

(declare-fun m!1110597 () Bool)

(assert (=> b!1204522 m!1110597))

(declare-fun m!1110599 () Bool)

(assert (=> b!1204522 m!1110599))

(assert (=> b!1204522 m!1110597))

(assert (=> b!1204525 m!1110593))

(assert (=> b!1204525 m!1110431))

(assert (=> b!1204525 m!1110595))

(assert (=> b!1204525 m!1110431))

(assert (=> b!1204525 m!1110593))

(assert (=> b!1204525 m!1110579))

(assert (=> b!1204525 m!1110579))

(declare-fun m!1110601 () Bool)

(assert (=> b!1204525 m!1110601))

(assert (=> b!1204521 m!1110579))

(assert (=> b!1204521 m!1110579))

(assert (=> b!1204521 m!1110585))

(assert (=> b!1204380 d!132729))

(declare-fun d!132731 () Bool)

(declare-fun res!801426 () Bool)

(declare-fun e!684059 () Bool)

(assert (=> d!132731 (=> res!801426 e!684059)))

(assert (=> d!132731 (= res!801426 (= (select (arr!37631 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!132731 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!684059)))

(declare-fun b!1204537 () Bool)

(declare-fun e!684060 () Bool)

(assert (=> b!1204537 (= e!684059 e!684060)))

(declare-fun res!801427 () Bool)

(assert (=> b!1204537 (=> (not res!801427) (not e!684060))))

(assert (=> b!1204537 (= res!801427 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38168 _keys!1208)))))

(declare-fun b!1204538 () Bool)

(assert (=> b!1204538 (= e!684060 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!132731 (not res!801426)) b!1204537))

(assert (= (and b!1204537 res!801427) b!1204538))

(assert (=> d!132731 m!1110579))

(declare-fun m!1110603 () Bool)

(assert (=> b!1204538 m!1110603))

(assert (=> b!1204370 d!132731))

(assert (=> b!1204378 d!132731))

(declare-fun d!132733 () Bool)

(declare-fun e!684063 () Bool)

(assert (=> d!132733 e!684063))

(declare-fun c!118061 () Bool)

(assert (=> d!132733 (= c!118061 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!546236 () Unit!39858)

(declare-fun choose!1800 (array!77984 array!77986 (_ BitVec 32) (_ BitVec 32) V!45947 V!45947 (_ BitVec 64) (_ BitVec 32) Int) Unit!39858)

(assert (=> d!132733 (= lt!546236 (choose!1800 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132733 (validMask!0 mask!1564)))

(assert (=> d!132733 (= (lemmaListMapContainsThenArrayContainsFrom!563 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!546236)))

(declare-fun b!1204543 () Bool)

(assert (=> b!1204543 (= e!684063 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1204544 () Bool)

(assert (=> b!1204544 (= e!684063 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!132733 c!118061) b!1204543))

(assert (= (and d!132733 (not c!118061)) b!1204544))

(declare-fun m!1110605 () Bool)

(assert (=> d!132733 m!1110605))

(assert (=> d!132733 m!1110415))

(assert (=> b!1204543 m!1110401))

(assert (=> b!1204378 d!132733))

(declare-fun d!132735 () Bool)

(assert (=> d!132735 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1204361 d!132735))

(declare-fun b!1204551 () Bool)

(declare-fun e!684069 () Bool)

(declare-fun call!58258 () ListLongMap!17817)

(declare-fun call!58259 () ListLongMap!17817)

(assert (=> b!1204551 (= e!684069 (= call!58258 call!58259))))

(assert (=> b!1204551 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38169 _values!996)))))

(declare-fun bm!58255 () Bool)

(assert (=> bm!58255 (= call!58258 (getCurrentListMapNoExtraKeys!5333 (array!77985 (store (arr!37631 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38168 _keys!1208)) (array!77987 (store (arr!37632 _values!996) i!673 (ValueCellFull!14598 (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38169 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204552 () Bool)

(declare-fun e!684068 () Bool)

(assert (=> b!1204552 (= e!684068 e!684069)))

(declare-fun c!118064 () Bool)

(assert (=> b!1204552 (= c!118064 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun d!132737 () Bool)

(assert (=> d!132737 e!684068))

(declare-fun res!801430 () Bool)

(assert (=> d!132737 (=> (not res!801430) (not e!684068))))

(assert (=> d!132737 (= res!801430 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38168 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38168 _keys!1208))))))))

(declare-fun lt!546239 () Unit!39858)

(declare-fun choose!1801 (array!77984 array!77986 (_ BitVec 32) (_ BitVec 32) V!45947 V!45947 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39858)

(assert (=> d!132737 (= lt!546239 (choose!1801 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132737 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 _keys!1208)))))

(assert (=> d!132737 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1043 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!546239)))

(declare-fun b!1204553 () Bool)

(assert (=> b!1204553 (= e!684069 (= call!58258 (-!1839 call!58259 k0!934)))))

(assert (=> b!1204553 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38169 _values!996)))))

(declare-fun bm!58256 () Bool)

(assert (=> bm!58256 (= call!58259 (getCurrentListMapNoExtraKeys!5333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and d!132737 res!801430) b!1204552))

(assert (= (and b!1204552 c!118064) b!1204553))

(assert (= (and b!1204552 (not c!118064)) b!1204551))

(assert (= (or b!1204553 b!1204551) bm!58256))

(assert (= (or b!1204553 b!1204551) bm!58255))

(declare-fun b_lambda!21259 () Bool)

(assert (=> (not b_lambda!21259) (not bm!58255)))

(assert (=> bm!58255 t!39560))

(declare-fun b_and!42795 () Bool)

(assert (= b_and!42793 (and (=> t!39560 result!22011) b_and!42795)))

(assert (=> bm!58255 m!1110443))

(assert (=> bm!58255 m!1110431))

(assert (=> bm!58255 m!1110433))

(declare-fun m!1110607 () Bool)

(assert (=> bm!58255 m!1110607))

(declare-fun m!1110609 () Bool)

(assert (=> d!132737 m!1110609))

(declare-fun m!1110611 () Bool)

(assert (=> b!1204553 m!1110611))

(assert (=> bm!58256 m!1110399))

(assert (=> b!1204384 d!132737))

(declare-fun d!132739 () Bool)

(assert (=> d!132739 (contains!6926 (+!3958 lt!546119 (tuple2!19837 (ite (or c!118022 c!118026) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118022 c!118026) zeroValue!944 minValue!944))) k0!934)))

(declare-fun lt!546240 () Unit!39858)

(assert (=> d!132739 (= lt!546240 (choose!1799 lt!546119 (ite (or c!118022 c!118026) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118022 c!118026) zeroValue!944 minValue!944) k0!934))))

(assert (=> d!132739 (contains!6926 lt!546119 k0!934)))

(assert (=> d!132739 (= (addStillContains!1022 lt!546119 (ite (or c!118022 c!118026) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118022 c!118026) zeroValue!944 minValue!944) k0!934) lt!546240)))

(declare-fun bs!34084 () Bool)

(assert (= bs!34084 d!132739))

(declare-fun m!1110613 () Bool)

(assert (=> bs!34084 m!1110613))

(assert (=> bs!34084 m!1110613))

(declare-fun m!1110615 () Bool)

(assert (=> bs!34084 m!1110615))

(declare-fun m!1110617 () Bool)

(assert (=> bs!34084 m!1110617))

(assert (=> bs!34084 m!1110403))

(assert (=> bm!58219 d!132739))

(declare-fun d!132741 () Bool)

(assert (=> d!132741 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1204368 d!132741))

(declare-fun b!1204554 () Bool)

(declare-fun e!684075 () ListLongMap!17817)

(declare-fun e!684072 () ListLongMap!17817)

(assert (=> b!1204554 (= e!684075 e!684072)))

(declare-fun c!118065 () Bool)

(assert (=> b!1204554 (= c!118065 (validKeyInArray!0 (select (arr!37631 lt!546127) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1204555 () Bool)

(declare-fun lt!546243 () Unit!39858)

(declare-fun lt!546241 () Unit!39858)

(assert (=> b!1204555 (= lt!546243 lt!546241)))

(declare-fun lt!546242 () (_ BitVec 64))

(declare-fun lt!546244 () (_ BitVec 64))

(declare-fun lt!546245 () V!45947)

(declare-fun lt!546246 () ListLongMap!17817)

(assert (=> b!1204555 (not (contains!6926 (+!3958 lt!546246 (tuple2!19837 lt!546244 lt!546245)) lt!546242))))

(assert (=> b!1204555 (= lt!546241 (addStillNotContains!292 lt!546246 lt!546244 lt!546245 lt!546242))))

(assert (=> b!1204555 (= lt!546242 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1204555 (= lt!546245 (get!19224 (select (arr!37632 lt!546118) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204555 (= lt!546244 (select (arr!37631 lt!546127) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!58260 () ListLongMap!17817)

(assert (=> b!1204555 (= lt!546246 call!58260)))

(assert (=> b!1204555 (= e!684072 (+!3958 call!58260 (tuple2!19837 (select (arr!37631 lt!546127) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19224 (select (arr!37632 lt!546118) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1204556 () Bool)

(declare-fun e!684076 () Bool)

(declare-fun e!684070 () Bool)

(assert (=> b!1204556 (= e!684076 e!684070)))

(assert (=> b!1204556 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 lt!546127)))))

(declare-fun res!801432 () Bool)

(declare-fun lt!546247 () ListLongMap!17817)

(assert (=> b!1204556 (= res!801432 (contains!6926 lt!546247 (select (arr!37631 lt!546127) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204556 (=> (not res!801432) (not e!684070))))

(declare-fun b!1204557 () Bool)

(declare-fun e!684071 () Bool)

(assert (=> b!1204557 (= e!684076 e!684071)))

(declare-fun c!118067 () Bool)

(assert (=> b!1204557 (= c!118067 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 lt!546127)))))

(declare-fun b!1204558 () Bool)

(assert (=> b!1204558 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 lt!546127)))))

(assert (=> b!1204558 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38169 lt!546118)))))

(assert (=> b!1204558 (= e!684070 (= (apply!997 lt!546247 (select (arr!37631 lt!546127) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19224 (select (arr!37632 lt!546118) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204559 () Bool)

(assert (=> b!1204559 (= e!684072 call!58260)))

(declare-fun d!132743 () Bool)

(declare-fun e!684073 () Bool)

(assert (=> d!132743 e!684073))

(declare-fun res!801431 () Bool)

(assert (=> d!132743 (=> (not res!801431) (not e!684073))))

(assert (=> d!132743 (= res!801431 (not (contains!6926 lt!546247 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132743 (= lt!546247 e!684075)))

(declare-fun c!118066 () Bool)

(assert (=> d!132743 (= c!118066 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 lt!546127)))))

(assert (=> d!132743 (validMask!0 mask!1564)))

(assert (=> d!132743 (= (getCurrentListMapNoExtraKeys!5333 lt!546127 lt!546118 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!546247)))

(declare-fun b!1204560 () Bool)

(assert (=> b!1204560 (= e!684075 (ListLongMap!17818 Nil!26660))))

(declare-fun b!1204561 () Bool)

(declare-fun res!801434 () Bool)

(assert (=> b!1204561 (=> (not res!801434) (not e!684073))))

(assert (=> b!1204561 (= res!801434 (not (contains!6926 lt!546247 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1204562 () Bool)

(assert (=> b!1204562 (= e!684071 (= lt!546247 (getCurrentListMapNoExtraKeys!5333 lt!546127 lt!546118 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204563 () Bool)

(declare-fun e!684074 () Bool)

(assert (=> b!1204563 (= e!684074 (validKeyInArray!0 (select (arr!37631 lt!546127) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204563 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun bm!58257 () Bool)

(assert (=> bm!58257 (= call!58260 (getCurrentListMapNoExtraKeys!5333 lt!546127 lt!546118 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204564 () Bool)

(assert (=> b!1204564 (= e!684071 (isEmpty!987 lt!546247))))

(declare-fun b!1204565 () Bool)

(assert (=> b!1204565 (= e!684073 e!684076)))

(declare-fun c!118068 () Bool)

(assert (=> b!1204565 (= c!118068 e!684074)))

(declare-fun res!801433 () Bool)

(assert (=> b!1204565 (=> (not res!801433) (not e!684074))))

(assert (=> b!1204565 (= res!801433 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38168 lt!546127)))))

(assert (= (and d!132743 c!118066) b!1204560))

(assert (= (and d!132743 (not c!118066)) b!1204554))

(assert (= (and b!1204554 c!118065) b!1204555))

(assert (= (and b!1204554 (not c!118065)) b!1204559))

(assert (= (or b!1204555 b!1204559) bm!58257))

(assert (= (and d!132743 res!801431) b!1204561))

(assert (= (and b!1204561 res!801434) b!1204565))

(assert (= (and b!1204565 res!801433) b!1204563))

(assert (= (and b!1204565 c!118068) b!1204556))

(assert (= (and b!1204565 (not c!118068)) b!1204557))

(assert (= (and b!1204556 res!801432) b!1204558))

(assert (= (and b!1204557 c!118067) b!1204562))

(assert (= (and b!1204557 (not c!118067)) b!1204564))

(declare-fun b_lambda!21261 () Bool)

(assert (=> (not b_lambda!21261) (not b!1204555)))

(assert (=> b!1204555 t!39560))

(declare-fun b_and!42797 () Bool)

(assert (= b_and!42795 (and (=> t!39560 result!22011) b_and!42797)))

(declare-fun b_lambda!21263 () Bool)

(assert (=> (not b_lambda!21263) (not b!1204558)))

(assert (=> b!1204558 t!39560))

(declare-fun b_and!42799 () Bool)

(assert (= b_and!42797 (and (=> t!39560 result!22011) b_and!42799)))

(declare-fun m!1110619 () Bool)

(assert (=> b!1204561 m!1110619))

(declare-fun m!1110621 () Bool)

(assert (=> d!132743 m!1110621))

(assert (=> d!132743 m!1110415))

(declare-fun m!1110623 () Bool)

(assert (=> b!1204556 m!1110623))

(assert (=> b!1204556 m!1110623))

(declare-fun m!1110625 () Bool)

(assert (=> b!1204556 m!1110625))

(declare-fun m!1110627 () Bool)

(assert (=> b!1204562 m!1110627))

(assert (=> b!1204563 m!1110623))

(assert (=> b!1204563 m!1110623))

(declare-fun m!1110629 () Bool)

(assert (=> b!1204563 m!1110629))

(assert (=> bm!58257 m!1110627))

(declare-fun m!1110631 () Bool)

(assert (=> b!1204564 m!1110631))

(declare-fun m!1110633 () Bool)

(assert (=> b!1204555 m!1110633))

(declare-fun m!1110635 () Bool)

(assert (=> b!1204555 m!1110635))

(declare-fun m!1110637 () Bool)

(assert (=> b!1204555 m!1110637))

(assert (=> b!1204555 m!1110431))

(declare-fun m!1110639 () Bool)

(assert (=> b!1204555 m!1110639))

(assert (=> b!1204555 m!1110431))

(assert (=> b!1204555 m!1110637))

(assert (=> b!1204555 m!1110623))

(declare-fun m!1110641 () Bool)

(assert (=> b!1204555 m!1110641))

(declare-fun m!1110643 () Bool)

(assert (=> b!1204555 m!1110643))

(assert (=> b!1204555 m!1110641))

(assert (=> b!1204558 m!1110637))

(assert (=> b!1204558 m!1110431))

(assert (=> b!1204558 m!1110639))

(assert (=> b!1204558 m!1110431))

(assert (=> b!1204558 m!1110637))

(assert (=> b!1204558 m!1110623))

(assert (=> b!1204558 m!1110623))

(declare-fun m!1110645 () Bool)

(assert (=> b!1204558 m!1110645))

(assert (=> b!1204554 m!1110623))

(assert (=> b!1204554 m!1110623))

(assert (=> b!1204554 m!1110629))

(assert (=> bm!58221 d!132743))

(assert (=> bm!58216 d!132729))

(declare-fun b!1204576 () Bool)

(declare-fun e!684088 () Bool)

(declare-fun call!58263 () Bool)

(assert (=> b!1204576 (= e!684088 call!58263)))

(declare-fun b!1204577 () Bool)

(declare-fun e!684086 () Bool)

(declare-fun contains!6929 (List!26664 (_ BitVec 64)) Bool)

(assert (=> b!1204577 (= e!684086 (contains!6929 Nil!26661 (select (arr!37631 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1204578 () Bool)

(declare-fun e!684087 () Bool)

(declare-fun e!684085 () Bool)

(assert (=> b!1204578 (= e!684087 e!684085)))

(declare-fun res!801442 () Bool)

(assert (=> b!1204578 (=> (not res!801442) (not e!684085))))

(assert (=> b!1204578 (= res!801442 (not e!684086))))

(declare-fun res!801443 () Bool)

(assert (=> b!1204578 (=> (not res!801443) (not e!684086))))

(assert (=> b!1204578 (= res!801443 (validKeyInArray!0 (select (arr!37631 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!58260 () Bool)

(declare-fun c!118071 () Bool)

(assert (=> bm!58260 (= call!58263 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118071 (Cons!26660 (select (arr!37631 _keys!1208) #b00000000000000000000000000000000) Nil!26661) Nil!26661)))))

(declare-fun b!1204580 () Bool)

(assert (=> b!1204580 (= e!684085 e!684088)))

(assert (=> b!1204580 (= c!118071 (validKeyInArray!0 (select (arr!37631 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!132745 () Bool)

(declare-fun res!801441 () Bool)

(assert (=> d!132745 (=> res!801441 e!684087)))

(assert (=> d!132745 (= res!801441 (bvsge #b00000000000000000000000000000000 (size!38168 _keys!1208)))))

(assert (=> d!132745 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26661) e!684087)))

(declare-fun b!1204579 () Bool)

(assert (=> b!1204579 (= e!684088 call!58263)))

(assert (= (and d!132745 (not res!801441)) b!1204578))

(assert (= (and b!1204578 res!801443) b!1204577))

(assert (= (and b!1204578 res!801442) b!1204580))

(assert (= (and b!1204580 c!118071) b!1204576))

(assert (= (and b!1204580 (not c!118071)) b!1204579))

(assert (= (or b!1204576 b!1204579) bm!58260))

(declare-fun m!1110647 () Bool)

(assert (=> b!1204577 m!1110647))

(assert (=> b!1204577 m!1110647))

(declare-fun m!1110649 () Bool)

(assert (=> b!1204577 m!1110649))

(assert (=> b!1204578 m!1110647))

(assert (=> b!1204578 m!1110647))

(declare-fun m!1110651 () Bool)

(assert (=> b!1204578 m!1110651))

(assert (=> bm!58260 m!1110647))

(declare-fun m!1110653 () Bool)

(assert (=> bm!58260 m!1110653))

(assert (=> b!1204580 m!1110647))

(assert (=> b!1204580 m!1110647))

(assert (=> b!1204580 m!1110651))

(assert (=> b!1204383 d!132745))

(declare-fun d!132747 () Bool)

(declare-fun lt!546250 () ListLongMap!17817)

(assert (=> d!132747 (not (contains!6926 lt!546250 k0!934))))

(declare-fun removeStrictlySorted!96 (List!26663 (_ BitVec 64)) List!26663)

(assert (=> d!132747 (= lt!546250 (ListLongMap!17818 (removeStrictlySorted!96 (toList!8924 call!58220) k0!934)))))

(assert (=> d!132747 (= (-!1839 call!58220 k0!934) lt!546250)))

(declare-fun bs!34085 () Bool)

(assert (= bs!34085 d!132747))

(declare-fun m!1110655 () Bool)

(assert (=> bs!34085 m!1110655))

(declare-fun m!1110657 () Bool)

(assert (=> bs!34085 m!1110657))

(assert (=> b!1204366 d!132747))

(declare-fun b!1204589 () Bool)

(declare-fun e!684095 () Bool)

(declare-fun e!684096 () Bool)

(assert (=> b!1204589 (= e!684095 e!684096)))

(declare-fun lt!546259 () (_ BitVec 64))

(assert (=> b!1204589 (= lt!546259 (select (arr!37631 lt!546127) #b00000000000000000000000000000000))))

(declare-fun lt!546257 () Unit!39858)

(assert (=> b!1204589 (= lt!546257 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!546127 lt!546259 #b00000000000000000000000000000000))))

(assert (=> b!1204589 (arrayContainsKey!0 lt!546127 lt!546259 #b00000000000000000000000000000000)))

(declare-fun lt!546258 () Unit!39858)

(assert (=> b!1204589 (= lt!546258 lt!546257)))

(declare-fun res!801449 () Bool)

(declare-datatypes ((SeekEntryResult!9932 0))(
  ( (MissingZero!9932 (index!42098 (_ BitVec 32))) (Found!9932 (index!42099 (_ BitVec 32))) (Intermediate!9932 (undefined!10744 Bool) (index!42100 (_ BitVec 32)) (x!106410 (_ BitVec 32))) (Undefined!9932) (MissingVacant!9932 (index!42101 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!77984 (_ BitVec 32)) SeekEntryResult!9932)

(assert (=> b!1204589 (= res!801449 (= (seekEntryOrOpen!0 (select (arr!37631 lt!546127) #b00000000000000000000000000000000) lt!546127 mask!1564) (Found!9932 #b00000000000000000000000000000000)))))

(assert (=> b!1204589 (=> (not res!801449) (not e!684096))))

(declare-fun d!132749 () Bool)

(declare-fun res!801448 () Bool)

(declare-fun e!684097 () Bool)

(assert (=> d!132749 (=> res!801448 e!684097)))

(assert (=> d!132749 (= res!801448 (bvsge #b00000000000000000000000000000000 (size!38168 lt!546127)))))

(assert (=> d!132749 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546127 mask!1564) e!684097)))

(declare-fun b!1204590 () Bool)

(assert (=> b!1204590 (= e!684097 e!684095)))

(declare-fun c!118074 () Bool)

(assert (=> b!1204590 (= c!118074 (validKeyInArray!0 (select (arr!37631 lt!546127) #b00000000000000000000000000000000)))))

(declare-fun b!1204591 () Bool)

(declare-fun call!58266 () Bool)

(assert (=> b!1204591 (= e!684095 call!58266)))

(declare-fun b!1204592 () Bool)

(assert (=> b!1204592 (= e!684096 call!58266)))

(declare-fun bm!58263 () Bool)

(assert (=> bm!58263 (= call!58266 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!546127 mask!1564))))

(assert (= (and d!132749 (not res!801448)) b!1204590))

(assert (= (and b!1204590 c!118074) b!1204589))

(assert (= (and b!1204590 (not c!118074)) b!1204591))

(assert (= (and b!1204589 res!801449) b!1204592))

(assert (= (or b!1204592 b!1204591) bm!58263))

(declare-fun m!1110659 () Bool)

(assert (=> b!1204589 m!1110659))

(declare-fun m!1110661 () Bool)

(assert (=> b!1204589 m!1110661))

(declare-fun m!1110663 () Bool)

(assert (=> b!1204589 m!1110663))

(assert (=> b!1204589 m!1110659))

(declare-fun m!1110665 () Bool)

(assert (=> b!1204589 m!1110665))

(assert (=> b!1204590 m!1110659))

(assert (=> b!1204590 m!1110659))

(declare-fun m!1110667 () Bool)

(assert (=> b!1204590 m!1110667))

(declare-fun m!1110669 () Bool)

(assert (=> bm!58263 m!1110669))

(assert (=> b!1204375 d!132749))

(declare-fun d!132751 () Bool)

(declare-fun res!801450 () Bool)

(declare-fun e!684098 () Bool)

(assert (=> d!132751 (=> res!801450 e!684098)))

(assert (=> d!132751 (= res!801450 (= (select (arr!37631 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!132751 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!684098)))

(declare-fun b!1204593 () Bool)

(declare-fun e!684099 () Bool)

(assert (=> b!1204593 (= e!684098 e!684099)))

(declare-fun res!801451 () Bool)

(assert (=> b!1204593 (=> (not res!801451) (not e!684099))))

(assert (=> b!1204593 (= res!801451 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38168 _keys!1208)))))

(declare-fun b!1204594 () Bool)

(assert (=> b!1204594 (= e!684099 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132751 (not res!801450)) b!1204593))

(assert (= (and b!1204593 res!801451) b!1204594))

(assert (=> d!132751 m!1110647))

(declare-fun m!1110671 () Bool)

(assert (=> b!1204594 m!1110671))

(assert (=> b!1204374 d!132751))

(declare-fun d!132753 () Bool)

(assert (=> d!132753 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!546262 () Unit!39858)

(declare-fun choose!13 (array!77984 (_ BitVec 64) (_ BitVec 32)) Unit!39858)

(assert (=> d!132753 (= lt!546262 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!132753 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!132753 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!546262)))

(declare-fun bs!34086 () Bool)

(assert (= bs!34086 d!132753))

(assert (=> bs!34086 m!1110421))

(declare-fun m!1110673 () Bool)

(assert (=> bs!34086 m!1110673))

(assert (=> b!1204374 d!132753))

(declare-fun b!1204595 () Bool)

(declare-fun e!684103 () Bool)

(declare-fun call!58267 () Bool)

(assert (=> b!1204595 (= e!684103 call!58267)))

(declare-fun b!1204596 () Bool)

(declare-fun e!684101 () Bool)

(assert (=> b!1204596 (= e!684101 (contains!6929 Nil!26661 (select (arr!37631 lt!546127) #b00000000000000000000000000000000)))))

(declare-fun b!1204597 () Bool)

(declare-fun e!684102 () Bool)

(declare-fun e!684100 () Bool)

(assert (=> b!1204597 (= e!684102 e!684100)))

(declare-fun res!801453 () Bool)

(assert (=> b!1204597 (=> (not res!801453) (not e!684100))))

(assert (=> b!1204597 (= res!801453 (not e!684101))))

(declare-fun res!801454 () Bool)

(assert (=> b!1204597 (=> (not res!801454) (not e!684101))))

(assert (=> b!1204597 (= res!801454 (validKeyInArray!0 (select (arr!37631 lt!546127) #b00000000000000000000000000000000)))))

(declare-fun bm!58264 () Bool)

(declare-fun c!118075 () Bool)

(assert (=> bm!58264 (= call!58267 (arrayNoDuplicates!0 lt!546127 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118075 (Cons!26660 (select (arr!37631 lt!546127) #b00000000000000000000000000000000) Nil!26661) Nil!26661)))))

(declare-fun b!1204599 () Bool)

(assert (=> b!1204599 (= e!684100 e!684103)))

(assert (=> b!1204599 (= c!118075 (validKeyInArray!0 (select (arr!37631 lt!546127) #b00000000000000000000000000000000)))))

(declare-fun d!132755 () Bool)

(declare-fun res!801452 () Bool)

(assert (=> d!132755 (=> res!801452 e!684102)))

(assert (=> d!132755 (= res!801452 (bvsge #b00000000000000000000000000000000 (size!38168 lt!546127)))))

(assert (=> d!132755 (= (arrayNoDuplicates!0 lt!546127 #b00000000000000000000000000000000 Nil!26661) e!684102)))

(declare-fun b!1204598 () Bool)

(assert (=> b!1204598 (= e!684103 call!58267)))

(assert (= (and d!132755 (not res!801452)) b!1204597))

(assert (= (and b!1204597 res!801454) b!1204596))

(assert (= (and b!1204597 res!801453) b!1204599))

(assert (= (and b!1204599 c!118075) b!1204595))

(assert (= (and b!1204599 (not c!118075)) b!1204598))

(assert (= (or b!1204595 b!1204598) bm!58264))

(assert (=> b!1204596 m!1110659))

(assert (=> b!1204596 m!1110659))

(declare-fun m!1110675 () Bool)

(assert (=> b!1204596 m!1110675))

(assert (=> b!1204597 m!1110659))

(assert (=> b!1204597 m!1110659))

(assert (=> b!1204597 m!1110667))

(assert (=> bm!58264 m!1110659))

(declare-fun m!1110677 () Bool)

(assert (=> bm!58264 m!1110677))

(assert (=> b!1204599 m!1110659))

(assert (=> b!1204599 m!1110659))

(assert (=> b!1204599 m!1110667))

(assert (=> b!1204365 d!132755))

(declare-fun b!1204600 () Bool)

(declare-fun e!684104 () Bool)

(declare-fun e!684105 () Bool)

(assert (=> b!1204600 (= e!684104 e!684105)))

(declare-fun lt!546265 () (_ BitVec 64))

(assert (=> b!1204600 (= lt!546265 (select (arr!37631 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!546263 () Unit!39858)

(assert (=> b!1204600 (= lt!546263 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!546265 #b00000000000000000000000000000000))))

(assert (=> b!1204600 (arrayContainsKey!0 _keys!1208 lt!546265 #b00000000000000000000000000000000)))

(declare-fun lt!546264 () Unit!39858)

(assert (=> b!1204600 (= lt!546264 lt!546263)))

(declare-fun res!801456 () Bool)

(assert (=> b!1204600 (= res!801456 (= (seekEntryOrOpen!0 (select (arr!37631 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9932 #b00000000000000000000000000000000)))))

(assert (=> b!1204600 (=> (not res!801456) (not e!684105))))

(declare-fun d!132757 () Bool)

(declare-fun res!801455 () Bool)

(declare-fun e!684106 () Bool)

(assert (=> d!132757 (=> res!801455 e!684106)))

(assert (=> d!132757 (= res!801455 (bvsge #b00000000000000000000000000000000 (size!38168 _keys!1208)))))

(assert (=> d!132757 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!684106)))

(declare-fun b!1204601 () Bool)

(assert (=> b!1204601 (= e!684106 e!684104)))

(declare-fun c!118076 () Bool)

(assert (=> b!1204601 (= c!118076 (validKeyInArray!0 (select (arr!37631 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1204602 () Bool)

(declare-fun call!58268 () Bool)

(assert (=> b!1204602 (= e!684104 call!58268)))

(declare-fun b!1204603 () Bool)

(assert (=> b!1204603 (= e!684105 call!58268)))

(declare-fun bm!58265 () Bool)

(assert (=> bm!58265 (= call!58268 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(assert (= (and d!132757 (not res!801455)) b!1204601))

(assert (= (and b!1204601 c!118076) b!1204600))

(assert (= (and b!1204601 (not c!118076)) b!1204602))

(assert (= (and b!1204600 res!801456) b!1204603))

(assert (= (or b!1204603 b!1204602) bm!58265))

(assert (=> b!1204600 m!1110647))

(declare-fun m!1110679 () Bool)

(assert (=> b!1204600 m!1110679))

(declare-fun m!1110681 () Bool)

(assert (=> b!1204600 m!1110681))

(assert (=> b!1204600 m!1110647))

(declare-fun m!1110683 () Bool)

(assert (=> b!1204600 m!1110683))

(assert (=> b!1204601 m!1110647))

(assert (=> b!1204601 m!1110647))

(assert (=> b!1204601 m!1110651))

(declare-fun m!1110685 () Bool)

(assert (=> bm!58265 m!1110685))

(assert (=> b!1204364 d!132757))

(declare-fun b!1204604 () Bool)

(declare-fun e!684112 () ListLongMap!17817)

(declare-fun e!684109 () ListLongMap!17817)

(assert (=> b!1204604 (= e!684112 e!684109)))

(declare-fun c!118077 () Bool)

(assert (=> b!1204604 (= c!118077 (validKeyInArray!0 (select (arr!37631 lt!546127) from!1455)))))

(declare-fun b!1204605 () Bool)

(declare-fun lt!546268 () Unit!39858)

(declare-fun lt!546266 () Unit!39858)

(assert (=> b!1204605 (= lt!546268 lt!546266)))

(declare-fun lt!546267 () (_ BitVec 64))

(declare-fun lt!546271 () ListLongMap!17817)

(declare-fun lt!546270 () V!45947)

(declare-fun lt!546269 () (_ BitVec 64))

(assert (=> b!1204605 (not (contains!6926 (+!3958 lt!546271 (tuple2!19837 lt!546269 lt!546270)) lt!546267))))

(assert (=> b!1204605 (= lt!546266 (addStillNotContains!292 lt!546271 lt!546269 lt!546270 lt!546267))))

(assert (=> b!1204605 (= lt!546267 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1204605 (= lt!546270 (get!19224 (select (arr!37632 lt!546118) from!1455) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204605 (= lt!546269 (select (arr!37631 lt!546127) from!1455))))

(declare-fun call!58269 () ListLongMap!17817)

(assert (=> b!1204605 (= lt!546271 call!58269)))

(assert (=> b!1204605 (= e!684109 (+!3958 call!58269 (tuple2!19837 (select (arr!37631 lt!546127) from!1455) (get!19224 (select (arr!37632 lt!546118) from!1455) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1204606 () Bool)

(declare-fun e!684113 () Bool)

(declare-fun e!684107 () Bool)

(assert (=> b!1204606 (= e!684113 e!684107)))

(assert (=> b!1204606 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38168 lt!546127)))))

(declare-fun lt!546272 () ListLongMap!17817)

(declare-fun res!801458 () Bool)

(assert (=> b!1204606 (= res!801458 (contains!6926 lt!546272 (select (arr!37631 lt!546127) from!1455)))))

(assert (=> b!1204606 (=> (not res!801458) (not e!684107))))

(declare-fun b!1204607 () Bool)

(declare-fun e!684108 () Bool)

(assert (=> b!1204607 (= e!684113 e!684108)))

(declare-fun c!118079 () Bool)

(assert (=> b!1204607 (= c!118079 (bvslt from!1455 (size!38168 lt!546127)))))

(declare-fun b!1204608 () Bool)

(assert (=> b!1204608 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38168 lt!546127)))))

(assert (=> b!1204608 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38169 lt!546118)))))

(assert (=> b!1204608 (= e!684107 (= (apply!997 lt!546272 (select (arr!37631 lt!546127) from!1455)) (get!19224 (select (arr!37632 lt!546118) from!1455) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204609 () Bool)

(assert (=> b!1204609 (= e!684109 call!58269)))

(declare-fun d!132759 () Bool)

(declare-fun e!684110 () Bool)

(assert (=> d!132759 e!684110))

(declare-fun res!801457 () Bool)

(assert (=> d!132759 (=> (not res!801457) (not e!684110))))

(assert (=> d!132759 (= res!801457 (not (contains!6926 lt!546272 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132759 (= lt!546272 e!684112)))

(declare-fun c!118078 () Bool)

(assert (=> d!132759 (= c!118078 (bvsge from!1455 (size!38168 lt!546127)))))

(assert (=> d!132759 (validMask!0 mask!1564)))

(assert (=> d!132759 (= (getCurrentListMapNoExtraKeys!5333 lt!546127 lt!546118 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!546272)))

(declare-fun b!1204610 () Bool)

(assert (=> b!1204610 (= e!684112 (ListLongMap!17818 Nil!26660))))

(declare-fun b!1204611 () Bool)

(declare-fun res!801460 () Bool)

(assert (=> b!1204611 (=> (not res!801460) (not e!684110))))

(assert (=> b!1204611 (= res!801460 (not (contains!6926 lt!546272 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1204612 () Bool)

(assert (=> b!1204612 (= e!684108 (= lt!546272 (getCurrentListMapNoExtraKeys!5333 lt!546127 lt!546118 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204613 () Bool)

(declare-fun e!684111 () Bool)

(assert (=> b!1204613 (= e!684111 (validKeyInArray!0 (select (arr!37631 lt!546127) from!1455)))))

(assert (=> b!1204613 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun bm!58266 () Bool)

(assert (=> bm!58266 (= call!58269 (getCurrentListMapNoExtraKeys!5333 lt!546127 lt!546118 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204614 () Bool)

(assert (=> b!1204614 (= e!684108 (isEmpty!987 lt!546272))))

(declare-fun b!1204615 () Bool)

(assert (=> b!1204615 (= e!684110 e!684113)))

(declare-fun c!118080 () Bool)

(assert (=> b!1204615 (= c!118080 e!684111)))

(declare-fun res!801459 () Bool)

(assert (=> b!1204615 (=> (not res!801459) (not e!684111))))

(assert (=> b!1204615 (= res!801459 (bvslt from!1455 (size!38168 lt!546127)))))

(assert (= (and d!132759 c!118078) b!1204610))

(assert (= (and d!132759 (not c!118078)) b!1204604))

(assert (= (and b!1204604 c!118077) b!1204605))

(assert (= (and b!1204604 (not c!118077)) b!1204609))

(assert (= (or b!1204605 b!1204609) bm!58266))

(assert (= (and d!132759 res!801457) b!1204611))

(assert (= (and b!1204611 res!801460) b!1204615))

(assert (= (and b!1204615 res!801459) b!1204613))

(assert (= (and b!1204615 c!118080) b!1204606))

(assert (= (and b!1204615 (not c!118080)) b!1204607))

(assert (= (and b!1204606 res!801458) b!1204608))

(assert (= (and b!1204607 c!118079) b!1204612))

(assert (= (and b!1204607 (not c!118079)) b!1204614))

(declare-fun b_lambda!21265 () Bool)

(assert (=> (not b_lambda!21265) (not b!1204605)))

(assert (=> b!1204605 t!39560))

(declare-fun b_and!42801 () Bool)

(assert (= b_and!42799 (and (=> t!39560 result!22011) b_and!42801)))

(declare-fun b_lambda!21267 () Bool)

(assert (=> (not b_lambda!21267) (not b!1204608)))

(assert (=> b!1204608 t!39560))

(declare-fun b_and!42803 () Bool)

(assert (= b_and!42801 (and (=> t!39560 result!22011) b_and!42803)))

(declare-fun m!1110687 () Bool)

(assert (=> b!1204611 m!1110687))

(declare-fun m!1110689 () Bool)

(assert (=> d!132759 m!1110689))

(assert (=> d!132759 m!1110415))

(declare-fun m!1110691 () Bool)

(assert (=> b!1204606 m!1110691))

(assert (=> b!1204606 m!1110691))

(declare-fun m!1110693 () Bool)

(assert (=> b!1204606 m!1110693))

(declare-fun m!1110695 () Bool)

(assert (=> b!1204612 m!1110695))

(assert (=> b!1204613 m!1110691))

(assert (=> b!1204613 m!1110691))

(declare-fun m!1110697 () Bool)

(assert (=> b!1204613 m!1110697))

(assert (=> bm!58266 m!1110695))

(declare-fun m!1110699 () Bool)

(assert (=> b!1204614 m!1110699))

(declare-fun m!1110701 () Bool)

(assert (=> b!1204605 m!1110701))

(declare-fun m!1110703 () Bool)

(assert (=> b!1204605 m!1110703))

(declare-fun m!1110705 () Bool)

(assert (=> b!1204605 m!1110705))

(assert (=> b!1204605 m!1110431))

(declare-fun m!1110707 () Bool)

(assert (=> b!1204605 m!1110707))

(assert (=> b!1204605 m!1110431))

(assert (=> b!1204605 m!1110705))

(assert (=> b!1204605 m!1110691))

(declare-fun m!1110709 () Bool)

(assert (=> b!1204605 m!1110709))

(declare-fun m!1110711 () Bool)

(assert (=> b!1204605 m!1110711))

(assert (=> b!1204605 m!1110709))

(assert (=> b!1204608 m!1110705))

(assert (=> b!1204608 m!1110431))

(assert (=> b!1204608 m!1110707))

(assert (=> b!1204608 m!1110431))

(assert (=> b!1204608 m!1110705))

(assert (=> b!1204608 m!1110691))

(assert (=> b!1204608 m!1110691))

(declare-fun m!1110713 () Bool)

(assert (=> b!1204608 m!1110713))

(assert (=> b!1204604 m!1110691))

(assert (=> b!1204604 m!1110691))

(assert (=> b!1204604 m!1110697))

(assert (=> b!1204373 d!132759))

(declare-fun b!1204616 () Bool)

(declare-fun e!684119 () ListLongMap!17817)

(declare-fun e!684116 () ListLongMap!17817)

(assert (=> b!1204616 (= e!684119 e!684116)))

(declare-fun c!118081 () Bool)

(assert (=> b!1204616 (= c!118081 (validKeyInArray!0 (select (arr!37631 _keys!1208) from!1455)))))

(declare-fun b!1204617 () Bool)

(declare-fun lt!546275 () Unit!39858)

(declare-fun lt!546273 () Unit!39858)

(assert (=> b!1204617 (= lt!546275 lt!546273)))

(declare-fun lt!546277 () V!45947)

(declare-fun lt!546278 () ListLongMap!17817)

(declare-fun lt!546276 () (_ BitVec 64))

(declare-fun lt!546274 () (_ BitVec 64))

(assert (=> b!1204617 (not (contains!6926 (+!3958 lt!546278 (tuple2!19837 lt!546276 lt!546277)) lt!546274))))

(assert (=> b!1204617 (= lt!546273 (addStillNotContains!292 lt!546278 lt!546276 lt!546277 lt!546274))))

(assert (=> b!1204617 (= lt!546274 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1204617 (= lt!546277 (get!19224 (select (arr!37632 _values!996) from!1455) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204617 (= lt!546276 (select (arr!37631 _keys!1208) from!1455))))

(declare-fun call!58270 () ListLongMap!17817)

(assert (=> b!1204617 (= lt!546278 call!58270)))

(assert (=> b!1204617 (= e!684116 (+!3958 call!58270 (tuple2!19837 (select (arr!37631 _keys!1208) from!1455) (get!19224 (select (arr!37632 _values!996) from!1455) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1204618 () Bool)

(declare-fun e!684120 () Bool)

(declare-fun e!684114 () Bool)

(assert (=> b!1204618 (= e!684120 e!684114)))

(assert (=> b!1204618 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38168 _keys!1208)))))

(declare-fun lt!546279 () ListLongMap!17817)

(declare-fun res!801462 () Bool)

(assert (=> b!1204618 (= res!801462 (contains!6926 lt!546279 (select (arr!37631 _keys!1208) from!1455)))))

(assert (=> b!1204618 (=> (not res!801462) (not e!684114))))

(declare-fun b!1204619 () Bool)

(declare-fun e!684115 () Bool)

(assert (=> b!1204619 (= e!684120 e!684115)))

(declare-fun c!118083 () Bool)

(assert (=> b!1204619 (= c!118083 (bvslt from!1455 (size!38168 _keys!1208)))))

(declare-fun b!1204620 () Bool)

(assert (=> b!1204620 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38168 _keys!1208)))))

(assert (=> b!1204620 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38169 _values!996)))))

(assert (=> b!1204620 (= e!684114 (= (apply!997 lt!546279 (select (arr!37631 _keys!1208) from!1455)) (get!19224 (select (arr!37632 _values!996) from!1455) (dynLambda!3255 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204621 () Bool)

(assert (=> b!1204621 (= e!684116 call!58270)))

(declare-fun d!132761 () Bool)

(declare-fun e!684117 () Bool)

(assert (=> d!132761 e!684117))

(declare-fun res!801461 () Bool)

(assert (=> d!132761 (=> (not res!801461) (not e!684117))))

(assert (=> d!132761 (= res!801461 (not (contains!6926 lt!546279 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132761 (= lt!546279 e!684119)))

(declare-fun c!118082 () Bool)

(assert (=> d!132761 (= c!118082 (bvsge from!1455 (size!38168 _keys!1208)))))

(assert (=> d!132761 (validMask!0 mask!1564)))

(assert (=> d!132761 (= (getCurrentListMapNoExtraKeys!5333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!546279)))

(declare-fun b!1204622 () Bool)

(assert (=> b!1204622 (= e!684119 (ListLongMap!17818 Nil!26660))))

(declare-fun b!1204623 () Bool)

(declare-fun res!801464 () Bool)

(assert (=> b!1204623 (=> (not res!801464) (not e!684117))))

(assert (=> b!1204623 (= res!801464 (not (contains!6926 lt!546279 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1204624 () Bool)

(assert (=> b!1204624 (= e!684115 (= lt!546279 (getCurrentListMapNoExtraKeys!5333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204625 () Bool)

(declare-fun e!684118 () Bool)

(assert (=> b!1204625 (= e!684118 (validKeyInArray!0 (select (arr!37631 _keys!1208) from!1455)))))

(assert (=> b!1204625 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun bm!58267 () Bool)

(assert (=> bm!58267 (= call!58270 (getCurrentListMapNoExtraKeys!5333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204626 () Bool)

(assert (=> b!1204626 (= e!684115 (isEmpty!987 lt!546279))))

(declare-fun b!1204627 () Bool)

(assert (=> b!1204627 (= e!684117 e!684120)))

(declare-fun c!118084 () Bool)

(assert (=> b!1204627 (= c!118084 e!684118)))

(declare-fun res!801463 () Bool)

(assert (=> b!1204627 (=> (not res!801463) (not e!684118))))

(assert (=> b!1204627 (= res!801463 (bvslt from!1455 (size!38168 _keys!1208)))))

(assert (= (and d!132761 c!118082) b!1204622))

(assert (= (and d!132761 (not c!118082)) b!1204616))

(assert (= (and b!1204616 c!118081) b!1204617))

(assert (= (and b!1204616 (not c!118081)) b!1204621))

(assert (= (or b!1204617 b!1204621) bm!58267))

(assert (= (and d!132761 res!801461) b!1204623))

(assert (= (and b!1204623 res!801464) b!1204627))

(assert (= (and b!1204627 res!801463) b!1204625))

(assert (= (and b!1204627 c!118084) b!1204618))

(assert (= (and b!1204627 (not c!118084)) b!1204619))

(assert (= (and b!1204618 res!801462) b!1204620))

(assert (= (and b!1204619 c!118083) b!1204624))

(assert (= (and b!1204619 (not c!118083)) b!1204626))

(declare-fun b_lambda!21269 () Bool)

(assert (=> (not b_lambda!21269) (not b!1204617)))

(assert (=> b!1204617 t!39560))

(declare-fun b_and!42805 () Bool)

(assert (= b_and!42803 (and (=> t!39560 result!22011) b_and!42805)))

(declare-fun b_lambda!21271 () Bool)

(assert (=> (not b_lambda!21271) (not b!1204620)))

(assert (=> b!1204620 t!39560))

(declare-fun b_and!42807 () Bool)

(assert (= b_and!42805 (and (=> t!39560 result!22011) b_and!42807)))

(declare-fun m!1110715 () Bool)

(assert (=> b!1204623 m!1110715))

(declare-fun m!1110717 () Bool)

(assert (=> d!132761 m!1110717))

(assert (=> d!132761 m!1110415))

(assert (=> b!1204618 m!1110445))

(assert (=> b!1204618 m!1110445))

(declare-fun m!1110719 () Bool)

(assert (=> b!1204618 m!1110719))

(declare-fun m!1110721 () Bool)

(assert (=> b!1204624 m!1110721))

(assert (=> b!1204625 m!1110445))

(assert (=> b!1204625 m!1110445))

(declare-fun m!1110723 () Bool)

(assert (=> b!1204625 m!1110723))

(assert (=> bm!58267 m!1110721))

(declare-fun m!1110725 () Bool)

(assert (=> b!1204626 m!1110725))

(declare-fun m!1110727 () Bool)

(assert (=> b!1204617 m!1110727))

(declare-fun m!1110729 () Bool)

(assert (=> b!1204617 m!1110729))

(declare-fun m!1110731 () Bool)

(assert (=> b!1204617 m!1110731))

(assert (=> b!1204617 m!1110431))

(declare-fun m!1110733 () Bool)

(assert (=> b!1204617 m!1110733))

(assert (=> b!1204617 m!1110431))

(assert (=> b!1204617 m!1110731))

(assert (=> b!1204617 m!1110445))

(declare-fun m!1110735 () Bool)

(assert (=> b!1204617 m!1110735))

(declare-fun m!1110737 () Bool)

(assert (=> b!1204617 m!1110737))

(assert (=> b!1204617 m!1110735))

(assert (=> b!1204620 m!1110731))

(assert (=> b!1204620 m!1110431))

(assert (=> b!1204620 m!1110733))

(assert (=> b!1204620 m!1110431))

(assert (=> b!1204620 m!1110731))

(assert (=> b!1204620 m!1110445))

(assert (=> b!1204620 m!1110445))

(declare-fun m!1110739 () Bool)

(assert (=> b!1204620 m!1110739))

(assert (=> b!1204616 m!1110445))

(assert (=> b!1204616 m!1110445))

(assert (=> b!1204616 m!1110723))

(assert (=> b!1204373 d!132761))

(declare-fun mapNonEmpty!47778 () Bool)

(declare-fun mapRes!47778 () Bool)

(declare-fun tp!90740 () Bool)

(declare-fun e!684125 () Bool)

(assert (=> mapNonEmpty!47778 (= mapRes!47778 (and tp!90740 e!684125))))

(declare-fun mapKey!47778 () (_ BitVec 32))

(declare-fun mapRest!47778 () (Array (_ BitVec 32) ValueCell!14598))

(declare-fun mapValue!47778 () ValueCell!14598)

(assert (=> mapNonEmpty!47778 (= mapRest!47772 (store mapRest!47778 mapKey!47778 mapValue!47778))))

(declare-fun b!1204635 () Bool)

(declare-fun e!684126 () Bool)

(assert (=> b!1204635 (= e!684126 tp_is_empty!30615)))

(declare-fun b!1204634 () Bool)

(assert (=> b!1204634 (= e!684125 tp_is_empty!30615)))

(declare-fun condMapEmpty!47778 () Bool)

(declare-fun mapDefault!47778 () ValueCell!14598)

(assert (=> mapNonEmpty!47772 (= condMapEmpty!47778 (= mapRest!47772 ((as const (Array (_ BitVec 32) ValueCell!14598)) mapDefault!47778)))))

(assert (=> mapNonEmpty!47772 (= tp!90730 (and e!684126 mapRes!47778))))

(declare-fun mapIsEmpty!47778 () Bool)

(assert (=> mapIsEmpty!47778 mapRes!47778))

(assert (= (and mapNonEmpty!47772 condMapEmpty!47778) mapIsEmpty!47778))

(assert (= (and mapNonEmpty!47772 (not condMapEmpty!47778)) mapNonEmpty!47778))

(assert (= (and mapNonEmpty!47778 ((_ is ValueCellFull!14598) mapValue!47778)) b!1204634))

(assert (= (and mapNonEmpty!47772 ((_ is ValueCellFull!14598) mapDefault!47778)) b!1204635))

(declare-fun m!1110741 () Bool)

(assert (=> mapNonEmpty!47778 m!1110741))

(declare-fun b_lambda!21273 () Bool)

(assert (= b_lambda!21263 (or (and start!100716 b_free!25911) b_lambda!21273)))

(declare-fun b_lambda!21275 () Bool)

(assert (= b_lambda!21269 (or (and start!100716 b_free!25911) b_lambda!21275)))

(declare-fun b_lambda!21277 () Bool)

(assert (= b_lambda!21259 (or (and start!100716 b_free!25911) b_lambda!21277)))

(declare-fun b_lambda!21279 () Bool)

(assert (= b_lambda!21255 (or (and start!100716 b_free!25911) b_lambda!21279)))

(declare-fun b_lambda!21281 () Bool)

(assert (= b_lambda!21271 (or (and start!100716 b_free!25911) b_lambda!21281)))

(declare-fun b_lambda!21283 () Bool)

(assert (= b_lambda!21257 (or (and start!100716 b_free!25911) b_lambda!21283)))

(declare-fun b_lambda!21285 () Bool)

(assert (= b_lambda!21265 (or (and start!100716 b_free!25911) b_lambda!21285)))

(declare-fun b_lambda!21287 () Bool)

(assert (= b_lambda!21267 (or (and start!100716 b_free!25911) b_lambda!21287)))

(declare-fun b_lambda!21289 () Bool)

(assert (= b_lambda!21261 (or (and start!100716 b_free!25911) b_lambda!21289)))

(check-sat (not b!1204626) (not d!132761) (not b!1204617) (not bm!58267) (not b!1204530) (not b!1204489) (not b_lambda!21279) (not b_lambda!21283) (not b!1204554) (not b!1204599) (not d!132715) (not b!1204563) (not bm!58260) (not b!1204601) (not b!1204606) (not d!132743) (not d!132725) (not b!1204525) (not b!1204496) (not b_lambda!21277) (not b!1204578) (not b_lambda!21281) (not b!1204531) (not b!1204494) (not b!1204620) (not b!1204564) (not b!1204590) (not d!132753) (not b!1204600) (not b!1204521) (not b!1204613) (not d!132739) (not b!1204529) (not b!1204491) (not b!1204522) (not d!132727) (not b!1204604) (not d!132737) (not b!1204577) (not b!1204608) (not d!132719) (not b!1204612) (not b!1204596) (not bm!58265) (not b!1204555) (not b!1204493) (not b_lambda!21253) (not d!132717) (not b!1204624) (not b!1204614) (not b!1204594) (not b!1204625) (not b_next!25911) (not b!1204605) b_and!42807 tp_is_empty!30615 (not b!1204478) (not b!1204488) (not d!132759) (not b!1204597) (not b!1204623) (not bm!58264) (not b!1204589) (not bm!58263) (not b!1204562) (not b!1204553) (not b_lambda!21273) (not d!132733) (not b!1204543) (not d!132729) (not d!132713) (not b_lambda!21275) (not b_lambda!21289) (not b!1204486) (not bm!58256) (not bm!58266) (not b!1204558) (not b!1204616) (not b!1204477) (not b!1204523) (not b!1204611) (not b!1204618) (not b!1204556) (not b_lambda!21287) (not bm!58250) (not b!1204528) (not d!132747) (not bm!58257) (not b!1204490) (not b_lambda!21285) (not b!1204538) (not b!1204561) (not bm!58255) (not mapNonEmpty!47778) (not b!1204580))
(check-sat b_and!42807 (not b_next!25911))
