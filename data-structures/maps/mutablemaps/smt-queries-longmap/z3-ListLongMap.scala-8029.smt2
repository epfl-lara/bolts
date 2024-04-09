; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99052 () Bool)

(assert start!99052)

(declare-fun b_free!24621 () Bool)

(declare-fun b_next!24621 () Bool)

(assert (=> start!99052 (= b_free!24621 (not b_next!24621))))

(declare-fun tp!86574 () Bool)

(declare-fun b_and!40105 () Bool)

(assert (=> start!99052 (= tp!86574 b_and!40105)))

(declare-fun b!1163514 () Bool)

(declare-fun e!661635 () Bool)

(assert (=> b!1163514 (= e!661635 true)))

(declare-fun e!661636 () Bool)

(assert (=> b!1163514 e!661636))

(declare-fun res!771694 () Bool)

(assert (=> b!1163514 (=> (not res!771694) (not e!661636))))

(declare-datatypes ((V!43995 0))(
  ( (V!43996 (val!14632 Int)) )
))
(declare-datatypes ((tuple2!18734 0))(
  ( (tuple2!18735 (_1!9377 (_ BitVec 64)) (_2!9377 V!43995)) )
))
(declare-datatypes ((List!25508 0))(
  ( (Nil!25505) (Cons!25504 (h!26713 tuple2!18734) (t!37128 List!25508)) )
))
(declare-datatypes ((ListLongMap!16715 0))(
  ( (ListLongMap!16716 (toList!8373 List!25508)) )
))
(declare-fun lt!524175 () ListLongMap!16715)

(declare-fun lt!524189 () ListLongMap!16715)

(assert (=> b!1163514 (= res!771694 (= lt!524175 lt!524189))))

(declare-fun lt!524173 () ListLongMap!16715)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1438 (ListLongMap!16715 (_ BitVec 64)) ListLongMap!16715)

(assert (=> b!1163514 (= lt!524175 (-!1438 lt!524173 k0!934))))

