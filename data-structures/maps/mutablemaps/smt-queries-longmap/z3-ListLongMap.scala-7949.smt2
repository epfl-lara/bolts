; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98572 () Bool)

(assert start!98572)

(declare-fun b_free!24141 () Bool)

(declare-fun b_next!24141 () Bool)

(assert (=> start!98572 (= b_free!24141 (not b_next!24141))))

(declare-fun tp!85134 () Bool)

(declare-fun b_and!39145 () Bool)

(assert (=> start!98572 (= tp!85134 b_and!39145)))

(declare-datatypes ((V!43355 0))(
  ( (V!43356 (val!14392 Int)) )
))
(declare-fun zeroValue!944 () V!43355)

(declare-fun c!112075 () Bool)

(declare-fun bm!51230 () Bool)

(declare-fun c!112076 () Bool)

(declare-datatypes ((tuple2!18290 0))(
  ( (tuple2!18291 (_1!9155 (_ BitVec 64)) (_2!9155 V!43355)) )
))
(declare-datatypes ((List!25091 0))(
  ( (Nil!25088) (Cons!25087 (h!26296 tuple2!18290) (t!36231 List!25091)) )
))
(declare-datatypes ((ListLongMap!16271 0))(
  ( (ListLongMap!16272 (toList!8151 List!25091)) )
))
(declare-fun lt!508586 () ListLongMap!16271)

(declare-fun lt!508592 () ListLongMap!16271)

(declare-fun minValue!944 () V!43355)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((Unit!37368 0))(
  ( (Unit!37369) )
))
(declare-fun call!51236 () Unit!37368)

(declare-fun addStillContains!797 (ListLongMap!16271 (_ BitVec 64) V!43355 (_ BitVec 64)) Unit!37368)

