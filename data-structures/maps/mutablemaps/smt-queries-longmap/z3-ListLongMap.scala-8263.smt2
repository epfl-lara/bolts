; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100564 () Bool)

(assert start!100564)

(declare-fun b_free!25851 () Bool)

(declare-fun b_next!25851 () Bool)

(assert (=> start!100564 (= b_free!25851 (not b_next!25851))))

(declare-fun tp!90544 () Bool)

(declare-fun b_and!42603 () Bool)

(assert (=> start!100564 (= tp!90544 b_and!42603)))

(declare-fun b!1201304 () Bool)

(declare-fun e!682224 () Bool)

(declare-fun tp_is_empty!30555 () Bool)

(assert (=> b!1201304 (= e!682224 tp_is_empty!30555)))

(declare-fun b!1201305 () Bool)

(declare-fun e!682225 () Bool)

(declare-fun e!682234 () Bool)

(assert (=> b!1201305 (= e!682225 (not e!682234))))

(declare-fun res!799784 () Bool)

(assert (=> b!1201305 (=> res!799784 e!682234)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1201305 (= res!799784 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!77862 0))(
  ( (array!77863 (arr!37572 (Array (_ BitVec 32) (_ BitVec 64))) (size!38109 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77862)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1201305 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39750 0))(
  ( (Unit!39751) )
))
(declare-fun lt!544364 () Unit!39750)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77862 (_ BitVec 64) (_ BitVec 32)) Unit!39750)

