; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98730 () Bool)

(assert start!98730)

(declare-fun b_free!24299 () Bool)

(declare-fun b_next!24299 () Bool)

(assert (=> start!98730 (= b_free!24299 (not b_next!24299))))

(declare-fun tp!85609 () Bool)

(declare-fun b_and!39461 () Bool)

(assert (=> start!98730 (= tp!85609 b_and!39461)))

(declare-fun b!1148702 () Bool)

(declare-datatypes ((Unit!37673 0))(
  ( (Unit!37674) )
))
(declare-fun e!653413 () Unit!37673)

(declare-fun e!653426 () Unit!37673)

(assert (=> b!1148702 (= e!653413 e!653426)))

(declare-fun c!113498 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!513573 () Bool)

(assert (=> b!1148702 (= c!113498 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513573))))

(declare-fun b!1148703 () Bool)

(declare-fun res!764448 () Bool)

(declare-fun e!653415 () Bool)

(assert (=> b!1148703 (=> (not res!764448) (not e!653415))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1148703 (= res!764448 (validKeyInArray!0 k!934))))

(declare-fun e!653422 () Bool)

(declare-fun b!1148705 () Bool)

(assert (=> b!1148705 (= e!653422 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513573) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1148706 () Bool)

(declare-fun res!764444 () Bool)

(assert (=> b!1148706 (=> (not res!764444) (not e!653415))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74462 0))(
  ( (array!74463 (arr!35878 (Array (_ BitVec 32) (_ BitVec 64))) (size!36415 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74462)

(assert (=> b!1148706 (= res!764444 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36415 _keys!1208))))))

(declare-fun b!1148707 () Bool)

(declare-fun res!764439 () Bool)

(assert (=> b!1148707 (=> (not res!764439) (not e!653415))))

(assert (=> b!1148707 (= res!764439 (= (select (arr!35878 _keys!1208) i!673) k!934))))

(declare-datatypes ((V!43565 0))(
  ( (V!43566 (val!14471 Int)) )
))
(declare-fun zeroValue!944 () V!43565)

(declare-fun c!113502 () Bool)

(declare-datatypes ((tuple2!18434 0))(
  ( (tuple2!18435 (_1!9227 (_ BitVec 64)) (_2!9227 V!43565)) )
))
(declare-datatypes ((List!25227 0))(
  ( (Nil!25224) (Cons!25223 (h!26432 tuple2!18434) (t!36525 List!25227)) )
))
(declare-datatypes ((ListLongMap!16415 0))(
  ( (ListLongMap!16416 (toList!8223 List!25227)) )
))
(declare-fun call!53136 () ListLongMap!16415)

(declare-fun lt!513561 () ListLongMap!16415)

(declare-fun bm!53126 () Bool)

(declare-fun c!113497 () Bool)

(declare-fun minValue!944 () V!43565)

(declare-fun +!3562 (ListLongMap!16415 tuple2!18434) ListLongMap!16415)

(assert (=> bm!53126 (= call!53136 (+!3562 lt!513561 (ite (or c!113502 c!113497) (tuple2!18435 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18435 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1148708 () Bool)

(declare-fun lt!513571 () Unit!37673)

(assert (=> b!1148708 (= e!653413 lt!513571)))

(declare-fun call!53135 () Unit!37673)

(assert (=> b!1148708 (= lt!513571 call!53135)))

(declare-fun call!53133 () Bool)

(assert (=> b!1148708 call!53133))

(declare-fun b!1148709 () Bool)

(assert (=> b!1148709 call!53133))

(declare-fun lt!513569 () Unit!37673)

(assert (=> b!1148709 (= lt!513569 call!53135)))

(assert (=> b!1148709 (= e!653426 lt!513569)))

(declare-fun b!1148710 () Bool)

(declare-fun res!764450 () Bool)

(assert (=> b!1148710 (=> (not res!764450) (not e!653415))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1148710 (= res!764450 (validMask!0 mask!1564))))

(declare-fun call!53132 () ListLongMap!16415)

(declare-fun b!1148711 () Bool)

(declare-fun e!653425 () Bool)

(declare-fun call!53134 () ListLongMap!16415)

(declare-fun -!1312 (ListLongMap!16415 (_ BitVec 64)) ListLongMap!16415)

(assert (=> b!1148711 (= e!653425 (= call!53132 (-!1312 call!53134 k!934)))))

(declare-fun b!1148712 () Bool)

(declare-fun e!653424 () Unit!37673)

(declare-fun Unit!37675 () Unit!37673)

(assert (=> b!1148712 (= e!653424 Unit!37675)))

(assert (=> b!1148712 (= lt!513573 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1148712 (= c!113502 (and (not lt!513573) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513560 () Unit!37673)

(declare-fun e!653421 () Unit!37673)

(assert (=> b!1148712 (= lt!513560 e!653421)))

(declare-fun lt!513576 () Unit!37673)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13705 0))(
  ( (ValueCellFull!13705 (v!17109 V!43565)) (EmptyCell!13705) )
))
(declare-datatypes ((array!74464 0))(
  ( (array!74465 (arr!35879 (Array (_ BitVec 32) ValueCell!13705)) (size!36416 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74464)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!447 (array!74462 array!74464 (_ BitVec 32) (_ BitVec 32) V!43565 V!43565 (_ BitVec 64) (_ BitVec 32) Int) Unit!37673)

(assert (=> b!1148712 (= lt!513576 (lemmaListMapContainsThenArrayContainsFrom!447 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113500 () Bool)

(assert (=> b!1148712 (= c!113500 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764452 () Bool)

(assert (=> b!1148712 (= res!764452 e!653422)))

(declare-fun e!653427 () Bool)

(assert (=> b!1148712 (=> (not res!764452) (not e!653427))))

(assert (=> b!1148712 e!653427))

(declare-fun lt!513575 () Unit!37673)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74462 (_ BitVec 32) (_ BitVec 32)) Unit!37673)

(assert (=> b!1148712 (= lt!513575 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25228 0))(
  ( (Nil!25225) (Cons!25224 (h!26433 (_ BitVec 64)) (t!36526 List!25228)) )
))
(declare-fun arrayNoDuplicates!0 (array!74462 (_ BitVec 32) List!25228) Bool)

(assert (=> b!1148712 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25225)))

(declare-fun lt!513558 () Unit!37673)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74462 (_ BitVec 64) (_ BitVec 32) List!25228) Unit!37673)

(assert (=> b!1148712 (= lt!513558 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25225))))

(assert (=> b!1148712 false))

(declare-fun bm!53127 () Bool)

(declare-fun call!53129 () Unit!37673)

(assert (=> bm!53127 (= call!53135 call!53129)))

(declare-fun b!1148713 () Bool)

(declare-fun e!653414 () Bool)

(declare-fun e!653418 () Bool)

(assert (=> b!1148713 (= e!653414 e!653418)))

(declare-fun res!764447 () Bool)

(assert (=> b!1148713 (=> res!764447 e!653418)))

(assert (=> b!1148713 (= res!764447 (not (= from!1455 i!673)))))

(declare-fun lt!513557 () ListLongMap!16415)

(declare-fun lt!513570 () array!74462)

(declare-fun lt!513565 () array!74464)

(declare-fun getCurrentListMapNoExtraKeys!4664 (array!74462 array!74464 (_ BitVec 32) (_ BitVec 32) V!43565 V!43565 (_ BitVec 32) Int) ListLongMap!16415)

(assert (=> b!1148713 (= lt!513557 (getCurrentListMapNoExtraKeys!4664 lt!513570 lt!513565 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!513559 () V!43565)

(assert (=> b!1148713 (= lt!513565 (array!74465 (store (arr!35879 _values!996) i!673 (ValueCellFull!13705 lt!513559)) (size!36416 _values!996)))))

(declare-fun dynLambda!2695 (Int (_ BitVec 64)) V!43565)

(assert (=> b!1148713 (= lt!513559 (dynLambda!2695 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!513574 () ListLongMap!16415)

(assert (=> b!1148713 (= lt!513574 (getCurrentListMapNoExtraKeys!4664 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1148714 () Bool)

(declare-fun res!764441 () Bool)

(assert (=> b!1148714 (=> (not res!764441) (not e!653415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74462 (_ BitVec 32)) Bool)

(assert (=> b!1148714 (= res!764441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1148715 () Bool)

(declare-fun e!653412 () Bool)

(assert (=> b!1148715 (= e!653412 true)))

(declare-fun e!653419 () Bool)

(assert (=> b!1148715 e!653419))

(declare-fun res!764445 () Bool)

(assert (=> b!1148715 (=> (not res!764445) (not e!653419))))

(declare-fun lt!513556 () V!43565)

(assert (=> b!1148715 (= res!764445 (= (-!1312 (+!3562 lt!513561 (tuple2!18435 (select (arr!35878 _keys!1208) from!1455) lt!513556)) (select (arr!35878 _keys!1208) from!1455)) lt!513561))))

(declare-fun lt!513572 () Unit!37673)

(declare-fun addThenRemoveForNewKeyIsSame!161 (ListLongMap!16415 (_ BitVec 64) V!43565) Unit!37673)

(assert (=> b!1148715 (= lt!513572 (addThenRemoveForNewKeyIsSame!161 lt!513561 (select (arr!35878 _keys!1208) from!1455) lt!513556))))

(declare-fun get!18281 (ValueCell!13705 V!43565) V!43565)

(assert (=> b!1148715 (= lt!513556 (get!18281 (select (arr!35879 _values!996) from!1455) lt!513559))))

(declare-fun lt!513567 () Unit!37673)

(assert (=> b!1148715 (= lt!513567 e!653424)))

(declare-fun c!113499 () Bool)

(declare-fun contains!6719 (ListLongMap!16415 (_ BitVec 64)) Bool)

(assert (=> b!1148715 (= c!113499 (contains!6719 lt!513561 k!934))))

(assert (=> b!1148715 (= lt!513561 (getCurrentListMapNoExtraKeys!4664 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148716 () Bool)

(declare-fun lt!513564 () ListLongMap!16415)

(assert (=> b!1148716 (contains!6719 (+!3562 lt!513564 (tuple2!18435 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!513562 () Unit!37673)

(assert (=> b!1148716 (= lt!513562 call!53129)))

(declare-fun call!53130 () Bool)

(assert (=> b!1148716 call!53130))

(assert (=> b!1148716 (= lt!513564 call!53136)))

(declare-fun lt!513566 () Unit!37673)

(declare-fun addStillContains!861 (ListLongMap!16415 (_ BitVec 64) V!43565 (_ BitVec 64)) Unit!37673)

(assert (=> b!1148716 (= lt!513566 (addStillContains!861 lt!513561 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1148716 (= e!653421 lt!513562)))

(declare-fun bm!53128 () Bool)

(assert (=> bm!53128 (= call!53133 call!53130)))

(declare-fun b!1148704 () Bool)

(assert (=> b!1148704 (= c!113497 (and (not lt!513573) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1148704 (= e!653421 e!653413)))

(declare-fun res!764449 () Bool)

(assert (=> start!98730 (=> (not res!764449) (not e!653415))))

(assert (=> start!98730 (= res!764449 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36415 _keys!1208))))))

(assert (=> start!98730 e!653415))

(declare-fun tp_is_empty!28829 () Bool)

(assert (=> start!98730 tp_is_empty!28829))

(declare-fun array_inv!27360 (array!74462) Bool)

(assert (=> start!98730 (array_inv!27360 _keys!1208)))

(assert (=> start!98730 true))

(assert (=> start!98730 tp!85609))

(declare-fun e!653420 () Bool)

(declare-fun array_inv!27361 (array!74464) Bool)

(assert (=> start!98730 (and (array_inv!27361 _values!996) e!653420)))

(declare-fun b!1148717 () Bool)

(declare-fun Unit!37676 () Unit!37673)

(assert (=> b!1148717 (= e!653426 Unit!37676)))

(declare-fun b!1148718 () Bool)

(assert (=> b!1148718 (= e!653425 (= call!53134 call!53132))))

(declare-fun b!1148719 () Bool)

(assert (=> b!1148719 (= e!653418 e!653412)))

(declare-fun res!764453 () Bool)

(assert (=> b!1148719 (=> res!764453 e!653412)))

(assert (=> b!1148719 (= res!764453 (not (= (select (arr!35878 _keys!1208) from!1455) k!934)))))

(assert (=> b!1148719 e!653425))

(declare-fun c!113501 () Bool)

(assert (=> b!1148719 (= c!113501 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!513568 () Unit!37673)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!555 (array!74462 array!74464 (_ BitVec 32) (_ BitVec 32) V!43565 V!43565 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37673)

(assert (=> b!1148719 (= lt!513568 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!555 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148720 () Bool)

(declare-fun arrayContainsKey!0 (array!74462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1148720 (= e!653427 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148721 () Bool)

(declare-fun res!764446 () Bool)

(assert (=> b!1148721 (=> (not res!764446) (not e!653415))))

(assert (=> b!1148721 (= res!764446 (and (= (size!36416 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36415 _keys!1208) (size!36416 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!53129 () Bool)

(declare-fun call!53131 () ListLongMap!16415)

(assert (=> bm!53129 (= call!53131 call!53136)))

(declare-fun b!1148722 () Bool)

(declare-fun e!653416 () Bool)

(assert (=> b!1148722 (= e!653416 (not e!653414))))

(declare-fun res!764442 () Bool)

(assert (=> b!1148722 (=> res!764442 e!653414)))

(assert (=> b!1148722 (= res!764442 (bvsgt from!1455 i!673))))

(assert (=> b!1148722 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!513563 () Unit!37673)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74462 (_ BitVec 64) (_ BitVec 32)) Unit!37673)

(assert (=> b!1148722 (= lt!513563 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!45068 () Bool)

(declare-fun mapRes!45068 () Bool)

(assert (=> mapIsEmpty!45068 mapRes!45068))

(declare-fun mapNonEmpty!45068 () Bool)

(declare-fun tp!85608 () Bool)

(declare-fun e!653411 () Bool)

(assert (=> mapNonEmpty!45068 (= mapRes!45068 (and tp!85608 e!653411))))

(declare-fun mapKey!45068 () (_ BitVec 32))

(declare-fun mapValue!45068 () ValueCell!13705)

(declare-fun mapRest!45068 () (Array (_ BitVec 32) ValueCell!13705))

(assert (=> mapNonEmpty!45068 (= (arr!35879 _values!996) (store mapRest!45068 mapKey!45068 mapValue!45068))))

(declare-fun b!1148723 () Bool)

(assert (=> b!1148723 (= e!653411 tp_is_empty!28829)))

(declare-fun b!1148724 () Bool)

(declare-fun e!653417 () Bool)

(assert (=> b!1148724 (= e!653417 tp_is_empty!28829)))

(declare-fun b!1148725 () Bool)

(assert (=> b!1148725 (= e!653420 (and e!653417 mapRes!45068))))

(declare-fun condMapEmpty!45068 () Bool)

(declare-fun mapDefault!45068 () ValueCell!13705)