(assert (=> bm!51230 (= call!51236 (addStillContains!797 (ite c!112076 lt!508586 lt!508592) (ite c!112076 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112075 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112076 minValue!944 (ite c!112075 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1141519 () Bool)

(declare-fun res!760982 () Bool)

(declare-fun e!649469 () Bool)

(assert (=> b!1141519 (=> (not res!760982) (not e!649469))))

(declare-datatypes ((array!74152 0))(
  ( (array!74153 (arr!35723 (Array (_ BitVec 32) (_ BitVec 64))) (size!36260 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74152)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74152 (_ BitVec 32)) Bool)

(assert (=> b!1141519 (= res!760982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1141520 () Bool)

(declare-fun res!760971 () Bool)

(assert (=> b!1141520 (=> (not res!760971) (not e!649469))))

(declare-datatypes ((List!25092 0))(
  ( (Nil!25089) (Cons!25088 (h!26297 (_ BitVec 64)) (t!36232 List!25092)) )
))
(declare-fun arrayNoDuplicates!0 (array!74152 (_ BitVec 32) List!25092) Bool)

(assert (=> b!1141520 (= res!760971 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25089))))

(declare-fun mapNonEmpty!44831 () Bool)

(declare-fun mapRes!44831 () Bool)

(declare-fun tp!85135 () Bool)

(declare-fun e!649472 () Bool)

(assert (=> mapNonEmpty!44831 (= mapRes!44831 (and tp!85135 e!649472))))

(declare-fun mapKey!44831 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13626 0))(
  ( (ValueCellFull!13626 (v!17030 V!43355)) (EmptyCell!13626) )
))
(declare-fun mapValue!44831 () ValueCell!13626)

(declare-fun mapRest!44831 () (Array (_ BitVec 32) ValueCell!13626))

(declare-datatypes ((array!74154 0))(
  ( (array!74155 (arr!35724 (Array (_ BitVec 32) ValueCell!13626)) (size!36261 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74154)

(assert (=> mapNonEmpty!44831 (= (arr!35724 _values!996) (store mapRest!44831 mapKey!44831 mapValue!44831))))

(declare-fun b!1141521 () Bool)

(declare-fun e!649475 () Bool)

(declare-fun e!649467 () Bool)

(assert (=> b!1141521 (= e!649475 e!649467)))

(declare-fun res!760978 () Bool)

(assert (=> b!1141521 (=> res!760978 e!649467)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1141521 (= res!760978 (not (= from!1455 i!673)))))

(declare-fun lt!508579 () array!74154)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!508587 () array!74152)

(declare-fun lt!508596 () ListLongMap!16271)

(declare-fun getCurrentListMapNoExtraKeys!4595 (array!74152 array!74154 (_ BitVec 32) (_ BitVec 32) V!43355 V!43355 (_ BitVec 32) Int) ListLongMap!16271)

(assert (=> b!1141521 (= lt!508596 (getCurrentListMapNoExtraKeys!4595 lt!508587 lt!508579 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!508591 () V!43355)

(assert (=> b!1141521 (= lt!508579 (array!74155 (store (arr!35724 _values!996) i!673 (ValueCellFull!13626 lt!508591)) (size!36261 _values!996)))))

(declare-fun dynLambda!2647 (Int (_ BitVec 64)) V!43355)

(assert (=> b!1141521 (= lt!508591 (dynLambda!2647 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!508589 () ListLongMap!16271)

(assert (=> b!1141521 (= lt!508589 (getCurrentListMapNoExtraKeys!4595 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1141522 () Bool)

(declare-fun e!649477 () Bool)

(declare-fun e!649473 () Bool)

(assert (=> b!1141522 (= e!649477 (and e!649473 mapRes!44831))))

(declare-fun condMapEmpty!44831 () Bool)

(declare-fun mapDefault!44831 () ValueCell!13626)

(assert (=> b!1141522 (= condMapEmpty!44831 (= (arr!35724 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13626)) mapDefault!44831)))))

(declare-fun b!1141523 () Bool)

(declare-fun res!760973 () Bool)

(assert (=> b!1141523 (=> (not res!760973) (not e!649469))))

(assert (=> b!1141523 (= res!760973 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36260 _keys!1208))))))

(declare-fun b!1141524 () Bool)

(declare-fun e!649468 () Unit!37368)

(declare-fun lt!508580 () Unit!37368)

(assert (=> b!1141524 (= e!649468 lt!508580)))

(declare-fun call!51238 () Unit!37368)

(assert (=> b!1141524 (= lt!508580 call!51238)))

(declare-fun call!51240 () Bool)

(assert (=> b!1141524 call!51240))

(declare-fun call!51233 () ListLongMap!16271)

(declare-fun bm!51231 () Bool)

(assert (=> bm!51231 (= call!51233 (getCurrentListMapNoExtraKeys!4595 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141525 () Bool)

(declare-fun res!760981 () Bool)

(assert (=> b!1141525 (=> (not res!760981) (not e!649469))))

(assert (=> b!1141525 (= res!760981 (= (select (arr!35723 _keys!1208) i!673) k0!934))))

(declare-fun res!760979 () Bool)

(assert (=> start!98572 (=> (not res!760979) (not e!649469))))

(assert (=> start!98572 (= res!760979 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36260 _keys!1208))))))

(assert (=> start!98572 e!649469))

(declare-fun tp_is_empty!28671 () Bool)

(assert (=> start!98572 tp_is_empty!28671))

(declare-fun array_inv!27252 (array!74152) Bool)

(assert (=> start!98572 (array_inv!27252 _keys!1208)))

(assert (=> start!98572 true))

(assert (=> start!98572 tp!85134))

(declare-fun array_inv!27253 (array!74154) Bool)

(assert (=> start!98572 (and (array_inv!27253 _values!996) e!649477)))

(declare-fun call!51234 () ListLongMap!16271)

(declare-fun bm!51232 () Bool)

(assert (=> bm!51232 (= call!51234 (getCurrentListMapNoExtraKeys!4595 lt!508587 lt!508579 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141526 () Bool)

(declare-fun e!649478 () Bool)

(assert (=> b!1141526 (= e!649478 (= call!51234 call!51233))))

(declare-fun b!1141527 () Bool)

(declare-fun res!760969 () Bool)

(assert (=> b!1141527 (=> (not res!760969) (not e!649469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1141527 (= res!760969 (validMask!0 mask!1564))))

(declare-fun b!1141528 () Bool)

(assert (=> b!1141528 (= e!649472 tp_is_empty!28671)))

(declare-fun b!1141529 () Bool)

(assert (=> b!1141529 call!51240))

(declare-fun lt!508585 () Unit!37368)

(assert (=> b!1141529 (= lt!508585 call!51238)))

(declare-fun e!649480 () Unit!37368)

(assert (=> b!1141529 (= e!649480 lt!508585)))

(declare-fun b!1141530 () Bool)

(declare-fun res!760970 () Bool)

(assert (=> b!1141530 (=> (not res!760970) (not e!649469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1141530 (= res!760970 (validKeyInArray!0 k0!934))))

(declare-fun b!1141531 () Bool)

(declare-fun res!760980 () Bool)

(assert (=> b!1141531 (=> (not res!760980) (not e!649469))))

(assert (=> b!1141531 (= res!760980 (and (= (size!36261 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36260 _keys!1208) (size!36261 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!51233 () Bool)

(assert (=> bm!51233 (= call!51238 call!51236)))

(declare-fun mapIsEmpty!44831 () Bool)

(assert (=> mapIsEmpty!44831 mapRes!44831))

(declare-fun b!1141532 () Bool)

(declare-fun res!760974 () Bool)

(declare-fun e!649471 () Bool)

(assert (=> b!1141532 (=> (not res!760974) (not e!649471))))

(assert (=> b!1141532 (= res!760974 (arrayNoDuplicates!0 lt!508587 #b00000000000000000000000000000000 Nil!25089))))

(declare-fun b!1141533 () Bool)

(declare-fun contains!6656 (ListLongMap!16271 (_ BitVec 64)) Bool)

(declare-fun +!3496 (ListLongMap!16271 tuple2!18290) ListLongMap!16271)

(assert (=> b!1141533 (contains!6656 (+!3496 lt!508586 (tuple2!18291 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!508593 () Unit!37368)

(assert (=> b!1141533 (= lt!508593 call!51236)))

(declare-fun call!51237 () Bool)

(assert (=> b!1141533 call!51237))

(declare-fun call!51239 () ListLongMap!16271)

(assert (=> b!1141533 (= lt!508586 call!51239)))

(declare-fun lt!508582 () Unit!37368)

(assert (=> b!1141533 (= lt!508582 (addStillContains!797 lt!508592 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!649481 () Unit!37368)

(assert (=> b!1141533 (= e!649481 lt!508593)))

(declare-fun b!1141534 () Bool)

(assert (=> b!1141534 (= e!649473 tp_is_empty!28671)))

(declare-fun b!1141535 () Bool)

(declare-fun e!649474 () Bool)

(assert (=> b!1141535 (= e!649467 e!649474)))

(declare-fun res!760975 () Bool)

(assert (=> b!1141535 (=> res!760975 e!649474)))

(assert (=> b!1141535 (= res!760975 (not (= (select (arr!35723 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1141535 e!649478))

(declare-fun c!112078 () Bool)

(assert (=> b!1141535 (= c!112078 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!508595 () Unit!37368)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!504 (array!74152 array!74154 (_ BitVec 32) (_ BitVec 32) V!43355 V!43355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37368)

(assert (=> b!1141535 (= lt!508595 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!504 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141536 () Bool)

(declare-fun Unit!37370 () Unit!37368)

(assert (=> b!1141536 (= e!649480 Unit!37370)))

(declare-fun e!649476 () Bool)

(declare-fun b!1141537 () Bool)

(declare-fun arrayContainsKey!0 (array!74152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1141537 (= e!649476 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!508597 () Bool)

(declare-fun e!649479 () Bool)

(declare-fun b!1141538 () Bool)

(assert (=> b!1141538 (= e!649479 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!508597) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!51234 () Bool)

(assert (=> bm!51234 (= call!51239 (+!3496 lt!508592 (ite (or c!112076 c!112075) (tuple2!18291 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18291 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1141539 () Bool)

(assert (=> b!1141539 (= e!649471 (not e!649475))))

(declare-fun res!760977 () Bool)

(assert (=> b!1141539 (=> res!760977 e!649475)))

(assert (=> b!1141539 (= res!760977 (bvsgt from!1455 i!673))))

(assert (=> b!1141539 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!508599 () Unit!37368)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74152 (_ BitVec 64) (_ BitVec 32)) Unit!37368)

(assert (=> b!1141539 (= lt!508599 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1141540 () Bool)

(assert (=> b!1141540 (= e!649474 true)))

(declare-fun lt!508594 () V!43355)

(declare-fun -!1249 (ListLongMap!16271 (_ BitVec 64)) ListLongMap!16271)

(assert (=> b!1141540 (= (-!1249 (+!3496 lt!508592 (tuple2!18291 (select (arr!35723 _keys!1208) from!1455) lt!508594)) (select (arr!35723 _keys!1208) from!1455)) lt!508592)))

(declare-fun lt!508581 () Unit!37368)

(declare-fun addThenRemoveForNewKeyIsSame!104 (ListLongMap!16271 (_ BitVec 64) V!43355) Unit!37368)

(assert (=> b!1141540 (= lt!508581 (addThenRemoveForNewKeyIsSame!104 lt!508592 (select (arr!35723 _keys!1208) from!1455) lt!508594))))

(declare-fun get!18172 (ValueCell!13626 V!43355) V!43355)

(assert (=> b!1141540 (= lt!508594 (get!18172 (select (arr!35724 _values!996) from!1455) lt!508591))))

(declare-fun lt!508588 () Unit!37368)

(declare-fun e!649482 () Unit!37368)

(assert (=> b!1141540 (= lt!508588 e!649482)))

(declare-fun c!112079 () Bool)

(assert (=> b!1141540 (= c!112079 (contains!6656 lt!508592 k0!934))))

(assert (=> b!1141540 (= lt!508592 (getCurrentListMapNoExtraKeys!4595 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!51235 () ListLongMap!16271)

(declare-fun bm!51235 () Bool)

(assert (=> bm!51235 (= call!51237 (contains!6656 (ite c!112076 lt!508586 call!51235) k0!934))))

(declare-fun b!1141541 () Bool)

(declare-fun Unit!37371 () Unit!37368)

(assert (=> b!1141541 (= e!649482 Unit!37371)))

(declare-fun b!1141542 () Bool)

(assert (=> b!1141542 (= e!649469 e!649471)))

(declare-fun res!760976 () Bool)

(assert (=> b!1141542 (=> (not res!760976) (not e!649471))))

(assert (=> b!1141542 (= res!760976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508587 mask!1564))))

(assert (=> b!1141542 (= lt!508587 (array!74153 (store (arr!35723 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36260 _keys!1208)))))

(declare-fun b!1141543 () Bool)

(assert (=> b!1141543 (= c!112075 (and (not lt!508597) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1141543 (= e!649481 e!649468)))

(declare-fun bm!51236 () Bool)

(assert (=> bm!51236 (= call!51235 call!51239)))

(declare-fun b!1141544 () Bool)

(assert (=> b!1141544 (= e!649478 (= call!51234 (-!1249 call!51233 k0!934)))))

(declare-fun b!1141545 () Bool)

(declare-fun Unit!37372 () Unit!37368)

(assert (=> b!1141545 (= e!649482 Unit!37372)))

(assert (=> b!1141545 (= lt!508597 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1141545 (= c!112076 (and (not lt!508597) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!508583 () Unit!37368)

(assert (=> b!1141545 (= lt!508583 e!649481)))

(declare-fun lt!508598 () Unit!37368)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!395 (array!74152 array!74154 (_ BitVec 32) (_ BitVec 32) V!43355 V!43355 (_ BitVec 64) (_ BitVec 32) Int) Unit!37368)

(assert (=> b!1141545 (= lt!508598 (lemmaListMapContainsThenArrayContainsFrom!395 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112080 () Bool)

(assert (=> b!1141545 (= c!112080 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760972 () Bool)

(assert (=> b!1141545 (= res!760972 e!649479)))

(assert (=> b!1141545 (=> (not res!760972) (not e!649476))))

(assert (=> b!1141545 e!649476))

(declare-fun lt!508590 () Unit!37368)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74152 (_ BitVec 32) (_ BitVec 32)) Unit!37368)

(assert (=> b!1141545 (= lt!508590 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1141545 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25089)))

(declare-fun lt!508584 () Unit!37368)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74152 (_ BitVec 64) (_ BitVec 32) List!25092) Unit!37368)

(assert (=> b!1141545 (= lt!508584 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25089))))

(assert (=> b!1141545 false))

(declare-fun b!1141546 () Bool)

(assert (=> b!1141546 (= e!649468 e!649480)))

(declare-fun c!112077 () Bool)

(assert (=> b!1141546 (= c!112077 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508597))))

(declare-fun b!1141547 () Bool)

(assert (=> b!1141547 (= e!649479 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!51237 () Bool)

(assert (=> bm!51237 (= call!51240 call!51237)))

(assert (= (and start!98572 res!760979) b!1141527))

(assert (= (and b!1141527 res!760969) b!1141531))

(assert (= (and b!1141531 res!760980) b!1141519))

(assert (= (and b!1141519 res!760982) b!1141520))

(assert (= (and b!1141520 res!760971) b!1141523))

(assert (= (and b!1141523 res!760973) b!1141530))

(assert (= (and b!1141530 res!760970) b!1141525))

(assert (= (and b!1141525 res!760981) b!1141542))

(assert (= (and b!1141542 res!760976) b!1141532))

(assert (= (and b!1141532 res!760974) b!1141539))

(assert (= (and b!1141539 (not res!760977)) b!1141521))

(assert (= (and b!1141521 (not res!760978)) b!1141535))

(assert (= (and b!1141535 c!112078) b!1141544))

(assert (= (and b!1141535 (not c!112078)) b!1141526))

(assert (= (or b!1141544 b!1141526) bm!51232))

(assert (= (or b!1141544 b!1141526) bm!51231))

(assert (= (and b!1141535 (not res!760975)) b!1141540))

(assert (= (and b!1141540 c!112079) b!1141545))

(assert (= (and b!1141540 (not c!112079)) b!1141541))

(assert (= (and b!1141545 c!112076) b!1141533))

(assert (= (and b!1141545 (not c!112076)) b!1141543))

(assert (= (and b!1141543 c!112075) b!1141524))

(assert (= (and b!1141543 (not c!112075)) b!1141546))

(assert (= (and b!1141546 c!112077) b!1141529))

(assert (= (and b!1141546 (not c!112077)) b!1141536))

(assert (= (or b!1141524 b!1141529) bm!51233))

(assert (= (or b!1141524 b!1141529) bm!51236))

(assert (= (or b!1141524 b!1141529) bm!51237))

(assert (= (or b!1141533 bm!51237) bm!51235))

(assert (= (or b!1141533 bm!51233) bm!51230))

(assert (= (or b!1141533 bm!51236) bm!51234))

(assert (= (and b!1141545 c!112080) b!1141547))

(assert (= (and b!1141545 (not c!112080)) b!1141538))

(assert (= (and b!1141545 res!760972) b!1141537))

(assert (= (and b!1141522 condMapEmpty!44831) mapIsEmpty!44831))

(assert (= (and b!1141522 (not condMapEmpty!44831)) mapNonEmpty!44831))

(get-info :version)

(assert (= (and mapNonEmpty!44831 ((_ is ValueCellFull!13626) mapValue!44831)) b!1141528))

(assert (= (and b!1141522 ((_ is ValueCellFull!13626) mapDefault!44831)) b!1141534))

(assert (= start!98572 b!1141522))

(declare-fun b_lambda!19265 () Bool)

(assert (=> (not b_lambda!19265) (not b!1141521)))

(declare-fun t!36230 () Bool)

(declare-fun tb!8961 () Bool)

(assert (=> (and start!98572 (= defaultEntry!1004 defaultEntry!1004) t!36230) tb!8961))

(declare-fun result!18479 () Bool)

(assert (=> tb!8961 (= result!18479 tp_is_empty!28671)))

(assert (=> b!1141521 t!36230))

(declare-fun b_and!39147 () Bool)

(assert (= b_and!39145 (and (=> t!36230 result!18479) b_and!39147)))

(declare-fun m!1052945 () Bool)

(assert (=> b!1141532 m!1052945))

(declare-fun m!1052947 () Bool)

(assert (=> b!1141544 m!1052947))

(declare-fun m!1052949 () Bool)

(assert (=> b!1141537 m!1052949))

(declare-fun m!1052951 () Bool)

(assert (=> bm!51234 m!1052951))

(declare-fun m!1052953 () Bool)

(assert (=> b!1141545 m!1052953))

(declare-fun m!1052955 () Bool)

(assert (=> b!1141545 m!1052955))

(declare-fun m!1052957 () Bool)

(assert (=> b!1141545 m!1052957))

(declare-fun m!1052959 () Bool)

(assert (=> b!1141545 m!1052959))

(declare-fun m!1052961 () Bool)

(assert (=> b!1141540 m!1052961))

(declare-fun m!1052963 () Bool)

(assert (=> b!1141540 m!1052963))

(declare-fun m!1052965 () Bool)

(assert (=> b!1141540 m!1052965))

(assert (=> b!1141540 m!1052963))

(declare-fun m!1052967 () Bool)

(assert (=> b!1141540 m!1052967))

(declare-fun m!1052969 () Bool)

(assert (=> b!1141540 m!1052969))

(declare-fun m!1052971 () Bool)

(assert (=> b!1141540 m!1052971))

(assert (=> b!1141540 m!1052965))

(declare-fun m!1052973 () Bool)

(assert (=> b!1141540 m!1052973))

(assert (=> b!1141540 m!1052967))

(assert (=> b!1141540 m!1052967))

(declare-fun m!1052975 () Bool)

(assert (=> b!1141540 m!1052975))

(assert (=> b!1141547 m!1052949))

(declare-fun m!1052977 () Bool)

(assert (=> mapNonEmpty!44831 m!1052977))

(declare-fun m!1052979 () Bool)

(assert (=> b!1141542 m!1052979))

(declare-fun m!1052981 () Bool)

(assert (=> b!1141542 m!1052981))

(declare-fun m!1052983 () Bool)

(assert (=> bm!51232 m!1052983))

(declare-fun m!1052985 () Bool)

(assert (=> bm!51230 m!1052985))

(declare-fun m!1052987 () Bool)

(assert (=> b!1141533 m!1052987))

(assert (=> b!1141533 m!1052987))

(declare-fun m!1052989 () Bool)

(assert (=> b!1141533 m!1052989))

(declare-fun m!1052991 () Bool)

(assert (=> b!1141533 m!1052991))

(declare-fun m!1052993 () Bool)

(assert (=> b!1141530 m!1052993))

(declare-fun m!1052995 () Bool)

(assert (=> bm!51235 m!1052995))

(declare-fun m!1052997 () Bool)

(assert (=> start!98572 m!1052997))

(declare-fun m!1052999 () Bool)

(assert (=> start!98572 m!1052999))

(declare-fun m!1053001 () Bool)

(assert (=> b!1141521 m!1053001))

(declare-fun m!1053003 () Bool)

(assert (=> b!1141521 m!1053003))

(declare-fun m!1053005 () Bool)

(assert (=> b!1141521 m!1053005))

(declare-fun m!1053007 () Bool)

(assert (=> b!1141521 m!1053007))

(declare-fun m!1053009 () Bool)

(assert (=> b!1141525 m!1053009))

(assert (=> b!1141535 m!1052967))

(declare-fun m!1053011 () Bool)

(assert (=> b!1141535 m!1053011))

(assert (=> bm!51231 m!1052961))

(declare-fun m!1053013 () Bool)

(assert (=> b!1141539 m!1053013))

(declare-fun m!1053015 () Bool)

(assert (=> b!1141539 m!1053015))

(declare-fun m!1053017 () Bool)

(assert (=> b!1141527 m!1053017))

(declare-fun m!1053019 () Bool)

(assert (=> b!1141519 m!1053019))

(declare-fun m!1053021 () Bool)

(assert (=> b!1141520 m!1053021))

(check-sat (not start!98572) (not b!1141519) (not b!1141542) (not bm!51230) (not b!1141527) (not bm!51234) (not bm!51231) (not mapNonEmpty!44831) b_and!39147 (not b!1141530) (not b!1141544) (not b_next!24141) (not b!1141520) (not b!1141547) (not bm!51232) (not b!1141540) (not b!1141535) (not b!1141521) (not b_lambda!19265) (not b!1141537) tp_is_empty!28671 (not b!1141539) (not b!1141532) (not b!1141533) (not b!1141545) (not bm!51235))
(check-sat b_and!39147 (not b_next!24141))
