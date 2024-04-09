; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98854 () Bool)

(assert start!98854)

(declare-fun b_free!24423 () Bool)

(declare-fun b_next!24423 () Bool)

(assert (=> start!98854 (= b_free!24423 (not b_next!24423))))

(declare-fun tp!85980 () Bool)

(declare-fun b_and!39709 () Bool)

(assert (=> start!98854 (= tp!85980 b_and!39709)))

(declare-fun b!1154406 () Bool)

(declare-fun e!656588 () Bool)

(declare-fun e!656578 () Bool)

(assert (=> b!1154406 (= e!656588 e!656578)))

(declare-fun res!767231 () Bool)

(assert (=> b!1154406 (=> res!767231 e!656578)))

(declare-datatypes ((array!74702 0))(
  ( (array!74703 (arr!35998 (Array (_ BitVec 32) (_ BitVec 64))) (size!36535 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74702)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1154406 (= res!767231 (not (= (select (arr!35998 _keys!1208) from!1455) k0!934)))))

(declare-fun e!656573 () Bool)

(assert (=> b!1154406 e!656573))

(declare-fun c!114616 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1154406 (= c!114616 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43731 0))(
  ( (V!43732 (val!14533 Int)) )
))
(declare-fun zeroValue!944 () V!43731)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!37904 0))(
  ( (Unit!37905) )
))
(declare-fun lt!517650 () Unit!37904)

