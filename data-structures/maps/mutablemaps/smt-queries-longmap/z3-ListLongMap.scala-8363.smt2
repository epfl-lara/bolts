; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101798 () Bool)

(assert start!101798)

(declare-fun b_free!26451 () Bool)

(declare-fun b_next!26451 () Bool)

(assert (=> start!101798 (= b_free!26451 (not b_next!26451))))

(declare-fun tp!92400 () Bool)

(declare-fun b_and!44173 () Bool)

(assert (=> start!101798 (= tp!92400 b_and!44173)))

(declare-fun b!1225367 () Bool)

(declare-fun res!814406 () Bool)

(declare-fun e!696005 () Bool)

(assert (=> b!1225367 (=> (not res!814406) (not e!696005))))

(declare-datatypes ((array!79068 0))(
  ( (array!79069 (arr!38157 (Array (_ BitVec 32) (_ BitVec 64))) (size!38694 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79068)

(declare-datatypes ((List!27114 0))(
  ( (Nil!27111) (Cons!27110 (h!28319 (_ BitVec 64)) (t!40552 List!27114)) )
))
(declare-fun arrayNoDuplicates!0 (array!79068 (_ BitVec 32) List!27114) Bool)

(assert (=> b!1225367 (= res!814406 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27111))))

(declare-fun b!1225368 () Bool)

(declare-fun e!696004 () Bool)

(declare-fun tp_is_empty!31155 () Bool)

(assert (=> b!1225368 (= e!696004 tp_is_empty!31155)))

(declare-datatypes ((V!46667 0))(
  ( (V!46668 (val!15634 Int)) )
))
(declare-datatypes ((tuple2!20304 0))(
  ( (tuple2!20305 (_1!10162 (_ BitVec 64)) (_2!10162 V!46667)) )
))
(declare-datatypes ((List!27115 0))(
  ( (Nil!27112) (Cons!27111 (h!28320 tuple2!20304) (t!40553 List!27115)) )
))
(declare-datatypes ((ListLongMap!18285 0))(
  ( (ListLongMap!18286 (toList!9158 List!27115)) )
))
(declare-fun lt!558355 () ListLongMap!18285)

(declare-fun e!696007 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1225369 () Bool)

(declare-fun lt!558341 () ListLongMap!18285)

(declare-fun -!1994 (ListLongMap!18285 (_ BitVec 64)) ListLongMap!18285)

(assert (=> b!1225369 (= e!696007 (= lt!558341 (-!1994 lt!558355 k0!934)))))

(declare-fun lt!558351 () ListLongMap!18285)

(declare-fun lt!558350 () ListLongMap!18285)

(assert (=> b!1225369 (= (-!1994 lt!558351 k0!934) lt!558350)))

(declare-fun lt!558352 () V!46667)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!558346 () ListLongMap!18285)

(declare-datatypes ((Unit!40555 0))(
  ( (Unit!40556) )
))
(declare-fun lt!558357 () Unit!40555)

(declare-fun addRemoveCommutativeForDiffKeys!233 (ListLongMap!18285 (_ BitVec 64) V!46667 (_ BitVec 64)) Unit!40555)

(assert (=> b!1225369 (= lt!558357 (addRemoveCommutativeForDiffKeys!233 lt!558346 (select (arr!38157 _keys!1208) from!1455) lt!558352 k0!934))))

(declare-fun lt!558353 () ListLongMap!18285)

(declare-fun lt!558354 () ListLongMap!18285)

(assert (=> b!1225369 (and (= lt!558355 lt!558351) (= lt!558354 lt!558353))))

(declare-fun lt!558348 () tuple2!20304)

(declare-fun +!4118 (ListLongMap!18285 tuple2!20304) ListLongMap!18285)

(assert (=> b!1225369 (= lt!558351 (+!4118 lt!558346 lt!558348))))

(assert (=> b!1225369 (not (= (select (arr!38157 _keys!1208) from!1455) k0!934))))

(declare-fun lt!558340 () Unit!40555)

(declare-fun e!696011 () Unit!40555)

(assert (=> b!1225369 (= lt!558340 e!696011)))

(declare-fun c!120441 () Bool)

(assert (=> b!1225369 (= c!120441 (= (select (arr!38157 _keys!1208) from!1455) k0!934))))

(declare-fun e!696002 () Bool)

(assert (=> b!1225369 e!696002))

(declare-fun res!814399 () Bool)

(assert (=> b!1225369 (=> (not res!814399) (not e!696002))))

(assert (=> b!1225369 (= res!814399 (= lt!558341 lt!558350))))

(assert (=> b!1225369 (= lt!558350 (+!4118 lt!558354 lt!558348))))

(assert (=> b!1225369 (= lt!558348 (tuple2!20305 (select (arr!38157 _keys!1208) from!1455) lt!558352))))

(declare-datatypes ((ValueCell!14868 0))(
  ( (ValueCellFull!14868 (v!18297 V!46667)) (EmptyCell!14868) )
))
(declare-datatypes ((array!79070 0))(
  ( (array!79071 (arr!38158 (Array (_ BitVec 32) ValueCell!14868)) (size!38695 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79070)

(declare-fun lt!558358 () V!46667)

(declare-fun get!19540 (ValueCell!14868 V!46667) V!46667)

(assert (=> b!1225369 (= lt!558352 (get!19540 (select (arr!38158 _values!996) from!1455) lt!558358))))

(declare-fun res!814408 () Bool)

(assert (=> start!101798 (=> (not res!814408) (not e!696005))))

(assert (=> start!101798 (= res!814408 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38694 _keys!1208))))))

(assert (=> start!101798 e!696005))

(assert (=> start!101798 tp_is_empty!31155))

(declare-fun array_inv!28940 (array!79068) Bool)

(assert (=> start!101798 (array_inv!28940 _keys!1208)))

(assert (=> start!101798 true))

(assert (=> start!101798 tp!92400))

(declare-fun e!696012 () Bool)

(declare-fun array_inv!28941 (array!79070) Bool)

(assert (=> start!101798 (and (array_inv!28941 _values!996) e!696012)))

(declare-fun b!1225370 () Bool)

(declare-fun e!696008 () Bool)

(declare-fun e!696006 () Bool)

(assert (=> b!1225370 (= e!696008 (not e!696006))))

(declare-fun res!814407 () Bool)

(assert (=> b!1225370 (=> res!814407 e!696006)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1225370 (= res!814407 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!79068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225370 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!558343 () Unit!40555)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79068 (_ BitVec 64) (_ BitVec 32)) Unit!40555)

(assert (=> b!1225370 (= lt!558343 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1225371 () Bool)

(declare-fun Unit!40557 () Unit!40555)

(assert (=> b!1225371 (= e!696011 Unit!40557)))

(declare-fun lt!558347 () Unit!40555)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79068 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40555)

(assert (=> b!1225371 (= lt!558347 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1225371 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!558345 () Unit!40555)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79068 (_ BitVec 32) (_ BitVec 32)) Unit!40555)

(assert (=> b!1225371 (= lt!558345 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1225371 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27111)))

(declare-fun lt!558356 () Unit!40555)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79068 (_ BitVec 64) (_ BitVec 32) List!27114) Unit!40555)

(assert (=> b!1225371 (= lt!558356 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27111))))

(assert (=> b!1225371 false))

(declare-fun b!1225372 () Bool)

(declare-fun e!696010 () Bool)

(assert (=> b!1225372 (= e!696002 e!696010)))

(declare-fun res!814410 () Bool)

(assert (=> b!1225372 (=> res!814410 e!696010)))

(assert (=> b!1225372 (= res!814410 (not (= (select (arr!38157 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1225373 () Bool)

(declare-fun e!696009 () Bool)

(assert (=> b!1225373 (= e!696009 e!696007)))

(declare-fun res!814402 () Bool)

(assert (=> b!1225373 (=> res!814402 e!696007)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225373 (= res!814402 (not (validKeyInArray!0 (select (arr!38157 _keys!1208) from!1455))))))

(assert (=> b!1225373 (= lt!558353 lt!558354)))

(assert (=> b!1225373 (= lt!558354 (-!1994 lt!558346 k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!558344 () array!79068)

(declare-fun minValue!944 () V!46667)

(declare-fun zeroValue!944 () V!46667)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!558342 () array!79070)

(declare-fun getCurrentListMapNoExtraKeys!5554 (array!79068 array!79070 (_ BitVec 32) (_ BitVec 32) V!46667 V!46667 (_ BitVec 32) Int) ListLongMap!18285)

(assert (=> b!1225373 (= lt!558353 (getCurrentListMapNoExtraKeys!5554 lt!558344 lt!558342 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1225373 (= lt!558346 (getCurrentListMapNoExtraKeys!5554 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!558349 () Unit!40555)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1194 (array!79068 array!79070 (_ BitVec 32) (_ BitVec 32) V!46667 V!46667 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40555)

(assert (=> b!1225373 (= lt!558349 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1194 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48631 () Bool)

(declare-fun mapRes!48631 () Bool)

(assert (=> mapIsEmpty!48631 mapRes!48631))

(declare-fun b!1225374 () Bool)

(assert (=> b!1225374 (= e!696006 e!696009)))

(declare-fun res!814405 () Bool)

(assert (=> b!1225374 (=> res!814405 e!696009)))

(assert (=> b!1225374 (= res!814405 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1225374 (= lt!558341 (getCurrentListMapNoExtraKeys!5554 lt!558344 lt!558342 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1225374 (= lt!558342 (array!79071 (store (arr!38158 _values!996) i!673 (ValueCellFull!14868 lt!558358)) (size!38695 _values!996)))))

(declare-fun dynLambda!3448 (Int (_ BitVec 64)) V!46667)

(assert (=> b!1225374 (= lt!558358 (dynLambda!3448 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1225374 (= lt!558355 (getCurrentListMapNoExtraKeys!5554 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225375 () Bool)

(declare-fun res!814412 () Bool)

(assert (=> b!1225375 (=> (not res!814412) (not e!696005))))

(assert (=> b!1225375 (= res!814412 (and (= (size!38695 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38694 _keys!1208) (size!38695 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225376 () Bool)

(declare-fun res!814413 () Bool)

(assert (=> b!1225376 (=> (not res!814413) (not e!696005))))

(assert (=> b!1225376 (= res!814413 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38694 _keys!1208))))))

(declare-fun b!1225377 () Bool)

(declare-fun res!814411 () Bool)

(assert (=> b!1225377 (=> (not res!814411) (not e!696005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225377 (= res!814411 (validMask!0 mask!1564))))

(declare-fun b!1225378 () Bool)

(assert (=> b!1225378 (= e!696005 e!696008)))

(declare-fun res!814400 () Bool)

(assert (=> b!1225378 (=> (not res!814400) (not e!696008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79068 (_ BitVec 32)) Bool)

(assert (=> b!1225378 (= res!814400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558344 mask!1564))))

(assert (=> b!1225378 (= lt!558344 (array!79069 (store (arr!38157 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38694 _keys!1208)))))

(declare-fun b!1225379 () Bool)

(declare-fun res!814404 () Bool)

(assert (=> b!1225379 (=> (not res!814404) (not e!696005))))

(assert (=> b!1225379 (= res!814404 (validKeyInArray!0 k0!934))))

(declare-fun b!1225380 () Bool)

(assert (=> b!1225380 (= e!696012 (and e!696004 mapRes!48631))))

(declare-fun condMapEmpty!48631 () Bool)

(declare-fun mapDefault!48631 () ValueCell!14868)

(assert (=> b!1225380 (= condMapEmpty!48631 (= (arr!38158 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14868)) mapDefault!48631)))))

(declare-fun b!1225381 () Bool)

(declare-fun e!696003 () Bool)

(assert (=> b!1225381 (= e!696003 tp_is_empty!31155)))

(declare-fun b!1225382 () Bool)

(declare-fun res!814403 () Bool)

(assert (=> b!1225382 (=> (not res!814403) (not e!696005))))

(assert (=> b!1225382 (= res!814403 (= (select (arr!38157 _keys!1208) i!673) k0!934))))

(declare-fun b!1225383 () Bool)

(assert (=> b!1225383 (= e!696010 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1225384 () Bool)

(declare-fun res!814401 () Bool)

(assert (=> b!1225384 (=> (not res!814401) (not e!696005))))

(assert (=> b!1225384 (= res!814401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225385 () Bool)

(declare-fun res!814409 () Bool)

(assert (=> b!1225385 (=> (not res!814409) (not e!696008))))

(assert (=> b!1225385 (= res!814409 (arrayNoDuplicates!0 lt!558344 #b00000000000000000000000000000000 Nil!27111))))

(declare-fun b!1225386 () Bool)

(declare-fun Unit!40558 () Unit!40555)

(assert (=> b!1225386 (= e!696011 Unit!40558)))

(declare-fun mapNonEmpty!48631 () Bool)

(declare-fun tp!92399 () Bool)

(assert (=> mapNonEmpty!48631 (= mapRes!48631 (and tp!92399 e!696003))))

(declare-fun mapRest!48631 () (Array (_ BitVec 32) ValueCell!14868))

(declare-fun mapKey!48631 () (_ BitVec 32))

(declare-fun mapValue!48631 () ValueCell!14868)

(assert (=> mapNonEmpty!48631 (= (arr!38158 _values!996) (store mapRest!48631 mapKey!48631 mapValue!48631))))

(assert (= (and start!101798 res!814408) b!1225377))

(assert (= (and b!1225377 res!814411) b!1225375))

(assert (= (and b!1225375 res!814412) b!1225384))

(assert (= (and b!1225384 res!814401) b!1225367))

(assert (= (and b!1225367 res!814406) b!1225376))

(assert (= (and b!1225376 res!814413) b!1225379))

(assert (= (and b!1225379 res!814404) b!1225382))

(assert (= (and b!1225382 res!814403) b!1225378))

(assert (= (and b!1225378 res!814400) b!1225385))

(assert (= (and b!1225385 res!814409) b!1225370))

(assert (= (and b!1225370 (not res!814407)) b!1225374))

(assert (= (and b!1225374 (not res!814405)) b!1225373))

(assert (= (and b!1225373 (not res!814402)) b!1225369))

(assert (= (and b!1225369 res!814399) b!1225372))

(assert (= (and b!1225372 (not res!814410)) b!1225383))

(assert (= (and b!1225369 c!120441) b!1225371))

(assert (= (and b!1225369 (not c!120441)) b!1225386))

(assert (= (and b!1225380 condMapEmpty!48631) mapIsEmpty!48631))

(assert (= (and b!1225380 (not condMapEmpty!48631)) mapNonEmpty!48631))

(get-info :version)

(assert (= (and mapNonEmpty!48631 ((_ is ValueCellFull!14868) mapValue!48631)) b!1225381))

(assert (= (and b!1225380 ((_ is ValueCellFull!14868) mapDefault!48631)) b!1225368))

(assert (= start!101798 b!1225380))

(declare-fun b_lambda!22441 () Bool)

(assert (=> (not b_lambda!22441) (not b!1225374)))

(declare-fun t!40551 () Bool)

(declare-fun tb!11259 () Bool)

(assert (=> (and start!101798 (= defaultEntry!1004 defaultEntry!1004) t!40551) tb!11259))

(declare-fun result!23123 () Bool)

(assert (=> tb!11259 (= result!23123 tp_is_empty!31155)))

(assert (=> b!1225374 t!40551))

(declare-fun b_and!44175 () Bool)

(assert (= b_and!44173 (and (=> t!40551 result!23123) b_and!44175)))

(declare-fun m!1130515 () Bool)

(assert (=> b!1225370 m!1130515))

(declare-fun m!1130517 () Bool)

(assert (=> b!1225370 m!1130517))

(declare-fun m!1130519 () Bool)

(assert (=> b!1225382 m!1130519))

(declare-fun m!1130521 () Bool)

(assert (=> b!1225367 m!1130521))

(declare-fun m!1130523 () Bool)

(assert (=> b!1225369 m!1130523))

(declare-fun m!1130525 () Bool)

(assert (=> b!1225369 m!1130525))

(declare-fun m!1130527 () Bool)

(assert (=> b!1225369 m!1130527))

(declare-fun m!1130529 () Bool)

(assert (=> b!1225369 m!1130529))

(declare-fun m!1130531 () Bool)

(assert (=> b!1225369 m!1130531))

(declare-fun m!1130533 () Bool)

(assert (=> b!1225369 m!1130533))

(declare-fun m!1130535 () Bool)

(assert (=> b!1225369 m!1130535))

(assert (=> b!1225369 m!1130527))

(declare-fun m!1130537 () Bool)

(assert (=> b!1225369 m!1130537))

(assert (=> b!1225369 m!1130533))

(declare-fun m!1130539 () Bool)

(assert (=> b!1225373 m!1130539))

(declare-fun m!1130541 () Bool)

(assert (=> b!1225373 m!1130541))

(declare-fun m!1130543 () Bool)

(assert (=> b!1225373 m!1130543))

(declare-fun m!1130545 () Bool)

(assert (=> b!1225373 m!1130545))

(assert (=> b!1225373 m!1130527))

(declare-fun m!1130547 () Bool)

(assert (=> b!1225373 m!1130547))

(assert (=> b!1225373 m!1130527))

(declare-fun m!1130549 () Bool)

(assert (=> b!1225379 m!1130549))

(declare-fun m!1130551 () Bool)

(assert (=> b!1225383 m!1130551))

(declare-fun m!1130553 () Bool)

(assert (=> start!101798 m!1130553))

(declare-fun m!1130555 () Bool)

(assert (=> start!101798 m!1130555))

(declare-fun m!1130557 () Bool)

(assert (=> b!1225385 m!1130557))

(declare-fun m!1130559 () Bool)

(assert (=> b!1225377 m!1130559))

(declare-fun m!1130561 () Bool)

(assert (=> mapNonEmpty!48631 m!1130561))

(declare-fun m!1130563 () Bool)

(assert (=> b!1225384 m!1130563))

(assert (=> b!1225372 m!1130527))

(declare-fun m!1130565 () Bool)

(assert (=> b!1225371 m!1130565))

(declare-fun m!1130567 () Bool)

(assert (=> b!1225371 m!1130567))

(declare-fun m!1130569 () Bool)

(assert (=> b!1225371 m!1130569))

(declare-fun m!1130571 () Bool)

(assert (=> b!1225371 m!1130571))

(declare-fun m!1130573 () Bool)

(assert (=> b!1225371 m!1130573))

(declare-fun m!1130575 () Bool)

(assert (=> b!1225378 m!1130575))

(declare-fun m!1130577 () Bool)

(assert (=> b!1225378 m!1130577))

(declare-fun m!1130579 () Bool)

(assert (=> b!1225374 m!1130579))

(declare-fun m!1130581 () Bool)

(assert (=> b!1225374 m!1130581))

(declare-fun m!1130583 () Bool)

(assert (=> b!1225374 m!1130583))

(declare-fun m!1130585 () Bool)

(assert (=> b!1225374 m!1130585))

(check-sat (not b!1225384) (not b!1225385) (not b!1225369) (not b!1225370) (not b!1225367) (not mapNonEmpty!48631) (not b!1225373) (not b!1225383) (not b_next!26451) (not start!101798) (not b_lambda!22441) b_and!44175 (not b!1225371) (not b!1225378) (not b!1225379) (not b!1225374) (not b!1225377) tp_is_empty!31155)
(check-sat b_and!44175 (not b_next!26451))