(declare-datatypes ((array!75092 0))(
  ( (array!75093 (arr!36193 (Array (_ BitVec 32) (_ BitVec 64))) (size!36730 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75092)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!524174 () V!43995)

(declare-fun +!3694 (ListLongMap!16715 tuple2!18734) ListLongMap!16715)

(assert (=> b!1163514 (= (-!1438 (+!3694 lt!524189 (tuple2!18735 (select (arr!36193 _keys!1208) from!1455) lt!524174)) (select (arr!36193 _keys!1208) from!1455)) lt!524189)))

(declare-datatypes ((Unit!38292 0))(
  ( (Unit!38293) )
))
(declare-fun lt!524183 () Unit!38292)

(declare-fun addThenRemoveForNewKeyIsSame!271 (ListLongMap!16715 (_ BitVec 64) V!43995) Unit!38292)

(assert (=> b!1163514 (= lt!524183 (addThenRemoveForNewKeyIsSame!271 lt!524189 (select (arr!36193 _keys!1208) from!1455) lt!524174))))

(declare-fun lt!524186 () V!43995)

(declare-datatypes ((ValueCell!13866 0))(
  ( (ValueCellFull!13866 (v!17270 V!43995)) (EmptyCell!13866) )
))
(declare-datatypes ((array!75094 0))(
  ( (array!75095 (arr!36194 (Array (_ BitVec 32) ValueCell!13866)) (size!36731 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75094)

(declare-fun get!18499 (ValueCell!13866 V!43995) V!43995)

(assert (=> b!1163514 (= lt!524174 (get!18499 (select (arr!36194 _values!996) from!1455) lt!524186))))

(declare-fun lt!524180 () Unit!38292)

(declare-fun e!661633 () Unit!38292)

(assert (=> b!1163514 (= lt!524180 e!661633)))

(declare-fun c!116399 () Bool)

(declare-fun contains!6851 (ListLongMap!16715 (_ BitVec 64)) Bool)

(assert (=> b!1163514 (= c!116399 (contains!6851 lt!524189 k0!934))))

(declare-fun zeroValue!944 () V!43995)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43995)

(declare-fun getCurrentListMapNoExtraKeys!4807 (array!75092 array!75094 (_ BitVec 32) (_ BitVec 32) V!43995 V!43995 (_ BitVec 32) Int) ListLongMap!16715)

(assert (=> b!1163514 (= lt!524189 (getCurrentListMapNoExtraKeys!4807 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56990 () Bool)

(declare-fun call!56998 () Bool)

(declare-fun call!56994 () Bool)

(assert (=> bm!56990 (= call!56998 call!56994)))

(declare-fun res!771697 () Bool)

(declare-fun e!661630 () Bool)

(assert (=> start!99052 (=> (not res!771697) (not e!661630))))

(assert (=> start!99052 (= res!771697 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36730 _keys!1208))))))

(assert (=> start!99052 e!661630))

(declare-fun tp_is_empty!29151 () Bool)

(assert (=> start!99052 tp_is_empty!29151))

(declare-fun array_inv!27562 (array!75092) Bool)

(assert (=> start!99052 (array_inv!27562 _keys!1208)))

(assert (=> start!99052 true))

(assert (=> start!99052 tp!86574))

(declare-fun e!661634 () Bool)

(declare-fun array_inv!27563 (array!75094) Bool)

(assert (=> start!99052 (and (array_inv!27563 _values!996) e!661634)))

(declare-fun b!1163515 () Bool)

(declare-fun e!661625 () Bool)

(assert (=> b!1163515 (= e!661630 e!661625)))

(declare-fun res!771696 () Bool)

(assert (=> b!1163515 (=> (not res!771696) (not e!661625))))

(declare-fun lt!524181 () array!75092)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75092 (_ BitVec 32)) Bool)

(assert (=> b!1163515 (= res!771696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524181 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1163515 (= lt!524181 (array!75093 (store (arr!36193 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36730 _keys!1208)))))

(declare-fun b!1163516 () Bool)

(declare-fun e!661622 () Bool)

(assert (=> b!1163516 (= e!661622 e!661635)))

(declare-fun res!771684 () Bool)

(assert (=> b!1163516 (=> res!771684 e!661635)))

(assert (=> b!1163516 (= res!771684 (not (= (select (arr!36193 _keys!1208) from!1455) k0!934)))))

(declare-fun e!661638 () Bool)

(assert (=> b!1163516 e!661638))

(declare-fun c!116398 () Bool)

(assert (=> b!1163516 (= c!116398 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!524179 () Unit!38292)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!662 (array!75092 array!75094 (_ BitVec 32) (_ BitVec 32) V!43995 V!43995 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38292)

(assert (=> b!1163516 (= lt!524179 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!662 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163517 () Bool)

(declare-fun res!771687 () Bool)

(assert (=> b!1163517 (=> (not res!771687) (not e!661630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1163517 (= res!771687 (validMask!0 mask!1564))))

(declare-fun bm!56991 () Bool)

(declare-fun lt!524190 () ListLongMap!16715)

(declare-fun call!57000 () ListLongMap!16715)

(declare-fun c!116396 () Bool)

(declare-fun c!116397 () Bool)

(assert (=> bm!56991 (= call!57000 (+!3694 (ite c!116397 lt!524190 lt!524189) (ite c!116397 (tuple2!18735 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!116396 (tuple2!18735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18735 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1163518 () Bool)

(declare-fun res!771688 () Bool)

(assert (=> b!1163518 (=> (not res!771688) (not e!661630))))

(assert (=> b!1163518 (= res!771688 (and (= (size!36731 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36730 _keys!1208) (size!36731 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1163519 () Bool)

(declare-fun e!661626 () Unit!38292)

(declare-fun e!661624 () Unit!38292)

(assert (=> b!1163519 (= e!661626 e!661624)))

(declare-fun c!116395 () Bool)

(declare-fun lt!524184 () Bool)

(assert (=> b!1163519 (= c!116395 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!524184))))

(declare-fun b!1163520 () Bool)

(declare-fun call!56995 () ListLongMap!16715)

(declare-fun call!56993 () ListLongMap!16715)

(assert (=> b!1163520 (= e!661638 (= call!56995 call!56993))))

(declare-fun b!1163521 () Bool)

(declare-fun e!661631 () Bool)

(declare-fun mapRes!45551 () Bool)

(assert (=> b!1163521 (= e!661634 (and e!661631 mapRes!45551))))

(declare-fun condMapEmpty!45551 () Bool)

(declare-fun mapDefault!45551 () ValueCell!13866)

(assert (=> b!1163521 (= condMapEmpty!45551 (= (arr!36194 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13866)) mapDefault!45551)))))

(declare-fun b!1163522 () Bool)

(assert (=> b!1163522 (= c!116396 (and (not lt!524184) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!661623 () Unit!38292)

(assert (=> b!1163522 (= e!661623 e!661626)))

(declare-fun b!1163523 () Bool)

(declare-fun e!661637 () Bool)

(assert (=> b!1163523 (= e!661637 e!661622)))

(declare-fun res!771685 () Bool)

(assert (=> b!1163523 (=> res!771685 e!661622)))

(assert (=> b!1163523 (= res!771685 (not (= from!1455 i!673)))))

(declare-fun lt!524188 () ListLongMap!16715)

(declare-fun lt!524177 () array!75094)

(assert (=> b!1163523 (= lt!524188 (getCurrentListMapNoExtraKeys!4807 lt!524181 lt!524177 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1163523 (= lt!524177 (array!75095 (store (arr!36194 _values!996) i!673 (ValueCellFull!13866 lt!524186)) (size!36731 _values!996)))))

(declare-fun dynLambda!2804 (Int (_ BitVec 64)) V!43995)

(assert (=> b!1163523 (= lt!524186 (dynLambda!2804 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1163523 (= lt!524173 (getCurrentListMapNoExtraKeys!4807 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1163524 () Bool)

(declare-fun res!771695 () Bool)

(assert (=> b!1163524 (=> (not res!771695) (not e!661630))))

(declare-datatypes ((List!25509 0))(
  ( (Nil!25506) (Cons!25505 (h!26714 (_ BitVec 64)) (t!37129 List!25509)) )
))
(declare-fun arrayNoDuplicates!0 (array!75092 (_ BitVec 32) List!25509) Bool)

(assert (=> b!1163524 (= res!771695 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25506))))

(declare-fun bm!56992 () Bool)

(assert (=> bm!56992 (= call!56995 (getCurrentListMapNoExtraKeys!4807 (ite c!116398 _keys!1208 lt!524181) (ite c!116398 _values!996 lt!524177) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163525 () Bool)

(declare-fun res!771692 () Bool)

(assert (=> b!1163525 (=> (not res!771692) (not e!661630))))

(assert (=> b!1163525 (= res!771692 (= (select (arr!36193 _keys!1208) i!673) k0!934))))

(declare-fun bm!56993 () Bool)

(declare-fun call!56996 () Unit!38292)

(declare-fun call!56997 () Unit!38292)

(assert (=> bm!56993 (= call!56996 call!56997)))

(declare-fun e!661629 () Bool)

(declare-fun b!1163526 () Bool)

(declare-fun arrayContainsKey!0 (array!75092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1163526 (= e!661629 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1163527 () Bool)

(declare-fun e!661632 () Bool)

(assert (=> b!1163527 (= e!661632 tp_is_empty!29151)))

(declare-fun mapIsEmpty!45551 () Bool)

(assert (=> mapIsEmpty!45551 mapRes!45551))

(declare-fun call!56999 () ListLongMap!16715)

(declare-fun bm!56994 () Bool)

(assert (=> bm!56994 (= call!56994 (contains!6851 (ite c!116397 lt!524190 call!56999) k0!934))))

(declare-fun mapNonEmpty!45551 () Bool)

(declare-fun tp!86575 () Bool)

(assert (=> mapNonEmpty!45551 (= mapRes!45551 (and tp!86575 e!661632))))

(declare-fun mapRest!45551 () (Array (_ BitVec 32) ValueCell!13866))

(declare-fun mapKey!45551 () (_ BitVec 32))

(declare-fun mapValue!45551 () ValueCell!13866)

(assert (=> mapNonEmpty!45551 (= (arr!36194 _values!996) (store mapRest!45551 mapKey!45551 mapValue!45551))))

(declare-fun bm!56995 () Bool)

(assert (=> bm!56995 (= call!56999 call!57000)))

(declare-fun e!661627 () Bool)

(declare-fun b!1163528 () Bool)

(assert (=> b!1163528 (= e!661627 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!524184) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!56996 () Bool)

(assert (=> bm!56996 (= call!56993 (getCurrentListMapNoExtraKeys!4807 (ite c!116398 lt!524181 _keys!1208) (ite c!116398 lt!524177 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163529 () Bool)

(assert (=> b!1163529 (= e!661636 (= lt!524175 (getCurrentListMapNoExtraKeys!4807 lt!524181 lt!524177 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1163530 () Bool)

(declare-fun res!771690 () Bool)

(assert (=> b!1163530 (=> (not res!771690) (not e!661630))))

(assert (=> b!1163530 (= res!771690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1163531 () Bool)

(declare-fun res!771689 () Bool)

(assert (=> b!1163531 (=> (not res!771689) (not e!661625))))

(assert (=> b!1163531 (= res!771689 (arrayNoDuplicates!0 lt!524181 #b00000000000000000000000000000000 Nil!25506))))

(declare-fun b!1163532 () Bool)

(declare-fun res!771693 () Bool)

(assert (=> b!1163532 (=> (not res!771693) (not e!661630))))

(assert (=> b!1163532 (= res!771693 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36730 _keys!1208))))))

(declare-fun b!1163533 () Bool)

(assert (=> b!1163533 call!56998))

(declare-fun lt!524182 () Unit!38292)

(assert (=> b!1163533 (= lt!524182 call!56996)))

(assert (=> b!1163533 (= e!661624 lt!524182)))

(declare-fun b!1163534 () Bool)

(assert (=> b!1163534 (= e!661627 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1163535 () Bool)

(declare-fun Unit!38294 () Unit!38292)

(assert (=> b!1163535 (= e!661633 Unit!38294)))

(assert (=> b!1163535 (= lt!524184 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1163535 (= c!116397 (and (not lt!524184) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!524192 () Unit!38292)

(assert (=> b!1163535 (= lt!524192 e!661623)))

(declare-fun lt!524185 () Unit!38292)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!558 (array!75092 array!75094 (_ BitVec 32) (_ BitVec 32) V!43995 V!43995 (_ BitVec 64) (_ BitVec 32) Int) Unit!38292)

(assert (=> b!1163535 (= lt!524185 (lemmaListMapContainsThenArrayContainsFrom!558 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116400 () Bool)

(assert (=> b!1163535 (= c!116400 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771691 () Bool)

(assert (=> b!1163535 (= res!771691 e!661627)))

(assert (=> b!1163535 (=> (not res!771691) (not e!661629))))

(assert (=> b!1163535 e!661629))

(declare-fun lt!524178 () Unit!38292)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75092 (_ BitVec 32) (_ BitVec 32)) Unit!38292)

(assert (=> b!1163535 (= lt!524178 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1163535 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25506)))

(declare-fun lt!524193 () Unit!38292)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75092 (_ BitVec 64) (_ BitVec 32) List!25509) Unit!38292)

(assert (=> b!1163535 (= lt!524193 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25506))))

(assert (=> b!1163535 false))

(declare-fun b!1163536 () Bool)

(assert (=> b!1163536 (= e!661638 (= call!56993 (-!1438 call!56995 k0!934)))))

(declare-fun b!1163537 () Bool)

(assert (=> b!1163537 (contains!6851 call!57000 k0!934)))

(declare-fun lt!524187 () Unit!38292)

(declare-fun addStillContains!991 (ListLongMap!16715 (_ BitVec 64) V!43995 (_ BitVec 64)) Unit!38292)

(assert (=> b!1163537 (= lt!524187 (addStillContains!991 lt!524190 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1163537 call!56994))

(assert (=> b!1163537 (= lt!524190 (+!3694 lt!524189 (tuple2!18735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!524176 () Unit!38292)

(assert (=> b!1163537 (= lt!524176 call!56997)))

(assert (=> b!1163537 (= e!661623 lt!524187)))

(declare-fun b!1163538 () Bool)

(assert (=> b!1163538 (= e!661625 (not e!661637))))

(declare-fun res!771686 () Bool)

(assert (=> b!1163538 (=> res!771686 e!661637)))

(assert (=> b!1163538 (= res!771686 (bvsgt from!1455 i!673))))

(assert (=> b!1163538 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!524172 () Unit!38292)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75092 (_ BitVec 64) (_ BitVec 32)) Unit!38292)

(assert (=> b!1163538 (= lt!524172 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1163539 () Bool)

(declare-fun Unit!38295 () Unit!38292)

(assert (=> b!1163539 (= e!661624 Unit!38295)))

(declare-fun b!1163540 () Bool)

(declare-fun Unit!38296 () Unit!38292)

(assert (=> b!1163540 (= e!661633 Unit!38296)))

(declare-fun bm!56997 () Bool)

(assert (=> bm!56997 (= call!56997 (addStillContains!991 lt!524189 (ite (or c!116397 c!116396) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!116397 c!116396) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1163541 () Bool)

(declare-fun lt!524191 () Unit!38292)

(assert (=> b!1163541 (= e!661626 lt!524191)))

(assert (=> b!1163541 (= lt!524191 call!56996)))

(assert (=> b!1163541 call!56998))

(declare-fun b!1163542 () Bool)

(assert (=> b!1163542 (= e!661631 tp_is_empty!29151)))

(declare-fun b!1163543 () Bool)

(declare-fun res!771698 () Bool)

(assert (=> b!1163543 (=> (not res!771698) (not e!661630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1163543 (= res!771698 (validKeyInArray!0 k0!934))))

(assert (= (and start!99052 res!771697) b!1163517))

(assert (= (and b!1163517 res!771687) b!1163518))

(assert (= (and b!1163518 res!771688) b!1163530))

(assert (= (and b!1163530 res!771690) b!1163524))

(assert (= (and b!1163524 res!771695) b!1163532))

(assert (= (and b!1163532 res!771693) b!1163543))

(assert (= (and b!1163543 res!771698) b!1163525))

(assert (= (and b!1163525 res!771692) b!1163515))

(assert (= (and b!1163515 res!771696) b!1163531))

(assert (= (and b!1163531 res!771689) b!1163538))

(assert (= (and b!1163538 (not res!771686)) b!1163523))

(assert (= (and b!1163523 (not res!771685)) b!1163516))

(assert (= (and b!1163516 c!116398) b!1163536))

(assert (= (and b!1163516 (not c!116398)) b!1163520))

(assert (= (or b!1163536 b!1163520) bm!56992))

(assert (= (or b!1163536 b!1163520) bm!56996))

(assert (= (and b!1163516 (not res!771684)) b!1163514))

(assert (= (and b!1163514 c!116399) b!1163535))

(assert (= (and b!1163514 (not c!116399)) b!1163540))

(assert (= (and b!1163535 c!116397) b!1163537))

(assert (= (and b!1163535 (not c!116397)) b!1163522))

(assert (= (and b!1163522 c!116396) b!1163541))

(assert (= (and b!1163522 (not c!116396)) b!1163519))

(assert (= (and b!1163519 c!116395) b!1163533))

(assert (= (and b!1163519 (not c!116395)) b!1163539))

(assert (= (or b!1163541 b!1163533) bm!56993))

(assert (= (or b!1163541 b!1163533) bm!56995))

(assert (= (or b!1163541 b!1163533) bm!56990))

(assert (= (or b!1163537 bm!56990) bm!56994))

(assert (= (or b!1163537 bm!56993) bm!56997))

(assert (= (or b!1163537 bm!56995) bm!56991))

(assert (= (and b!1163535 c!116400) b!1163534))

(assert (= (and b!1163535 (not c!116400)) b!1163528))

(assert (= (and b!1163535 res!771691) b!1163526))

(assert (= (and b!1163514 res!771694) b!1163529))

(assert (= (and b!1163521 condMapEmpty!45551) mapIsEmpty!45551))

(assert (= (and b!1163521 (not condMapEmpty!45551)) mapNonEmpty!45551))

(get-info :version)

(assert (= (and mapNonEmpty!45551 ((_ is ValueCellFull!13866) mapValue!45551)) b!1163527))

(assert (= (and b!1163521 ((_ is ValueCellFull!13866) mapDefault!45551)) b!1163542))

(assert (= start!99052 b!1163521))

(declare-fun b_lambda!19745 () Bool)

(assert (=> (not b_lambda!19745) (not b!1163523)))

(declare-fun t!37127 () Bool)

(declare-fun tb!9441 () Bool)

(assert (=> (and start!99052 (= defaultEntry!1004 defaultEntry!1004) t!37127) tb!9441))

(declare-fun result!19439 () Bool)

(assert (=> tb!9441 (= result!19439 tp_is_empty!29151)))

(assert (=> b!1163523 t!37127))

(declare-fun b_and!40107 () Bool)

(assert (= b_and!40105 (and (=> t!37127 result!19439) b_and!40107)))

(declare-fun m!1072115 () Bool)

(assert (=> b!1163537 m!1072115))

(declare-fun m!1072117 () Bool)

(assert (=> b!1163537 m!1072117))

(declare-fun m!1072119 () Bool)

(assert (=> b!1163537 m!1072119))

(declare-fun m!1072121 () Bool)

(assert (=> b!1163515 m!1072121))

(declare-fun m!1072123 () Bool)

(assert (=> b!1163515 m!1072123))

(declare-fun m!1072125 () Bool)

(assert (=> bm!56994 m!1072125))

(declare-fun m!1072127 () Bool)

(assert (=> b!1163523 m!1072127))

(declare-fun m!1072129 () Bool)

(assert (=> b!1163523 m!1072129))

(declare-fun m!1072131 () Bool)

(assert (=> b!1163523 m!1072131))

(declare-fun m!1072133 () Bool)

(assert (=> b!1163523 m!1072133))

(declare-fun m!1072135 () Bool)

(assert (=> b!1163529 m!1072135))

(declare-fun m!1072137 () Bool)

(assert (=> b!1163525 m!1072137))

(declare-fun m!1072139 () Bool)

(assert (=> bm!56992 m!1072139))

(declare-fun m!1072141 () Bool)

(assert (=> b!1163536 m!1072141))

(declare-fun m!1072143 () Bool)

(assert (=> bm!56991 m!1072143))

(declare-fun m!1072145 () Bool)

(assert (=> b!1163530 m!1072145))

(declare-fun m!1072147 () Bool)

(assert (=> b!1163516 m!1072147))

(declare-fun m!1072149 () Bool)

(assert (=> b!1163516 m!1072149))

(declare-fun m!1072151 () Bool)

(assert (=> b!1163524 m!1072151))

(declare-fun m!1072153 () Bool)

(assert (=> b!1163531 m!1072153))

(declare-fun m!1072155 () Bool)

(assert (=> b!1163535 m!1072155))

(declare-fun m!1072157 () Bool)

(assert (=> b!1163535 m!1072157))

(declare-fun m!1072159 () Bool)

(assert (=> b!1163535 m!1072159))

(declare-fun m!1072161 () Bool)

(assert (=> b!1163535 m!1072161))

(declare-fun m!1072163 () Bool)

(assert (=> b!1163543 m!1072163))

(declare-fun m!1072165 () Bool)

(assert (=> b!1163517 m!1072165))

(declare-fun m!1072167 () Bool)

(assert (=> bm!56996 m!1072167))

(declare-fun m!1072169 () Bool)

(assert (=> b!1163534 m!1072169))

(declare-fun m!1072171 () Bool)

(assert (=> b!1163538 m!1072171))

(declare-fun m!1072173 () Bool)

(assert (=> b!1163538 m!1072173))

(declare-fun m!1072175 () Bool)

(assert (=> bm!56997 m!1072175))

(declare-fun m!1072177 () Bool)

(assert (=> b!1163514 m!1072177))

(declare-fun m!1072179 () Bool)

(assert (=> b!1163514 m!1072179))

(assert (=> b!1163514 m!1072147))

(declare-fun m!1072181 () Bool)

(assert (=> b!1163514 m!1072181))

(declare-fun m!1072183 () Bool)

(assert (=> b!1163514 m!1072183))

(assert (=> b!1163514 m!1072147))

(declare-fun m!1072185 () Bool)

(assert (=> b!1163514 m!1072185))

(assert (=> b!1163514 m!1072183))

(declare-fun m!1072187 () Bool)

(assert (=> b!1163514 m!1072187))

(declare-fun m!1072189 () Bool)

(assert (=> b!1163514 m!1072189))

(assert (=> b!1163514 m!1072179))

(declare-fun m!1072191 () Bool)

(assert (=> b!1163514 m!1072191))

(assert (=> b!1163514 m!1072147))

(declare-fun m!1072193 () Bool)

(assert (=> start!99052 m!1072193))

(declare-fun m!1072195 () Bool)

(assert (=> start!99052 m!1072195))

(assert (=> b!1163526 m!1072169))

(declare-fun m!1072197 () Bool)

(assert (=> mapNonEmpty!45551 m!1072197))

(check-sat (not b!1163538) (not mapNonEmpty!45551) (not b_lambda!19745) (not b_next!24621) (not start!99052) (not b!1163517) (not b!1163516) (not bm!56996) (not b!1163536) (not b!1163531) (not b!1163523) b_and!40107 (not bm!56997) (not b!1163514) (not bm!56994) (not b!1163529) (not b!1163543) (not bm!56992) (not b!1163534) (not b!1163526) tp_is_empty!29151 (not bm!56991) (not b!1163537) (not b!1163530) (not b!1163524) (not b!1163535) (not b!1163515))
(check-sat b_and!40107 (not b_next!24621))