(declare-datatypes ((ValueCell!13767 0))(
  ( (ValueCellFull!13767 (v!17171 V!43731)) (EmptyCell!13767) )
))
(declare-datatypes ((array!74704 0))(
  ( (array!74705 (arr!35999 (Array (_ BitVec 32) ValueCell!13767)) (size!36536 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74704)

(declare-fun minValue!944 () V!43731)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!590 (array!74702 array!74704 (_ BitVec 32) (_ BitVec 32) V!43731 V!43731 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37904)

(assert (=> b!1154406 (= lt!517650 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!590 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154407 () Bool)

(assert (=> b!1154407 (= e!656578 true)))

(declare-fun e!656577 () Bool)

(assert (=> b!1154407 e!656577))

(declare-fun res!767236 () Bool)

(assert (=> b!1154407 (=> (not res!767236) (not e!656577))))

(declare-datatypes ((tuple2!18546 0))(
  ( (tuple2!18547 (_1!9283 (_ BitVec 64)) (_2!9283 V!43731)) )
))
(declare-datatypes ((List!25330 0))(
  ( (Nil!25327) (Cons!25326 (h!26535 tuple2!18546) (t!36752 List!25330)) )
))
(declare-datatypes ((ListLongMap!16527 0))(
  ( (ListLongMap!16528 (toList!8279 List!25330)) )
))
(declare-fun lt!517640 () ListLongMap!16527)

(declare-fun lt!517656 () ListLongMap!16527)

(assert (=> b!1154407 (= res!767236 (= lt!517640 lt!517656))))

(declare-fun lt!517646 () ListLongMap!16527)

(declare-fun -!1358 (ListLongMap!16527 (_ BitVec 64)) ListLongMap!16527)

(assert (=> b!1154407 (= lt!517640 (-!1358 lt!517646 k0!934))))

(declare-fun lt!517649 () V!43731)

(declare-fun +!3612 (ListLongMap!16527 tuple2!18546) ListLongMap!16527)

(assert (=> b!1154407 (= (-!1358 (+!3612 lt!517656 (tuple2!18547 (select (arr!35998 _keys!1208) from!1455) lt!517649)) (select (arr!35998 _keys!1208) from!1455)) lt!517656)))

(declare-fun lt!517658 () Unit!37904)

(declare-fun addThenRemoveForNewKeyIsSame!202 (ListLongMap!16527 (_ BitVec 64) V!43731) Unit!37904)

(assert (=> b!1154407 (= lt!517658 (addThenRemoveForNewKeyIsSame!202 lt!517656 (select (arr!35998 _keys!1208) from!1455) lt!517649))))

(declare-fun lt!517648 () V!43731)

(declare-fun get!18364 (ValueCell!13767 V!43731) V!43731)

(assert (=> b!1154407 (= lt!517649 (get!18364 (select (arr!35999 _values!996) from!1455) lt!517648))))

(declare-fun lt!517651 () Unit!37904)

(declare-fun e!656581 () Unit!37904)

(assert (=> b!1154407 (= lt!517651 e!656581)))

(declare-fun c!114617 () Bool)

(declare-fun contains!6768 (ListLongMap!16527 (_ BitVec 64)) Bool)

(assert (=> b!1154407 (= c!114617 (contains!6768 lt!517656 k0!934))))

(declare-fun getCurrentListMapNoExtraKeys!4719 (array!74702 array!74704 (_ BitVec 32) (_ BitVec 32) V!43731 V!43731 (_ BitVec 32) Int) ListLongMap!16527)

(assert (=> b!1154407 (= lt!517656 (getCurrentListMapNoExtraKeys!4719 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45254 () Bool)

(declare-fun mapRes!45254 () Bool)

(assert (=> mapIsEmpty!45254 mapRes!45254))

(declare-fun bm!54614 () Bool)

(declare-fun call!54617 () ListLongMap!16527)

(declare-fun call!54622 () ListLongMap!16527)

(assert (=> bm!54614 (= call!54617 call!54622)))

(declare-fun b!1154408 () Bool)

(declare-fun e!656574 () Bool)

(declare-fun e!656579 () Bool)

(assert (=> b!1154408 (= e!656574 e!656579)))

(declare-fun res!767237 () Bool)

(assert (=> b!1154408 (=> (not res!767237) (not e!656579))))

(declare-fun lt!517638 () array!74702)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74702 (_ BitVec 32)) Bool)

(assert (=> b!1154408 (= res!767237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!517638 mask!1564))))

(assert (=> b!1154408 (= lt!517638 (array!74703 (store (arr!35998 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36535 _keys!1208)))))

(declare-fun b!1154409 () Bool)

(declare-fun res!767235 () Bool)

(assert (=> b!1154409 (=> (not res!767235) (not e!656579))))

(declare-datatypes ((List!25331 0))(
  ( (Nil!25328) (Cons!25327 (h!26536 (_ BitVec 64)) (t!36753 List!25331)) )
))
(declare-fun arrayNoDuplicates!0 (array!74702 (_ BitVec 32) List!25331) Bool)

(assert (=> b!1154409 (= res!767235 (arrayNoDuplicates!0 lt!517638 #b00000000000000000000000000000000 Nil!25328))))

(declare-fun b!1154410 () Bool)

(declare-fun res!767240 () Bool)

(assert (=> b!1154410 (=> (not res!767240) (not e!656574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1154410 (= res!767240 (validMask!0 mask!1564))))

(declare-fun b!1154411 () Bool)

(declare-fun res!767230 () Bool)

(assert (=> b!1154411 (=> (not res!767230) (not e!656574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1154411 (= res!767230 (validKeyInArray!0 k0!934))))

(declare-fun b!1154412 () Bool)

(declare-fun call!54618 () Bool)

(assert (=> b!1154412 call!54618))

(declare-fun lt!517659 () Unit!37904)

(declare-fun call!54619 () Unit!37904)

(assert (=> b!1154412 (= lt!517659 call!54619)))

(declare-fun e!656583 () Unit!37904)

(assert (=> b!1154412 (= e!656583 lt!517659)))

(declare-fun lt!517653 () array!74704)

(declare-fun call!54624 () ListLongMap!16527)

(declare-fun bm!54615 () Bool)

(assert (=> bm!54615 (= call!54624 (getCurrentListMapNoExtraKeys!4719 lt!517638 lt!517653 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154413 () Bool)

(declare-fun res!767229 () Bool)

(assert (=> b!1154413 (=> (not res!767229) (not e!656574))))

(assert (=> b!1154413 (= res!767229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1154414 () Bool)

(declare-fun Unit!37906 () Unit!37904)

(assert (=> b!1154414 (= e!656581 Unit!37906)))

(declare-fun b!1154415 () Bool)

(declare-fun e!656576 () Bool)

(declare-fun lt!517643 () Bool)

(assert (=> b!1154415 (= e!656576 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!517643) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1154416 () Bool)

(assert (=> b!1154416 (= e!656577 (= lt!517640 (getCurrentListMapNoExtraKeys!4719 lt!517638 lt!517653 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun call!54620 () ListLongMap!16527)

(declare-fun b!1154417 () Bool)

(assert (=> b!1154417 (= e!656573 (= call!54624 (-!1358 call!54620 k0!934)))))

(declare-fun b!1154418 () Bool)

(declare-fun res!767243 () Bool)

(assert (=> b!1154418 (=> (not res!767243) (not e!656574))))

(assert (=> b!1154418 (= res!767243 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36535 _keys!1208))))))

(declare-fun bm!54616 () Bool)

(declare-fun c!114613 () Bool)

(declare-fun c!114614 () Bool)

(declare-fun lt!517647 () ListLongMap!16527)

(assert (=> bm!54616 (= call!54622 (+!3612 (ite c!114613 lt!517647 lt!517656) (ite c!114613 (tuple2!18547 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114614 (tuple2!18547 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18547 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1154419 () Bool)

(declare-fun res!767234 () Bool)

(assert (=> b!1154419 (=> (not res!767234) (not e!656574))))

(assert (=> b!1154419 (= res!767234 (and (= (size!36536 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36535 _keys!1208) (size!36536 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1154420 () Bool)

(declare-fun e!656589 () Bool)

(declare-fun arrayContainsKey!0 (array!74702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1154420 (= e!656589 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1154421 () Bool)

(declare-fun e!656582 () Unit!37904)

(assert (=> b!1154421 (= e!656582 e!656583)))

(declare-fun c!114618 () Bool)

(assert (=> b!1154421 (= c!114618 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!517643))))

(declare-fun b!1154422 () Bool)

(assert (=> b!1154422 (= e!656576 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1154423 () Bool)

(declare-fun res!767232 () Bool)

(assert (=> b!1154423 (=> (not res!767232) (not e!656574))))

(assert (=> b!1154423 (= res!767232 (= (select (arr!35998 _keys!1208) i!673) k0!934))))

(declare-fun b!1154424 () Bool)

(declare-fun e!656575 () Bool)

(declare-fun tp_is_empty!28953 () Bool)

(assert (=> b!1154424 (= e!656575 tp_is_empty!28953)))

(declare-fun call!54623 () Unit!37904)

(declare-fun bm!54617 () Bool)

(declare-fun addStillContains!909 (ListLongMap!16527 (_ BitVec 64) V!43731 (_ BitVec 64)) Unit!37904)

(assert (=> bm!54617 (= call!54623 (addStillContains!909 lt!517656 (ite (or c!114613 c!114614) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114613 c!114614) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1154425 () Bool)

(declare-fun lt!517645 () Unit!37904)

(assert (=> b!1154425 (= e!656582 lt!517645)))

(assert (=> b!1154425 (= lt!517645 call!54619)))

(assert (=> b!1154425 call!54618))

(declare-fun b!1154426 () Bool)

(assert (=> b!1154426 (= c!114614 (and (not lt!517643) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!656585 () Unit!37904)

(assert (=> b!1154426 (= e!656585 e!656582)))

(declare-fun bm!54618 () Bool)

(assert (=> bm!54618 (= call!54620 (getCurrentListMapNoExtraKeys!4719 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54619 () Bool)

(assert (=> bm!54619 (= call!54619 call!54623)))

(declare-fun b!1154427 () Bool)

(assert (=> b!1154427 (contains!6768 call!54622 k0!934)))

(declare-fun lt!517641 () Unit!37904)

(assert (=> b!1154427 (= lt!517641 (addStillContains!909 lt!517647 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!54621 () Bool)

(assert (=> b!1154427 call!54621))

(assert (=> b!1154427 (= lt!517647 (+!3612 lt!517656 (tuple2!18547 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!517657 () Unit!37904)

(assert (=> b!1154427 (= lt!517657 call!54623)))

(assert (=> b!1154427 (= e!656585 lt!517641)))

(declare-fun b!1154428 () Bool)

(declare-fun e!656584 () Bool)

(assert (=> b!1154428 (= e!656579 (not e!656584))))

(declare-fun res!767242 () Bool)

(assert (=> b!1154428 (=> res!767242 e!656584)))

(assert (=> b!1154428 (= res!767242 (bvsgt from!1455 i!673))))

(assert (=> b!1154428 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!517642 () Unit!37904)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74702 (_ BitVec 64) (_ BitVec 32)) Unit!37904)

(assert (=> b!1154428 (= lt!517642 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1154429 () Bool)

(declare-fun e!656586 () Bool)

(assert (=> b!1154429 (= e!656586 tp_is_empty!28953)))

(declare-fun bm!54620 () Bool)

(assert (=> bm!54620 (= call!54618 call!54621)))

(declare-fun bm!54621 () Bool)

(assert (=> bm!54621 (= call!54621 (contains!6768 (ite c!114613 lt!517647 call!54617) k0!934))))

(declare-fun b!1154430 () Bool)

(assert (=> b!1154430 (= e!656584 e!656588)))

(declare-fun res!767233 () Bool)

(assert (=> b!1154430 (=> res!767233 e!656588)))

(assert (=> b!1154430 (= res!767233 (not (= from!1455 i!673)))))

(declare-fun lt!517655 () ListLongMap!16527)

(assert (=> b!1154430 (= lt!517655 (getCurrentListMapNoExtraKeys!4719 lt!517638 lt!517653 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1154430 (= lt!517653 (array!74705 (store (arr!35999 _values!996) i!673 (ValueCellFull!13767 lt!517648)) (size!36536 _values!996)))))

(declare-fun dynLambda!2736 (Int (_ BitVec 64)) V!43731)

(assert (=> b!1154430 (= lt!517648 (dynLambda!2736 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1154430 (= lt!517646 (getCurrentListMapNoExtraKeys!4719 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1154431 () Bool)

(assert (=> b!1154431 (= e!656573 (= call!54624 call!54620))))

(declare-fun res!767239 () Bool)

(assert (=> start!98854 (=> (not res!767239) (not e!656574))))

(assert (=> start!98854 (= res!767239 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36535 _keys!1208))))))

(assert (=> start!98854 e!656574))

(assert (=> start!98854 tp_is_empty!28953))

(declare-fun array_inv!27432 (array!74702) Bool)

(assert (=> start!98854 (array_inv!27432 _keys!1208)))

(assert (=> start!98854 true))

(assert (=> start!98854 tp!85980))

(declare-fun e!656580 () Bool)

(declare-fun array_inv!27433 (array!74704) Bool)

(assert (=> start!98854 (and (array_inv!27433 _values!996) e!656580)))

(declare-fun b!1154432 () Bool)

(assert (=> b!1154432 (= e!656580 (and e!656586 mapRes!45254))))

(declare-fun condMapEmpty!45254 () Bool)

(declare-fun mapDefault!45254 () ValueCell!13767)

(assert (=> b!1154432 (= condMapEmpty!45254 (= (arr!35999 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13767)) mapDefault!45254)))))

(declare-fun b!1154433 () Bool)

(declare-fun res!767241 () Bool)

(assert (=> b!1154433 (=> (not res!767241) (not e!656574))))

(assert (=> b!1154433 (= res!767241 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25328))))

(declare-fun mapNonEmpty!45254 () Bool)

(declare-fun tp!85981 () Bool)

(assert (=> mapNonEmpty!45254 (= mapRes!45254 (and tp!85981 e!656575))))

(declare-fun mapRest!45254 () (Array (_ BitVec 32) ValueCell!13767))

(declare-fun mapKey!45254 () (_ BitVec 32))

(declare-fun mapValue!45254 () ValueCell!13767)

(assert (=> mapNonEmpty!45254 (= (arr!35999 _values!996) (store mapRest!45254 mapKey!45254 mapValue!45254))))

(declare-fun b!1154434 () Bool)

(declare-fun Unit!37907 () Unit!37904)

(assert (=> b!1154434 (= e!656581 Unit!37907)))

(assert (=> b!1154434 (= lt!517643 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1154434 (= c!114613 (and (not lt!517643) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!517652 () Unit!37904)

(assert (=> b!1154434 (= lt!517652 e!656585)))

(declare-fun lt!517644 () Unit!37904)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!489 (array!74702 array!74704 (_ BitVec 32) (_ BitVec 32) V!43731 V!43731 (_ BitVec 64) (_ BitVec 32) Int) Unit!37904)

(assert (=> b!1154434 (= lt!517644 (lemmaListMapContainsThenArrayContainsFrom!489 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114615 () Bool)

(assert (=> b!1154434 (= c!114615 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767238 () Bool)

(assert (=> b!1154434 (= res!767238 e!656576)))

(assert (=> b!1154434 (=> (not res!767238) (not e!656589))))

(assert (=> b!1154434 e!656589))

(declare-fun lt!517654 () Unit!37904)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74702 (_ BitVec 32) (_ BitVec 32)) Unit!37904)

(assert (=> b!1154434 (= lt!517654 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1154434 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25328)))

(declare-fun lt!517639 () Unit!37904)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74702 (_ BitVec 64) (_ BitVec 32) List!25331) Unit!37904)

(assert (=> b!1154434 (= lt!517639 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25328))))

(assert (=> b!1154434 false))

(declare-fun b!1154435 () Bool)

(declare-fun Unit!37908 () Unit!37904)

(assert (=> b!1154435 (= e!656583 Unit!37908)))

(assert (= (and start!98854 res!767239) b!1154410))

(assert (= (and b!1154410 res!767240) b!1154419))

(assert (= (and b!1154419 res!767234) b!1154413))

(assert (= (and b!1154413 res!767229) b!1154433))

(assert (= (and b!1154433 res!767241) b!1154418))

(assert (= (and b!1154418 res!767243) b!1154411))

(assert (= (and b!1154411 res!767230) b!1154423))

(assert (= (and b!1154423 res!767232) b!1154408))

(assert (= (and b!1154408 res!767237) b!1154409))

(assert (= (and b!1154409 res!767235) b!1154428))

(assert (= (and b!1154428 (not res!767242)) b!1154430))

(assert (= (and b!1154430 (not res!767233)) b!1154406))

(assert (= (and b!1154406 c!114616) b!1154417))

(assert (= (and b!1154406 (not c!114616)) b!1154431))

(assert (= (or b!1154417 b!1154431) bm!54615))

(assert (= (or b!1154417 b!1154431) bm!54618))

(assert (= (and b!1154406 (not res!767231)) b!1154407))

(assert (= (and b!1154407 c!114617) b!1154434))

(assert (= (and b!1154407 (not c!114617)) b!1154414))

(assert (= (and b!1154434 c!114613) b!1154427))

(assert (= (and b!1154434 (not c!114613)) b!1154426))

(assert (= (and b!1154426 c!114614) b!1154425))

(assert (= (and b!1154426 (not c!114614)) b!1154421))

(assert (= (and b!1154421 c!114618) b!1154412))

(assert (= (and b!1154421 (not c!114618)) b!1154435))

(assert (= (or b!1154425 b!1154412) bm!54619))

(assert (= (or b!1154425 b!1154412) bm!54614))

(assert (= (or b!1154425 b!1154412) bm!54620))

(assert (= (or b!1154427 bm!54620) bm!54621))

(assert (= (or b!1154427 bm!54619) bm!54617))

(assert (= (or b!1154427 bm!54614) bm!54616))

(assert (= (and b!1154434 c!114615) b!1154422))

(assert (= (and b!1154434 (not c!114615)) b!1154415))

(assert (= (and b!1154434 res!767238) b!1154420))

(assert (= (and b!1154407 res!767236) b!1154416))

(assert (= (and b!1154432 condMapEmpty!45254) mapIsEmpty!45254))

(assert (= (and b!1154432 (not condMapEmpty!45254)) mapNonEmpty!45254))

(get-info :version)

(assert (= (and mapNonEmpty!45254 ((_ is ValueCellFull!13767) mapValue!45254)) b!1154424))

(assert (= (and b!1154432 ((_ is ValueCellFull!13767) mapDefault!45254)) b!1154429))

(assert (= start!98854 b!1154432))

(declare-fun b_lambda!19547 () Bool)

(assert (=> (not b_lambda!19547) (not b!1154430)))

(declare-fun t!36751 () Bool)

(declare-fun tb!9243 () Bool)

(assert (=> (and start!98854 (= defaultEntry!1004 defaultEntry!1004) t!36751) tb!9243))

(declare-fun result!19043 () Bool)

(assert (=> tb!9243 (= result!19043 tp_is_empty!28953)))

(assert (=> b!1154430 t!36751))

(declare-fun b_and!39711 () Bool)

(assert (= b_and!39709 (and (=> t!36751 result!19043) b_and!39711)))

(declare-fun m!1064179 () Bool)

(assert (=> b!1154430 m!1064179))

(declare-fun m!1064181 () Bool)

(assert (=> b!1154430 m!1064181))

(declare-fun m!1064183 () Bool)

(assert (=> b!1154430 m!1064183))

(declare-fun m!1064185 () Bool)

(assert (=> b!1154430 m!1064185))

(declare-fun m!1064187 () Bool)

(assert (=> b!1154413 m!1064187))

(declare-fun m!1064189 () Bool)

(assert (=> b!1154422 m!1064189))

(declare-fun m!1064191 () Bool)

(assert (=> b!1154423 m!1064191))

(declare-fun m!1064193 () Bool)

(assert (=> bm!54615 m!1064193))

(declare-fun m!1064195 () Bool)

(assert (=> b!1154433 m!1064195))

(assert (=> b!1154420 m!1064189))

(declare-fun m!1064197 () Bool)

(assert (=> bm!54617 m!1064197))

(declare-fun m!1064199 () Bool)

(assert (=> bm!54621 m!1064199))

(declare-fun m!1064201 () Bool)

(assert (=> b!1154408 m!1064201))

(declare-fun m!1064203 () Bool)

(assert (=> b!1154408 m!1064203))

(declare-fun m!1064205 () Bool)

(assert (=> b!1154406 m!1064205))

(declare-fun m!1064207 () Bool)

(assert (=> b!1154406 m!1064207))

(declare-fun m!1064209 () Bool)

(assert (=> mapNonEmpty!45254 m!1064209))

(declare-fun m!1064211 () Bool)

(assert (=> b!1154409 m!1064211))

(declare-fun m!1064213 () Bool)

(assert (=> bm!54618 m!1064213))

(declare-fun m!1064215 () Bool)

(assert (=> start!98854 m!1064215))

(declare-fun m!1064217 () Bool)

(assert (=> start!98854 m!1064217))

(declare-fun m!1064219 () Bool)

(assert (=> b!1154410 m!1064219))

(declare-fun m!1064221 () Bool)

(assert (=> b!1154434 m!1064221))

(declare-fun m!1064223 () Bool)

(assert (=> b!1154434 m!1064223))

(declare-fun m!1064225 () Bool)

(assert (=> b!1154434 m!1064225))

(declare-fun m!1064227 () Bool)

(assert (=> b!1154434 m!1064227))

(declare-fun m!1064229 () Bool)

(assert (=> b!1154417 m!1064229))

(declare-fun m!1064231 () Bool)

(assert (=> b!1154411 m!1064231))

(assert (=> b!1154416 m!1064193))

(declare-fun m!1064233 () Bool)

(assert (=> b!1154427 m!1064233))

(declare-fun m!1064235 () Bool)

(assert (=> b!1154427 m!1064235))

(declare-fun m!1064237 () Bool)

(assert (=> b!1154427 m!1064237))

(declare-fun m!1064239 () Bool)

(assert (=> bm!54616 m!1064239))

(assert (=> b!1154407 m!1064213))

(declare-fun m!1064241 () Bool)

(assert (=> b!1154407 m!1064241))

(assert (=> b!1154407 m!1064205))

(declare-fun m!1064243 () Bool)

(assert (=> b!1154407 m!1064243))

(declare-fun m!1064245 () Bool)

(assert (=> b!1154407 m!1064245))

(assert (=> b!1154407 m!1064241))

(declare-fun m!1064247 () Bool)

(assert (=> b!1154407 m!1064247))

(declare-fun m!1064249 () Bool)

(assert (=> b!1154407 m!1064249))

(assert (=> b!1154407 m!1064205))

(assert (=> b!1154407 m!1064245))

(assert (=> b!1154407 m!1064205))

(declare-fun m!1064251 () Bool)

(assert (=> b!1154407 m!1064251))

(declare-fun m!1064253 () Bool)

(assert (=> b!1154407 m!1064253))

(declare-fun m!1064255 () Bool)

(assert (=> b!1154428 m!1064255))

(declare-fun m!1064257 () Bool)

(assert (=> b!1154428 m!1064257))

(check-sat (not b!1154408) (not start!98854) tp_is_empty!28953 (not b!1154411) (not bm!54618) (not b!1154433) (not b_lambda!19547) (not b!1154416) (not b!1154406) (not b!1154407) (not bm!54615) (not b!1154417) (not b!1154428) (not b!1154427) (not b!1154422) (not b_next!24423) (not b!1154430) (not bm!54617) (not bm!54616) (not b!1154413) (not mapNonEmpty!45254) (not b!1154434) (not b!1154410) (not b!1154409) (not bm!54621) (not b!1154420) b_and!39711)
(check-sat b_and!39711 (not b_next!24423))
