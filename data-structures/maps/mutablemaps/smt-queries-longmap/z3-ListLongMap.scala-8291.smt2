; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101056 () Bool)

(assert start!101056)

(declare-fun b_free!26019 () Bool)

(declare-fun b_next!26019 () Bool)

(assert (=> start!101056 (= b_free!26019 (not b_next!26019))))

(declare-fun tp!91074 () Bool)

(declare-fun b_and!43129 () Bool)

(assert (=> start!101056 (= tp!91074 b_and!43129)))

(declare-fun b!1210494 () Bool)

(declare-datatypes ((Unit!40047 0))(
  ( (Unit!40048) )
))
(declare-fun e!687501 () Unit!40047)

(declare-fun lt!549590 () Unit!40047)

(assert (=> b!1210494 (= e!687501 lt!549590)))

(declare-fun call!59670 () Unit!40047)

(assert (=> b!1210494 (= lt!549590 call!59670)))

(declare-fun call!59672 () Bool)

(assert (=> b!1210494 call!59672))

(declare-fun b!1210495 () Bool)

(declare-fun res!804422 () Bool)

(declare-fun e!687506 () Bool)

(assert (=> b!1210495 (=> (not res!804422) (not e!687506))))

(declare-datatypes ((array!78204 0))(
  ( (array!78205 (arr!37735 (Array (_ BitVec 32) (_ BitVec 64))) (size!38272 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78204)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78204 (_ BitVec 32)) Bool)

(assert (=> b!1210495 (= res!804422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1210496 () Bool)

(declare-fun res!804424 () Bool)

(assert (=> b!1210496 (=> (not res!804424) (not e!687506))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1210496 (= res!804424 (= (select (arr!37735 _keys!1208) i!673) k0!934))))

(declare-fun b!1210497 () Bool)

(declare-datatypes ((V!46091 0))(
  ( (V!46092 (val!15418 Int)) )
))
(declare-datatypes ((tuple2!19936 0))(
  ( (tuple2!19937 (_1!9978 (_ BitVec 64)) (_2!9978 V!46091)) )
))
(declare-datatypes ((List!26755 0))(
  ( (Nil!26752) (Cons!26751 (h!27960 tuple2!19936) (t!39761 List!26755)) )
))
(declare-datatypes ((ListLongMap!17917 0))(
  ( (ListLongMap!17918 (toList!8974 List!26755)) )
))
(declare-fun call!59671 () ListLongMap!17917)

(declare-fun contains!6987 (ListLongMap!17917 (_ BitVec 64)) Bool)

(assert (=> b!1210497 (contains!6987 call!59671 k0!934)))

(declare-fun lt!549600 () Unit!40047)

(declare-fun call!59673 () Unit!40047)

(assert (=> b!1210497 (= lt!549600 call!59673)))

(declare-fun call!59668 () Bool)

(assert (=> b!1210497 call!59668))

(declare-fun lt!549604 () ListLongMap!17917)

(declare-fun lt!549605 () ListLongMap!17917)

(declare-fun zeroValue!944 () V!46091)

(declare-fun +!4001 (ListLongMap!17917 tuple2!19936) ListLongMap!17917)

(assert (=> b!1210497 (= lt!549604 (+!4001 lt!549605 (tuple2!19937 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!549599 () Unit!40047)

(declare-fun addStillContains!1064 (ListLongMap!17917 (_ BitVec 64) V!46091 (_ BitVec 64)) Unit!40047)

(assert (=> b!1210497 (= lt!549599 (addStillContains!1064 lt!549605 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!687504 () Unit!40047)

(assert (=> b!1210497 (= e!687504 lt!549600)))

(declare-fun b!1210498 () Bool)

(declare-fun c!119232 () Bool)

(declare-fun lt!549598 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1210498 (= c!119232 (and (not lt!549598) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1210498 (= e!687504 e!687501)))

(declare-fun b!1210500 () Bool)

(declare-fun e!687502 () Unit!40047)

(declare-fun Unit!40049 () Unit!40047)

(assert (=> b!1210500 (= e!687502 Unit!40049)))

(assert (=> b!1210500 (= lt!549598 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119230 () Bool)

(assert (=> b!1210500 (= c!119230 (and (not lt!549598) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!549602 () Unit!40047)

(assert (=> b!1210500 (= lt!549602 e!687504)))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!549601 () Unit!40047)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14652 0))(
  ( (ValueCellFull!14652 (v!18070 V!46091)) (EmptyCell!14652) )
))
(declare-datatypes ((array!78206 0))(
  ( (array!78207 (arr!37736 (Array (_ BitVec 32) ValueCell!14652)) (size!38273 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78206)

(declare-fun minValue!944 () V!46091)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!600 (array!78204 array!78206 (_ BitVec 32) (_ BitVec 32) V!46091 V!46091 (_ BitVec 64) (_ BitVec 32) Int) Unit!40047)

(assert (=> b!1210500 (= lt!549601 (lemmaListMapContainsThenArrayContainsFrom!600 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119229 () Bool)

(assert (=> b!1210500 (= c!119229 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804416 () Bool)

(declare-fun e!687509 () Bool)

(assert (=> b!1210500 (= res!804416 e!687509)))

(declare-fun e!687499 () Bool)

(assert (=> b!1210500 (=> (not res!804416) (not e!687499))))

(assert (=> b!1210500 e!687499))

(declare-fun lt!549596 () Unit!40047)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78204 (_ BitVec 32) (_ BitVec 32)) Unit!40047)

(assert (=> b!1210500 (= lt!549596 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26756 0))(
  ( (Nil!26753) (Cons!26752 (h!27961 (_ BitVec 64)) (t!39762 List!26756)) )
))
(declare-fun arrayNoDuplicates!0 (array!78204 (_ BitVec 32) List!26756) Bool)

(assert (=> b!1210500 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26753)))

(declare-fun lt!549606 () Unit!40047)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78204 (_ BitVec 64) (_ BitVec 32) List!26756) Unit!40047)

(assert (=> b!1210500 (= lt!549606 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26753))))

(assert (=> b!1210500 false))

(declare-fun mapNonEmpty!47953 () Bool)

(declare-fun mapRes!47953 () Bool)

(declare-fun tp!91073 () Bool)

(declare-fun e!687513 () Bool)

(assert (=> mapNonEmpty!47953 (= mapRes!47953 (and tp!91073 e!687513))))

(declare-fun mapValue!47953 () ValueCell!14652)

(declare-fun mapKey!47953 () (_ BitVec 32))

(declare-fun mapRest!47953 () (Array (_ BitVec 32) ValueCell!14652))

(assert (=> mapNonEmpty!47953 (= (arr!37736 _values!996) (store mapRest!47953 mapKey!47953 mapValue!47953))))

(declare-fun mapIsEmpty!47953 () Bool)

(assert (=> mapIsEmpty!47953 mapRes!47953))

(declare-fun b!1210501 () Bool)

(declare-fun tp_is_empty!30723 () Bool)

(assert (=> b!1210501 (= e!687513 tp_is_empty!30723)))

(declare-fun bm!59664 () Bool)

(assert (=> bm!59664 (= call!59671 (+!4001 (ite c!119230 lt!549604 lt!549605) (ite c!119230 (tuple2!19937 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119232 (tuple2!19937 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19937 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1210502 () Bool)

(declare-fun arrayContainsKey!0 (array!78204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1210502 (= e!687509 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1210503 () Bool)

(assert (=> b!1210503 (= e!687509 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!549598) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!59665 () Bool)

(declare-fun call!59669 () ListLongMap!17917)

(assert (=> bm!59665 (= call!59669 call!59671)))

(declare-fun b!1210504 () Bool)

(declare-fun e!687510 () Bool)

(declare-fun e!687505 () Bool)

(assert (=> b!1210504 (= e!687510 (and e!687505 mapRes!47953))))

(declare-fun condMapEmpty!47953 () Bool)

(declare-fun mapDefault!47953 () ValueCell!14652)

(assert (=> b!1210504 (= condMapEmpty!47953 (= (arr!37736 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14652)) mapDefault!47953)))))

(declare-fun bm!59666 () Bool)

(assert (=> bm!59666 (= call!59668 (contains!6987 (ite c!119230 lt!549604 call!59669) k0!934))))

(declare-fun b!1210505 () Bool)

(declare-fun e!687508 () Unit!40047)

(assert (=> b!1210505 (= e!687501 e!687508)))

(declare-fun c!119228 () Bool)

(assert (=> b!1210505 (= c!119228 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!549598))))

(declare-fun b!1210506 () Bool)

(declare-fun res!804419 () Bool)

(assert (=> b!1210506 (=> (not res!804419) (not e!687506))))

(assert (=> b!1210506 (= res!804419 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38272 _keys!1208))))))

(declare-fun bm!59667 () Bool)

(assert (=> bm!59667 (= call!59672 call!59668)))

(declare-fun b!1210507 () Bool)

(declare-fun e!687500 () Bool)

(declare-fun call!59674 () ListLongMap!17917)

(declare-fun call!59667 () ListLongMap!17917)

(assert (=> b!1210507 (= e!687500 (= call!59674 call!59667))))

(declare-fun b!1210508 () Bool)

(declare-fun e!687511 () Bool)

(assert (=> b!1210508 (= e!687506 e!687511)))

(declare-fun res!804421 () Bool)

(assert (=> b!1210508 (=> (not res!804421) (not e!687511))))

(declare-fun lt!549603 () array!78204)

(assert (=> b!1210508 (= res!804421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!549603 mask!1564))))

(assert (=> b!1210508 (= lt!549603 (array!78205 (store (arr!37735 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38272 _keys!1208)))))

(declare-fun b!1210509 () Bool)

(declare-fun Unit!40050 () Unit!40047)

(assert (=> b!1210509 (= e!687508 Unit!40050)))

(declare-fun b!1210510 () Bool)

(declare-fun res!804414 () Bool)

(assert (=> b!1210510 (=> (not res!804414) (not e!687506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1210510 (= res!804414 (validKeyInArray!0 k0!934))))

(declare-fun b!1210511 () Bool)

(declare-fun e!687507 () Bool)

(assert (=> b!1210511 (= e!687511 (not e!687507))))

(declare-fun res!804425 () Bool)

(assert (=> b!1210511 (=> res!804425 e!687507)))

(assert (=> b!1210511 (= res!804425 (bvsgt from!1455 i!673))))

(assert (=> b!1210511 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!549595 () Unit!40047)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78204 (_ BitVec 64) (_ BitVec 32)) Unit!40047)

(assert (=> b!1210511 (= lt!549595 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1210512 () Bool)

(declare-fun res!804420 () Bool)

(assert (=> b!1210512 (=> (not res!804420) (not e!687506))))

(assert (=> b!1210512 (= res!804420 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26753))))

(declare-fun b!1210499 () Bool)

(declare-fun -!1872 (ListLongMap!17917 (_ BitVec 64)) ListLongMap!17917)

(assert (=> b!1210499 (= e!687500 (= call!59674 (-!1872 call!59667 k0!934)))))

(declare-fun res!804417 () Bool)

(assert (=> start!101056 (=> (not res!804417) (not e!687506))))

(assert (=> start!101056 (= res!804417 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38272 _keys!1208))))))

(assert (=> start!101056 e!687506))

(assert (=> start!101056 tp_is_empty!30723))

(declare-fun array_inv!28646 (array!78204) Bool)

(assert (=> start!101056 (array_inv!28646 _keys!1208)))

(assert (=> start!101056 true))

(assert (=> start!101056 tp!91074))

(declare-fun array_inv!28647 (array!78206) Bool)

(assert (=> start!101056 (and (array_inv!28647 _values!996) e!687510)))

(declare-fun e!687514 () Bool)

(declare-fun b!1210513 () Bool)

(assert (=> b!1210513 (= e!687514 (not (contains!6987 lt!549605 (select (arr!37735 _keys!1208) from!1455))))))

(declare-fun lt!549593 () Unit!40047)

(assert (=> b!1210513 (= lt!549593 e!687502)))

(declare-fun c!119231 () Bool)

(assert (=> b!1210513 (= c!119231 (contains!6987 lt!549605 k0!934))))

(declare-fun getCurrentListMapNoExtraKeys!5379 (array!78204 array!78206 (_ BitVec 32) (_ BitVec 32) V!46091 V!46091 (_ BitVec 32) Int) ListLongMap!17917)

(assert (=> b!1210513 (= lt!549605 (getCurrentListMapNoExtraKeys!5379 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210514 () Bool)

(declare-fun Unit!40051 () Unit!40047)

(assert (=> b!1210514 (= e!687502 Unit!40051)))

(declare-fun bm!59668 () Bool)

(declare-fun lt!549597 () array!78206)

(assert (=> bm!59668 (= call!59674 (getCurrentListMapNoExtraKeys!5379 lt!549603 lt!549597 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210515 () Bool)

(assert (=> b!1210515 (= e!687505 tp_is_empty!30723)))

(declare-fun b!1210516 () Bool)

(assert (=> b!1210516 (= e!687499 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59669 () Bool)

(assert (=> bm!59669 (= call!59667 (getCurrentListMapNoExtraKeys!5379 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59670 () Bool)

(assert (=> bm!59670 (= call!59670 call!59673)))

(declare-fun b!1210517 () Bool)

(declare-fun res!804412 () Bool)

(assert (=> b!1210517 (=> (not res!804412) (not e!687506))))

(assert (=> b!1210517 (= res!804412 (and (= (size!38273 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38272 _keys!1208) (size!38273 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1210518 () Bool)

(declare-fun res!804413 () Bool)

(assert (=> b!1210518 (=> (not res!804413) (not e!687511))))

(assert (=> b!1210518 (= res!804413 (arrayNoDuplicates!0 lt!549603 #b00000000000000000000000000000000 Nil!26753))))

(declare-fun b!1210519 () Bool)

(declare-fun res!804415 () Bool)

(assert (=> b!1210519 (=> (not res!804415) (not e!687506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1210519 (= res!804415 (validMask!0 mask!1564))))

(declare-fun b!1210520 () Bool)

(assert (=> b!1210520 call!59672))

(declare-fun lt!549594 () Unit!40047)

(assert (=> b!1210520 (= lt!549594 call!59670)))

(assert (=> b!1210520 (= e!687508 lt!549594)))

(declare-fun b!1210521 () Bool)

(declare-fun e!687503 () Bool)

(assert (=> b!1210521 (= e!687503 e!687514)))

(declare-fun res!804423 () Bool)

(assert (=> b!1210521 (=> res!804423 e!687514)))

(assert (=> b!1210521 (= res!804423 (not (= (select (arr!37735 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1210521 e!687500))

(declare-fun c!119227 () Bool)

(assert (=> b!1210521 (= c!119227 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!549589 () Unit!40047)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1080 (array!78204 array!78206 (_ BitVec 32) (_ BitVec 32) V!46091 V!46091 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40047)

(assert (=> b!1210521 (= lt!549589 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1080 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210522 () Bool)

(assert (=> b!1210522 (= e!687507 e!687503)))

(declare-fun res!804418 () Bool)

(assert (=> b!1210522 (=> res!804418 e!687503)))

(assert (=> b!1210522 (= res!804418 (not (= from!1455 i!673)))))

(declare-fun lt!549591 () ListLongMap!17917)

(assert (=> b!1210522 (= lt!549591 (getCurrentListMapNoExtraKeys!5379 lt!549603 lt!549597 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3295 (Int (_ BitVec 64)) V!46091)

(assert (=> b!1210522 (= lt!549597 (array!78207 (store (arr!37736 _values!996) i!673 (ValueCellFull!14652 (dynLambda!3295 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38273 _values!996)))))

(declare-fun lt!549592 () ListLongMap!17917)

(assert (=> b!1210522 (= lt!549592 (getCurrentListMapNoExtraKeys!5379 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!59671 () Bool)

(assert (=> bm!59671 (= call!59673 (addStillContains!1064 (ite c!119230 lt!549604 lt!549605) (ite c!119230 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119232 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119230 minValue!944 (ite c!119232 zeroValue!944 minValue!944)) k0!934))))

(assert (= (and start!101056 res!804417) b!1210519))

(assert (= (and b!1210519 res!804415) b!1210517))

(assert (= (and b!1210517 res!804412) b!1210495))

(assert (= (and b!1210495 res!804422) b!1210512))

(assert (= (and b!1210512 res!804420) b!1210506))

(assert (= (and b!1210506 res!804419) b!1210510))

(assert (= (and b!1210510 res!804414) b!1210496))

(assert (= (and b!1210496 res!804424) b!1210508))

(assert (= (and b!1210508 res!804421) b!1210518))

(assert (= (and b!1210518 res!804413) b!1210511))

(assert (= (and b!1210511 (not res!804425)) b!1210522))

(assert (= (and b!1210522 (not res!804418)) b!1210521))

(assert (= (and b!1210521 c!119227) b!1210499))

(assert (= (and b!1210521 (not c!119227)) b!1210507))

(assert (= (or b!1210499 b!1210507) bm!59668))

(assert (= (or b!1210499 b!1210507) bm!59669))

(assert (= (and b!1210521 (not res!804423)) b!1210513))

(assert (= (and b!1210513 c!119231) b!1210500))

(assert (= (and b!1210513 (not c!119231)) b!1210514))

(assert (= (and b!1210500 c!119230) b!1210497))

(assert (= (and b!1210500 (not c!119230)) b!1210498))

(assert (= (and b!1210498 c!119232) b!1210494))

(assert (= (and b!1210498 (not c!119232)) b!1210505))

(assert (= (and b!1210505 c!119228) b!1210520))

(assert (= (and b!1210505 (not c!119228)) b!1210509))

(assert (= (or b!1210494 b!1210520) bm!59670))

(assert (= (or b!1210494 b!1210520) bm!59665))

(assert (= (or b!1210494 b!1210520) bm!59667))

(assert (= (or b!1210497 bm!59667) bm!59666))

(assert (= (or b!1210497 bm!59670) bm!59671))

(assert (= (or b!1210497 bm!59665) bm!59664))

(assert (= (and b!1210500 c!119229) b!1210502))

(assert (= (and b!1210500 (not c!119229)) b!1210503))

(assert (= (and b!1210500 res!804416) b!1210516))

(assert (= (and b!1210504 condMapEmpty!47953) mapIsEmpty!47953))

(assert (= (and b!1210504 (not condMapEmpty!47953)) mapNonEmpty!47953))

(get-info :version)

(assert (= (and mapNonEmpty!47953 ((_ is ValueCellFull!14652) mapValue!47953)) b!1210501))

(assert (= (and b!1210504 ((_ is ValueCellFull!14652) mapDefault!47953)) b!1210515))

(assert (= start!101056 b!1210504))

(declare-fun b_lambda!21629 () Bool)

(assert (=> (not b_lambda!21629) (not b!1210522)))

(declare-fun t!39760 () Bool)

(declare-fun tb!10827 () Bool)

(assert (=> (and start!101056 (= defaultEntry!1004 defaultEntry!1004) t!39760) tb!10827))

(declare-fun result!22239 () Bool)

(assert (=> tb!10827 (= result!22239 tp_is_empty!30723)))

(assert (=> b!1210522 t!39760))

(declare-fun b_and!43131 () Bool)

(assert (= b_and!43129 (and (=> t!39760 result!22239) b_and!43131)))

(declare-fun m!1116009 () Bool)

(assert (=> b!1210522 m!1116009))

(declare-fun m!1116011 () Bool)

(assert (=> b!1210522 m!1116011))

(declare-fun m!1116013 () Bool)

(assert (=> b!1210522 m!1116013))

(declare-fun m!1116015 () Bool)

(assert (=> b!1210522 m!1116015))

(declare-fun m!1116017 () Bool)

(assert (=> bm!59666 m!1116017))

(declare-fun m!1116019 () Bool)

(assert (=> b!1210510 m!1116019))

(declare-fun m!1116021 () Bool)

(assert (=> bm!59668 m!1116021))

(declare-fun m!1116023 () Bool)

(assert (=> b!1210496 m!1116023))

(declare-fun m!1116025 () Bool)

(assert (=> b!1210513 m!1116025))

(assert (=> b!1210513 m!1116025))

(declare-fun m!1116027 () Bool)

(assert (=> b!1210513 m!1116027))

(declare-fun m!1116029 () Bool)

(assert (=> b!1210513 m!1116029))

(declare-fun m!1116031 () Bool)

(assert (=> b!1210513 m!1116031))

(declare-fun m!1116033 () Bool)

(assert (=> bm!59664 m!1116033))

(declare-fun m!1116035 () Bool)

(assert (=> bm!59671 m!1116035))

(assert (=> bm!59669 m!1116031))

(assert (=> b!1210521 m!1116025))

(declare-fun m!1116037 () Bool)

(assert (=> b!1210521 m!1116037))

(declare-fun m!1116039 () Bool)

(assert (=> b!1210512 m!1116039))

(declare-fun m!1116041 () Bool)

(assert (=> b!1210508 m!1116041))

(declare-fun m!1116043 () Bool)

(assert (=> b!1210508 m!1116043))

(declare-fun m!1116045 () Bool)

(assert (=> b!1210495 m!1116045))

(declare-fun m!1116047 () Bool)

(assert (=> b!1210511 m!1116047))

(declare-fun m!1116049 () Bool)

(assert (=> b!1210511 m!1116049))

(declare-fun m!1116051 () Bool)

(assert (=> b!1210516 m!1116051))

(declare-fun m!1116053 () Bool)

(assert (=> b!1210518 m!1116053))

(declare-fun m!1116055 () Bool)

(assert (=> b!1210499 m!1116055))

(declare-fun m!1116057 () Bool)

(assert (=> b!1210500 m!1116057))

(declare-fun m!1116059 () Bool)

(assert (=> b!1210500 m!1116059))

(declare-fun m!1116061 () Bool)

(assert (=> b!1210500 m!1116061))

(declare-fun m!1116063 () Bool)

(assert (=> b!1210500 m!1116063))

(declare-fun m!1116065 () Bool)

(assert (=> b!1210497 m!1116065))

(declare-fun m!1116067 () Bool)

(assert (=> b!1210497 m!1116067))

(declare-fun m!1116069 () Bool)

(assert (=> b!1210497 m!1116069))

(declare-fun m!1116071 () Bool)

(assert (=> start!101056 m!1116071))

(declare-fun m!1116073 () Bool)

(assert (=> start!101056 m!1116073))

(declare-fun m!1116075 () Bool)

(assert (=> b!1210519 m!1116075))

(declare-fun m!1116077 () Bool)

(assert (=> mapNonEmpty!47953 m!1116077))

(assert (=> b!1210502 m!1116051))

(check-sat b_and!43131 (not b!1210522) (not b!1210502) (not bm!59668) (not bm!59664) (not mapNonEmpty!47953) (not b!1210511) (not b!1210521) (not b!1210497) (not b!1210512) (not b!1210519) (not b!1210499) tp_is_empty!30723 (not b_next!26019) (not bm!59666) (not b!1210508) (not b!1210510) (not b_lambda!21629) (not b!1210500) (not b!1210516) (not b!1210495) (not start!101056) (not b!1210518) (not bm!59669) (not bm!59671) (not b!1210513))
(check-sat b_and!43131 (not b_next!26019))