(assert (=> b!1201305 (= lt!544364 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-datatypes ((V!45867 0))(
  ( (V!45868 (val!15334 Int)) )
))
(declare-fun zeroValue!944 () V!45867)

(declare-fun c!117454 () Bool)

(declare-datatypes ((tuple2!19778 0))(
  ( (tuple2!19779 (_1!9899 (_ BitVec 64)) (_2!9899 V!45867)) )
))
(declare-datatypes ((List!26610 0))(
  ( (Nil!26607) (Cons!26606 (h!27815 tuple2!19778) (t!39448 List!26610)) )
))
(declare-datatypes ((ListLongMap!17759 0))(
  ( (ListLongMap!17760 (toList!8895 List!26610)) )
))
(declare-fun lt!544363 () ListLongMap!17759)

(declare-fun bm!57408 () Bool)

(declare-fun call!57414 () Unit!39750)

(declare-fun lt!544362 () ListLongMap!17759)

(declare-fun minValue!944 () V!45867)

(declare-fun c!117453 () Bool)

(declare-fun addStillContains!996 (ListLongMap!17759 (_ BitVec 64) V!45867 (_ BitVec 64)) Unit!39750)

(assert (=> bm!57408 (= call!57414 (addStillContains!996 (ite c!117453 lt!544363 lt!544362) (ite c!117453 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117454 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117453 minValue!944 (ite c!117454 zeroValue!944 minValue!944)) k0!934))))

(declare-fun bm!57409 () Bool)

(declare-fun call!57416 () Unit!39750)

(assert (=> bm!57409 (= call!57416 call!57414)))

(declare-fun b!1201306 () Bool)

(declare-fun e!682229 () Bool)

(assert (=> b!1201306 (= e!682229 true)))

(declare-fun lt!544360 () Unit!39750)

(declare-fun e!682232 () Unit!39750)

(assert (=> b!1201306 (= lt!544360 e!682232)))

(declare-fun lt!544369 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1201306 (= c!117453 (and (not lt!544369) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1201306 (= lt!544369 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun call!57418 () ListLongMap!17759)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14568 0))(
  ( (ValueCellFull!14568 (v!17973 V!45867)) (EmptyCell!14568) )
))
(declare-datatypes ((array!77864 0))(
  ( (array!77865 (arr!37573 (Array (_ BitVec 32) ValueCell!14568)) (size!38110 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77864)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!57410 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5307 (array!77862 array!77864 (_ BitVec 32) (_ BitVec 32) V!45867 V!45867 (_ BitVec 32) Int) ListLongMap!17759)

(assert (=> bm!57410 (= call!57418 (getCurrentListMapNoExtraKeys!5307 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57411 () Bool)

(declare-fun lt!544367 () array!77864)

(declare-fun lt!544359 () array!77862)

(declare-fun call!57417 () ListLongMap!17759)

(assert (=> bm!57411 (= call!57417 (getCurrentListMapNoExtraKeys!5307 lt!544359 lt!544367 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201307 () Bool)

(declare-fun e!682233 () Bool)

(assert (=> b!1201307 (= e!682233 e!682229)))

(declare-fun res!799780 () Bool)

(assert (=> b!1201307 (=> res!799780 e!682229)))

(declare-fun contains!6896 (ListLongMap!17759 (_ BitVec 64)) Bool)

(assert (=> b!1201307 (= res!799780 (not (contains!6896 lt!544362 k0!934)))))

(assert (=> b!1201307 (= lt!544362 (getCurrentListMapNoExtraKeys!5307 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201308 () Bool)

(declare-fun call!57411 () Bool)

(assert (=> b!1201308 call!57411))

(declare-fun lt!544361 () Unit!39750)

(assert (=> b!1201308 (= lt!544361 call!57416)))

(declare-fun e!682223 () Unit!39750)

(assert (=> b!1201308 (= e!682223 lt!544361)))

(declare-fun b!1201309 () Bool)

(declare-fun c!117452 () Bool)

(assert (=> b!1201309 (= c!117452 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544369))))

(declare-fun e!682230 () Unit!39750)

(assert (=> b!1201309 (= e!682223 e!682230)))

(declare-fun b!1201310 () Bool)

(declare-fun res!799781 () Bool)

(declare-fun e!682222 () Bool)

(assert (=> b!1201310 (=> (not res!799781) (not e!682222))))

(assert (=> b!1201310 (= res!799781 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38109 _keys!1208))))))

(declare-fun b!1201311 () Bool)

(declare-fun res!799789 () Bool)

(assert (=> b!1201311 (=> (not res!799789) (not e!682222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77862 (_ BitVec 32)) Bool)

(assert (=> b!1201311 (= res!799789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!57412 () Bool)

(declare-fun call!57413 () ListLongMap!17759)

(declare-fun call!57415 () ListLongMap!17759)

(assert (=> bm!57412 (= call!57413 call!57415)))

(declare-fun e!682227 () Bool)

(declare-fun b!1201312 () Bool)

(declare-fun -!1818 (ListLongMap!17759 (_ BitVec 64)) ListLongMap!17759)

(assert (=> b!1201312 (= e!682227 (= call!57417 (-!1818 call!57418 k0!934)))))

(declare-fun b!1201313 () Bool)

(declare-fun res!799791 () Bool)

(assert (=> b!1201313 (=> (not res!799791) (not e!682225))))

(declare-datatypes ((List!26611 0))(
  ( (Nil!26608) (Cons!26607 (h!27816 (_ BitVec 64)) (t!39449 List!26611)) )
))
(declare-fun arrayNoDuplicates!0 (array!77862 (_ BitVec 32) List!26611) Bool)

(assert (=> b!1201313 (= res!799791 (arrayNoDuplicates!0 lt!544359 #b00000000000000000000000000000000 Nil!26608))))

(declare-fun b!1201314 () Bool)

(declare-fun Unit!39752 () Unit!39750)

(assert (=> b!1201314 (= e!682230 Unit!39752)))

(declare-fun b!1201315 () Bool)

(declare-fun e!682226 () Bool)

(declare-fun mapRes!47675 () Bool)

(assert (=> b!1201315 (= e!682226 (and e!682224 mapRes!47675))))

(declare-fun condMapEmpty!47675 () Bool)

(declare-fun mapDefault!47675 () ValueCell!14568)

(assert (=> b!1201315 (= condMapEmpty!47675 (= (arr!37573 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14568)) mapDefault!47675)))))

(declare-fun b!1201316 () Bool)

(declare-fun res!799785 () Bool)

(assert (=> b!1201316 (=> (not res!799785) (not e!682222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1201316 (= res!799785 (validKeyInArray!0 k0!934))))

(declare-fun res!799782 () Bool)

(assert (=> start!100564 (=> (not res!799782) (not e!682222))))

(assert (=> start!100564 (= res!799782 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38109 _keys!1208))))))

(assert (=> start!100564 e!682222))

(assert (=> start!100564 tp_is_empty!30555))

(declare-fun array_inv!28524 (array!77862) Bool)

(assert (=> start!100564 (array_inv!28524 _keys!1208)))

(assert (=> start!100564 true))

(assert (=> start!100564 tp!90544))

(declare-fun array_inv!28525 (array!77864) Bool)

(assert (=> start!100564 (and (array_inv!28525 _values!996) e!682226)))

(declare-fun b!1201317 () Bool)

(assert (=> b!1201317 (= e!682232 e!682223)))

(assert (=> b!1201317 (= c!117454 (and (not lt!544369) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1201318 () Bool)

(declare-fun e!682231 () Bool)

(assert (=> b!1201318 (= e!682234 e!682231)))

(declare-fun res!799787 () Bool)

(assert (=> b!1201318 (=> res!799787 e!682231)))

(assert (=> b!1201318 (= res!799787 (not (= from!1455 i!673)))))

(declare-fun lt!544366 () ListLongMap!17759)

(assert (=> b!1201318 (= lt!544366 (getCurrentListMapNoExtraKeys!5307 lt!544359 lt!544367 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3235 (Int (_ BitVec 64)) V!45867)

(assert (=> b!1201318 (= lt!544367 (array!77865 (store (arr!37573 _values!996) i!673 (ValueCellFull!14568 (dynLambda!3235 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38110 _values!996)))))

(declare-fun lt!544372 () ListLongMap!17759)

(assert (=> b!1201318 (= lt!544372 (getCurrentListMapNoExtraKeys!5307 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1201319 () Bool)

(assert (=> b!1201319 (= e!682231 e!682233)))

(declare-fun res!799786 () Bool)

(assert (=> b!1201319 (=> res!799786 e!682233)))

(assert (=> b!1201319 (= res!799786 (not (= (select (arr!37572 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1201319 e!682227))

(declare-fun c!117451 () Bool)

(assert (=> b!1201319 (= c!117451 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!544370 () Unit!39750)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1022 (array!77862 array!77864 (_ BitVec 32) (_ BitVec 32) V!45867 V!45867 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39750)

(assert (=> b!1201319 (= lt!544370 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1022 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201320 () Bool)

(declare-fun res!799779 () Bool)

(assert (=> b!1201320 (=> (not res!799779) (not e!682222))))

(assert (=> b!1201320 (= res!799779 (and (= (size!38110 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38109 _keys!1208) (size!38110 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1201321 () Bool)

(declare-fun res!799783 () Bool)

(assert (=> b!1201321 (=> (not res!799783) (not e!682222))))

(assert (=> b!1201321 (= res!799783 (= (select (arr!37572 _keys!1208) i!673) k0!934))))

(declare-fun b!1201322 () Bool)

(declare-fun lt!544365 () Unit!39750)

(assert (=> b!1201322 (= e!682230 lt!544365)))

(assert (=> b!1201322 (= lt!544365 call!57416)))

(assert (=> b!1201322 call!57411))

(declare-fun bm!57413 () Bool)

(declare-fun call!57412 () Bool)

(assert (=> bm!57413 (= call!57411 call!57412)))

(declare-fun mapIsEmpty!47675 () Bool)

(assert (=> mapIsEmpty!47675 mapRes!47675))

(declare-fun b!1201323 () Bool)

(declare-fun res!799788 () Bool)

(assert (=> b!1201323 (=> (not res!799788) (not e!682222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1201323 (= res!799788 (validMask!0 mask!1564))))

(declare-fun b!1201324 () Bool)

(declare-fun lt!544371 () Unit!39750)

(assert (=> b!1201324 (= e!682232 lt!544371)))

(declare-fun lt!544368 () Unit!39750)

(assert (=> b!1201324 (= lt!544368 (addStillContains!996 lt!544362 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1201324 (= lt!544363 call!57415)))

(assert (=> b!1201324 call!57412))

(assert (=> b!1201324 (= lt!544371 call!57414)))

(declare-fun +!3936 (ListLongMap!17759 tuple2!19778) ListLongMap!17759)

(assert (=> b!1201324 (contains!6896 (+!3936 lt!544363 (tuple2!19779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun bm!57414 () Bool)

(assert (=> bm!57414 (= call!57415 (+!3936 lt!544362 (ite (or c!117453 c!117454) (tuple2!19779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1201325 () Bool)

(declare-fun e!682228 () Bool)

(assert (=> b!1201325 (= e!682228 tp_is_empty!30555)))

(declare-fun bm!57415 () Bool)

(assert (=> bm!57415 (= call!57412 (contains!6896 (ite c!117453 lt!544363 call!57413) k0!934))))

(declare-fun b!1201326 () Bool)

(assert (=> b!1201326 (= e!682222 e!682225)))

(declare-fun res!799778 () Bool)

(assert (=> b!1201326 (=> (not res!799778) (not e!682225))))

(assert (=> b!1201326 (= res!799778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544359 mask!1564))))

(assert (=> b!1201326 (= lt!544359 (array!77863 (store (arr!37572 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38109 _keys!1208)))))

(declare-fun b!1201327 () Bool)

(declare-fun res!799790 () Bool)

(assert (=> b!1201327 (=> (not res!799790) (not e!682222))))

(assert (=> b!1201327 (= res!799790 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26608))))

(declare-fun b!1201328 () Bool)

(assert (=> b!1201328 (= e!682227 (= call!57417 call!57418))))

(declare-fun mapNonEmpty!47675 () Bool)

(declare-fun tp!90543 () Bool)

(assert (=> mapNonEmpty!47675 (= mapRes!47675 (and tp!90543 e!682228))))

(declare-fun mapRest!47675 () (Array (_ BitVec 32) ValueCell!14568))

(declare-fun mapValue!47675 () ValueCell!14568)

(declare-fun mapKey!47675 () (_ BitVec 32))

(assert (=> mapNonEmpty!47675 (= (arr!37573 _values!996) (store mapRest!47675 mapKey!47675 mapValue!47675))))

(assert (= (and start!100564 res!799782) b!1201323))

(assert (= (and b!1201323 res!799788) b!1201320))

(assert (= (and b!1201320 res!799779) b!1201311))

(assert (= (and b!1201311 res!799789) b!1201327))

(assert (= (and b!1201327 res!799790) b!1201310))

(assert (= (and b!1201310 res!799781) b!1201316))

(assert (= (and b!1201316 res!799785) b!1201321))

(assert (= (and b!1201321 res!799783) b!1201326))

(assert (= (and b!1201326 res!799778) b!1201313))

(assert (= (and b!1201313 res!799791) b!1201305))

(assert (= (and b!1201305 (not res!799784)) b!1201318))

(assert (= (and b!1201318 (not res!799787)) b!1201319))

(assert (= (and b!1201319 c!117451) b!1201312))

(assert (= (and b!1201319 (not c!117451)) b!1201328))

(assert (= (or b!1201312 b!1201328) bm!57410))

(assert (= (or b!1201312 b!1201328) bm!57411))

(assert (= (and b!1201319 (not res!799786)) b!1201307))

(assert (= (and b!1201307 (not res!799780)) b!1201306))

(assert (= (and b!1201306 c!117453) b!1201324))

(assert (= (and b!1201306 (not c!117453)) b!1201317))

(assert (= (and b!1201317 c!117454) b!1201308))

(assert (= (and b!1201317 (not c!117454)) b!1201309))

(assert (= (and b!1201309 c!117452) b!1201322))

(assert (= (and b!1201309 (not c!117452)) b!1201314))

(assert (= (or b!1201308 b!1201322) bm!57409))

(assert (= (or b!1201308 b!1201322) bm!57412))

(assert (= (or b!1201308 b!1201322) bm!57413))

(assert (= (or b!1201324 bm!57413) bm!57415))

(assert (= (or b!1201324 bm!57409) bm!57408))

(assert (= (or b!1201324 bm!57412) bm!57414))

(assert (= (and b!1201315 condMapEmpty!47675) mapIsEmpty!47675))

(assert (= (and b!1201315 (not condMapEmpty!47675)) mapNonEmpty!47675))

(get-info :version)

(assert (= (and mapNonEmpty!47675 ((_ is ValueCellFull!14568) mapValue!47675)) b!1201325))

(assert (= (and b!1201315 ((_ is ValueCellFull!14568) mapDefault!47675)) b!1201304))

(assert (= start!100564 b!1201315))

(declare-fun b_lambda!21065 () Bool)

(assert (=> (not b_lambda!21065) (not b!1201318)))

(declare-fun t!39447 () Bool)

(declare-fun tb!10659 () Bool)

(assert (=> (and start!100564 (= defaultEntry!1004 defaultEntry!1004) t!39447) tb!10659))

(declare-fun result!21887 () Bool)

(assert (=> tb!10659 (= result!21887 tp_is_empty!30555)))

(assert (=> b!1201318 t!39447))

(declare-fun b_and!42605 () Bool)

(assert (= b_and!42603 (and (=> t!39447 result!21887) b_and!42605)))

(declare-fun m!1107479 () Bool)

(assert (=> bm!57415 m!1107479))

(declare-fun m!1107481 () Bool)

(assert (=> start!100564 m!1107481))

(declare-fun m!1107483 () Bool)

(assert (=> start!100564 m!1107483))

(declare-fun m!1107485 () Bool)

(assert (=> b!1201321 m!1107485))

(declare-fun m!1107487 () Bool)

(assert (=> bm!57410 m!1107487))

(declare-fun m!1107489 () Bool)

(assert (=> bm!57408 m!1107489))

(declare-fun m!1107491 () Bool)

(assert (=> b!1201323 m!1107491))

(declare-fun m!1107493 () Bool)

(assert (=> bm!57414 m!1107493))

(declare-fun m!1107495 () Bool)

(assert (=> b!1201311 m!1107495))

(declare-fun m!1107497 () Bool)

(assert (=> b!1201319 m!1107497))

(declare-fun m!1107499 () Bool)

(assert (=> b!1201319 m!1107499))

(declare-fun m!1107501 () Bool)

(assert (=> b!1201312 m!1107501))

(declare-fun m!1107503 () Bool)

(assert (=> mapNonEmpty!47675 m!1107503))

(declare-fun m!1107505 () Bool)

(assert (=> b!1201326 m!1107505))

(declare-fun m!1107507 () Bool)

(assert (=> b!1201326 m!1107507))

(declare-fun m!1107509 () Bool)

(assert (=> b!1201324 m!1107509))

(declare-fun m!1107511 () Bool)

(assert (=> b!1201324 m!1107511))

(assert (=> b!1201324 m!1107511))

(declare-fun m!1107513 () Bool)

(assert (=> b!1201324 m!1107513))

(declare-fun m!1107515 () Bool)

(assert (=> b!1201313 m!1107515))

(declare-fun m!1107517 () Bool)

(assert (=> b!1201316 m!1107517))

(declare-fun m!1107519 () Bool)

(assert (=> bm!57411 m!1107519))

(declare-fun m!1107521 () Bool)

(assert (=> b!1201305 m!1107521))

(declare-fun m!1107523 () Bool)

(assert (=> b!1201305 m!1107523))

(declare-fun m!1107525 () Bool)

(assert (=> b!1201307 m!1107525))

(assert (=> b!1201307 m!1107487))

(declare-fun m!1107527 () Bool)

(assert (=> b!1201327 m!1107527))

(declare-fun m!1107529 () Bool)

(assert (=> b!1201318 m!1107529))

(declare-fun m!1107531 () Bool)

(assert (=> b!1201318 m!1107531))

(declare-fun m!1107533 () Bool)

(assert (=> b!1201318 m!1107533))

(declare-fun m!1107535 () Bool)

(assert (=> b!1201318 m!1107535))

(check-sat (not bm!57410) (not b_lambda!21065) (not bm!57414) (not bm!57411) tp_is_empty!30555 (not b!1201323) (not b!1201312) (not mapNonEmpty!47675) (not b!1201305) (not b!1201326) (not b!1201324) (not b!1201313) (not bm!57408) b_and!42605 (not b_next!25851) (not b!1201319) (not start!100564) (not bm!57415) (not b!1201318) (not b!1201316) (not b!1201311) (not b!1201327) (not b!1201307))
(check-sat b_and!42605 (not b_next!25851))
