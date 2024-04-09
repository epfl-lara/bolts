; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98734 () Bool)

(assert start!98734)

(declare-fun b_free!24303 () Bool)

(declare-fun b_next!24303 () Bool)

(assert (=> start!98734 (= b_free!24303 (not b_next!24303))))

(declare-fun tp!85620 () Bool)

(declare-fun b_and!39469 () Bool)

(assert (=> start!98734 (= tp!85620 b_and!39469)))

(declare-fun b!1148886 () Bool)

(declare-fun e!653528 () Bool)

(declare-fun e!653523 () Bool)

(assert (=> b!1148886 (= e!653528 e!653523)))

(declare-fun res!764531 () Bool)

(assert (=> b!1148886 (=> res!764531 e!653523)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1148886 (= res!764531 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43571 0))(
  ( (V!43572 (val!14473 Int)) )
))
(declare-fun zeroValue!944 () V!43571)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13707 0))(
  ( (ValueCellFull!13707 (v!17111 V!43571)) (EmptyCell!13707) )
))
(declare-datatypes ((array!74470 0))(
  ( (array!74471 (arr!35882 (Array (_ BitVec 32) ValueCell!13707)) (size!36419 (_ BitVec 32))) )
))
(declare-fun lt!513683 () array!74470)

(declare-fun minValue!944 () V!43571)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18438 0))(
  ( (tuple2!18439 (_1!9229 (_ BitVec 64)) (_2!9229 V!43571)) )
))
(declare-datatypes ((List!25231 0))(
  ( (Nil!25228) (Cons!25227 (h!26436 tuple2!18438) (t!36533 List!25231)) )
))
(declare-datatypes ((ListLongMap!16419 0))(
  ( (ListLongMap!16420 (toList!8225 List!25231)) )
))
(declare-fun lt!513697 () ListLongMap!16419)

(declare-datatypes ((array!74472 0))(
  ( (array!74473 (arr!35883 (Array (_ BitVec 32) (_ BitVec 64))) (size!36420 (_ BitVec 32))) )
))
(declare-fun lt!513688 () array!74472)

(declare-fun getCurrentListMapNoExtraKeys!4666 (array!74472 array!74470 (_ BitVec 32) (_ BitVec 32) V!43571 V!43571 (_ BitVec 32) Int) ListLongMap!16419)

(assert (=> b!1148886 (= lt!513697 (getCurrentListMapNoExtraKeys!4666 lt!513688 lt!513683 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!513698 () V!43571)

(declare-fun _values!996 () array!74470)

(assert (=> b!1148886 (= lt!513683 (array!74471 (store (arr!35882 _values!996) i!673 (ValueCellFull!13707 lt!513698)) (size!36419 _values!996)))))

(declare-fun dynLambda!2697 (Int (_ BitVec 64)) V!43571)

(assert (=> b!1148886 (= lt!513698 (dynLambda!2697 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74472)

(declare-fun lt!513685 () ListLongMap!16419)

(assert (=> b!1148886 (= lt!513685 (getCurrentListMapNoExtraKeys!4666 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!53174 () Bool)

(declare-fun call!53177 () Bool)

(declare-fun call!53184 () Bool)

(assert (=> bm!53174 (= call!53177 call!53184)))

(declare-fun b!1148887 () Bool)

(declare-datatypes ((Unit!37680 0))(
  ( (Unit!37681) )
))
(declare-fun e!653515 () Unit!37680)

(declare-fun Unit!37682 () Unit!37680)

(assert (=> b!1148887 (= e!653515 Unit!37682)))

(declare-fun b!1148888 () Bool)

(declare-fun c!113533 () Bool)

(declare-fun lt!513691 () Bool)

(assert (=> b!1148888 (= c!113533 (and (not lt!513691) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!653519 () Unit!37680)

(declare-fun e!653522 () Unit!37680)

(assert (=> b!1148888 (= e!653519 e!653522)))

(declare-fun mapNonEmpty!45074 () Bool)

(declare-fun mapRes!45074 () Bool)

(declare-fun tp!85621 () Bool)

(declare-fun e!653514 () Bool)

(assert (=> mapNonEmpty!45074 (= mapRes!45074 (and tp!85621 e!653514))))

(declare-fun mapValue!45074 () ValueCell!13707)

(declare-fun mapRest!45074 () (Array (_ BitVec 32) ValueCell!13707))

(declare-fun mapKey!45074 () (_ BitVec 32))

(assert (=> mapNonEmpty!45074 (= (arr!35882 _values!996) (store mapRest!45074 mapKey!45074 mapValue!45074))))

(declare-fun bm!53175 () Bool)

(declare-fun call!53182 () ListLongMap!16419)

(assert (=> bm!53175 (= call!53182 (getCurrentListMapNoExtraKeys!4666 lt!513688 lt!513683 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!653526 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1148889 () Bool)

(declare-fun arrayContainsKey!0 (array!74472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1148889 (= e!653526 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148890 () Bool)

(assert (=> b!1148890 call!53177))

(declare-fun lt!513695 () Unit!37680)

(declare-fun call!53179 () Unit!37680)

(assert (=> b!1148890 (= lt!513695 call!53179)))

(assert (=> b!1148890 (= e!653515 lt!513695)))

(declare-fun b!1148891 () Bool)

(declare-fun res!764536 () Bool)

(declare-fun e!653520 () Bool)

(assert (=> b!1148891 (=> (not res!764536) (not e!653520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74472 (_ BitVec 32)) Bool)

(assert (=> b!1148891 (= res!764536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun e!653513 () Bool)

(declare-fun call!53183 () ListLongMap!16419)

(declare-fun b!1148892 () Bool)

(declare-fun -!1313 (ListLongMap!16419 (_ BitVec 64)) ListLongMap!16419)

(assert (=> b!1148892 (= e!653513 (= call!53182 (-!1313 call!53183 k0!934)))))

(declare-fun b!1148893 () Bool)

(declare-fun e!653529 () Unit!37680)

(declare-fun Unit!37683 () Unit!37680)

(assert (=> b!1148893 (= e!653529 Unit!37683)))

(declare-fun b!1148894 () Bool)

(declare-fun res!764541 () Bool)

(assert (=> b!1148894 (=> (not res!764541) (not e!653520))))

(assert (=> b!1148894 (= res!764541 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36420 _keys!1208))))))

(declare-fun b!1148895 () Bool)

(declare-fun e!653524 () Bool)

(declare-fun e!653517 () Bool)

(assert (=> b!1148895 (= e!653524 (and e!653517 mapRes!45074))))

(declare-fun condMapEmpty!45074 () Bool)

(declare-fun mapDefault!45074 () ValueCell!13707)

(assert (=> b!1148895 (= condMapEmpty!45074 (= (arr!35882 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13707)) mapDefault!45074)))))

(declare-fun b!1148896 () Bool)

(declare-fun lt!513684 () Unit!37680)

(assert (=> b!1148896 (= e!653522 lt!513684)))

(assert (=> b!1148896 (= lt!513684 call!53179)))

(assert (=> b!1148896 call!53177))

(declare-fun b!1148897 () Bool)

(declare-fun res!764532 () Bool)

(assert (=> b!1148897 (=> (not res!764532) (not e!653520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1148897 (= res!764532 (validKeyInArray!0 k0!934))))

(declare-fun b!1148898 () Bool)

(assert (=> b!1148898 (= e!653513 (= call!53182 call!53183))))

(declare-fun bm!53176 () Bool)

(declare-fun call!53181 () ListLongMap!16419)

(declare-fun call!53178 () ListLongMap!16419)

(assert (=> bm!53176 (= call!53181 call!53178)))

(declare-fun b!1148899 () Bool)

(declare-fun Unit!37684 () Unit!37680)

(assert (=> b!1148899 (= e!653529 Unit!37684)))

(assert (=> b!1148899 (= lt!513691 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113537 () Bool)

(assert (=> b!1148899 (= c!113537 (and (not lt!513691) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513700 () Unit!37680)

(assert (=> b!1148899 (= lt!513700 e!653519)))

(declare-fun lt!513702 () Unit!37680)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!449 (array!74472 array!74470 (_ BitVec 32) (_ BitVec 32) V!43571 V!43571 (_ BitVec 64) (_ BitVec 32) Int) Unit!37680)

(assert (=> b!1148899 (= lt!513702 (lemmaListMapContainsThenArrayContainsFrom!449 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113534 () Bool)

(assert (=> b!1148899 (= c!113534 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764535 () Bool)

(assert (=> b!1148899 (= res!764535 e!653526)))

(declare-fun e!653525 () Bool)

(assert (=> b!1148899 (=> (not res!764535) (not e!653525))))

(assert (=> b!1148899 e!653525))

(declare-fun lt!513693 () Unit!37680)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74472 (_ BitVec 32) (_ BitVec 32)) Unit!37680)

(assert (=> b!1148899 (= lt!513693 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25232 0))(
  ( (Nil!25229) (Cons!25228 (h!26437 (_ BitVec 64)) (t!36534 List!25232)) )
))
(declare-fun arrayNoDuplicates!0 (array!74472 (_ BitVec 32) List!25232) Bool)

(assert (=> b!1148899 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25229)))

(declare-fun lt!513692 () Unit!37680)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74472 (_ BitVec 64) (_ BitVec 32) List!25232) Unit!37680)

(assert (=> b!1148899 (= lt!513692 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25229))))

(assert (=> b!1148899 false))

(declare-fun b!1148900 () Bool)

(declare-fun res!764540 () Bool)

(assert (=> b!1148900 (=> (not res!764540) (not e!653520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1148900 (= res!764540 (validMask!0 mask!1564))))

(declare-fun b!1148901 () Bool)

(declare-fun tp_is_empty!28833 () Bool)

(assert (=> b!1148901 (= e!653514 tp_is_empty!28833)))

(declare-fun b!1148902 () Bool)

(declare-fun e!653518 () Bool)

(declare-fun lt!513689 () ListLongMap!16419)

(assert (=> b!1148902 (= e!653518 (= (-!1313 lt!513685 k0!934) lt!513689))))

(declare-fun b!1148903 () Bool)

(declare-fun res!764533 () Bool)

(assert (=> b!1148903 (=> (not res!764533) (not e!653520))))

(assert (=> b!1148903 (= res!764533 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25229))))

(declare-fun b!1148904 () Bool)

(declare-fun e!653527 () Bool)

(assert (=> b!1148904 (= e!653527 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36420 _keys!1208))))))

(assert (=> b!1148904 e!653518))

(declare-fun res!764534 () Bool)

(assert (=> b!1148904 (=> (not res!764534) (not e!653518))))

(declare-fun lt!513701 () V!43571)

(declare-fun +!3563 (ListLongMap!16419 tuple2!18438) ListLongMap!16419)

(assert (=> b!1148904 (= res!764534 (= (-!1313 (+!3563 lt!513689 (tuple2!18439 (select (arr!35883 _keys!1208) from!1455) lt!513701)) (select (arr!35883 _keys!1208) from!1455)) lt!513689))))

(declare-fun lt!513686 () Unit!37680)

(declare-fun addThenRemoveForNewKeyIsSame!162 (ListLongMap!16419 (_ BitVec 64) V!43571) Unit!37680)

(assert (=> b!1148904 (= lt!513686 (addThenRemoveForNewKeyIsSame!162 lt!513689 (select (arr!35883 _keys!1208) from!1455) lt!513701))))

(declare-fun get!18284 (ValueCell!13707 V!43571) V!43571)

(assert (=> b!1148904 (= lt!513701 (get!18284 (select (arr!35882 _values!996) from!1455) lt!513698))))

(declare-fun lt!513690 () Unit!37680)

(assert (=> b!1148904 (= lt!513690 e!653529)))

(declare-fun c!113538 () Bool)

(declare-fun contains!6720 (ListLongMap!16419 (_ BitVec 64)) Bool)

(assert (=> b!1148904 (= c!113538 (contains!6720 lt!513689 k0!934))))

(assert (=> b!1148904 (= lt!513689 (getCurrentListMapNoExtraKeys!4666 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148905 () Bool)

(assert (=> b!1148905 (= e!653517 tp_is_empty!28833)))

(declare-fun bm!53177 () Bool)

(declare-fun call!53180 () Unit!37680)

(assert (=> bm!53177 (= call!53179 call!53180)))

(declare-fun bm!53178 () Bool)

(declare-fun addStillContains!863 (ListLongMap!16419 (_ BitVec 64) V!43571 (_ BitVec 64)) Unit!37680)

(assert (=> bm!53178 (= call!53180 (addStillContains!863 lt!513689 (ite (or c!113537 c!113533) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113537 c!113533) zeroValue!944 minValue!944) k0!934))))

(declare-fun res!764539 () Bool)

(assert (=> start!98734 (=> (not res!764539) (not e!653520))))

(assert (=> start!98734 (= res!764539 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36420 _keys!1208))))))

(assert (=> start!98734 e!653520))

(assert (=> start!98734 tp_is_empty!28833))

(declare-fun array_inv!27362 (array!74472) Bool)

(assert (=> start!98734 (array_inv!27362 _keys!1208)))

(assert (=> start!98734 true))

(assert (=> start!98734 tp!85620))

(declare-fun array_inv!27363 (array!74470) Bool)

(assert (=> start!98734 (and (array_inv!27363 _values!996) e!653524)))

(declare-fun b!1148906 () Bool)

(declare-fun res!764537 () Bool)

(declare-fun e!653521 () Bool)

(assert (=> b!1148906 (=> (not res!764537) (not e!653521))))

(assert (=> b!1148906 (= res!764537 (arrayNoDuplicates!0 lt!513688 #b00000000000000000000000000000000 Nil!25229))))

(declare-fun b!1148907 () Bool)

(assert (=> b!1148907 (= e!653521 (not e!653528))))

(declare-fun res!764543 () Bool)

(assert (=> b!1148907 (=> res!764543 e!653528)))

(assert (=> b!1148907 (= res!764543 (bvsgt from!1455 i!673))))

(assert (=> b!1148907 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!513682 () Unit!37680)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74472 (_ BitVec 64) (_ BitVec 32)) Unit!37680)

(assert (=> b!1148907 (= lt!513682 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1148908 () Bool)

(assert (=> b!1148908 (= e!653520 e!653521)))

(declare-fun res!764530 () Bool)

(assert (=> b!1148908 (=> (not res!764530) (not e!653521))))

(assert (=> b!1148908 (= res!764530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!513688 mask!1564))))

(assert (=> b!1148908 (= lt!513688 (array!74473 (store (arr!35883 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36420 _keys!1208)))))

(declare-fun mapIsEmpty!45074 () Bool)

(assert (=> mapIsEmpty!45074 mapRes!45074))

(declare-fun b!1148909 () Bool)

(assert (=> b!1148909 (contains!6720 call!53178 k0!934)))

(declare-fun lt!513694 () ListLongMap!16419)

(declare-fun lt!513696 () Unit!37680)

(assert (=> b!1148909 (= lt!513696 (addStillContains!863 lt!513694 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1148909 call!53184))

(assert (=> b!1148909 (= lt!513694 (+!3563 lt!513689 (tuple2!18439 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!513699 () Unit!37680)

(assert (=> b!1148909 (= lt!513699 call!53180)))

(assert (=> b!1148909 (= e!653519 lt!513696)))

(declare-fun b!1148910 () Bool)

(assert (=> b!1148910 (= e!653526 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513691) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1148911 () Bool)

(assert (=> b!1148911 (= e!653522 e!653515)))

(declare-fun c!113535 () Bool)

(assert (=> b!1148911 (= c!113535 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513691))))

(declare-fun b!1148912 () Bool)

(declare-fun res!764529 () Bool)

(assert (=> b!1148912 (=> (not res!764529) (not e!653520))))

(assert (=> b!1148912 (= res!764529 (and (= (size!36419 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36420 _keys!1208) (size!36419 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!53179 () Bool)

(assert (=> bm!53179 (= call!53183 (getCurrentListMapNoExtraKeys!4666 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53180 () Bool)

(assert (=> bm!53180 (= call!53184 (contains!6720 (ite c!113537 lt!513694 call!53181) k0!934))))

(declare-fun b!1148913 () Bool)

(declare-fun res!764542 () Bool)

(assert (=> b!1148913 (=> (not res!764542) (not e!653520))))

(assert (=> b!1148913 (= res!764542 (= (select (arr!35883 _keys!1208) i!673) k0!934))))

(declare-fun b!1148914 () Bool)

(assert (=> b!1148914 (= e!653523 e!653527)))

(declare-fun res!764538 () Bool)

(assert (=> b!1148914 (=> res!764538 e!653527)))

(assert (=> b!1148914 (= res!764538 (not (= (select (arr!35883 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1148914 e!653513))

(declare-fun c!113536 () Bool)

(assert (=> b!1148914 (= c!113536 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!513687 () Unit!37680)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!556 (array!74472 array!74470 (_ BitVec 32) (_ BitVec 32) V!43571 V!43571 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37680)

(assert (=> b!1148914 (= lt!513687 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!556 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53181 () Bool)

(assert (=> bm!53181 (= call!53178 (+!3563 (ite c!113537 lt!513694 lt!513689) (ite c!113537 (tuple2!18439 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113533 (tuple2!18439 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18439 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1148915 () Bool)

(assert (=> b!1148915 (= e!653525 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!98734 res!764539) b!1148900))

(assert (= (and b!1148900 res!764540) b!1148912))

(assert (= (and b!1148912 res!764529) b!1148891))

(assert (= (and b!1148891 res!764536) b!1148903))

(assert (= (and b!1148903 res!764533) b!1148894))

(assert (= (and b!1148894 res!764541) b!1148897))

(assert (= (and b!1148897 res!764532) b!1148913))

(assert (= (and b!1148913 res!764542) b!1148908))

(assert (= (and b!1148908 res!764530) b!1148906))

(assert (= (and b!1148906 res!764537) b!1148907))

(assert (= (and b!1148907 (not res!764543)) b!1148886))

(assert (= (and b!1148886 (not res!764531)) b!1148914))

(assert (= (and b!1148914 c!113536) b!1148892))

(assert (= (and b!1148914 (not c!113536)) b!1148898))

(assert (= (or b!1148892 b!1148898) bm!53175))

(assert (= (or b!1148892 b!1148898) bm!53179))

(assert (= (and b!1148914 (not res!764538)) b!1148904))

(assert (= (and b!1148904 c!113538) b!1148899))

(assert (= (and b!1148904 (not c!113538)) b!1148893))

(assert (= (and b!1148899 c!113537) b!1148909))

(assert (= (and b!1148899 (not c!113537)) b!1148888))

(assert (= (and b!1148888 c!113533) b!1148896))

(assert (= (and b!1148888 (not c!113533)) b!1148911))

(assert (= (and b!1148911 c!113535) b!1148890))

(assert (= (and b!1148911 (not c!113535)) b!1148887))

(assert (= (or b!1148896 b!1148890) bm!53177))

(assert (= (or b!1148896 b!1148890) bm!53176))

(assert (= (or b!1148896 b!1148890) bm!53174))

(assert (= (or b!1148909 bm!53174) bm!53180))

(assert (= (or b!1148909 bm!53177) bm!53178))

(assert (= (or b!1148909 bm!53176) bm!53181))

(assert (= (and b!1148899 c!113534) b!1148889))

(assert (= (and b!1148899 (not c!113534)) b!1148910))

(assert (= (and b!1148899 res!764535) b!1148915))

(assert (= (and b!1148904 res!764534) b!1148902))

(assert (= (and b!1148895 condMapEmpty!45074) mapIsEmpty!45074))

(assert (= (and b!1148895 (not condMapEmpty!45074)) mapNonEmpty!45074))

(get-info :version)

(assert (= (and mapNonEmpty!45074 ((_ is ValueCellFull!13707) mapValue!45074)) b!1148901))

(assert (= (and b!1148895 ((_ is ValueCellFull!13707) mapDefault!45074)) b!1148905))

(assert (= start!98734 b!1148895))

(declare-fun b_lambda!19427 () Bool)

(assert (=> (not b_lambda!19427) (not b!1148886)))

(declare-fun t!36532 () Bool)

(declare-fun tb!9123 () Bool)

(assert (=> (and start!98734 (= defaultEntry!1004 defaultEntry!1004) t!36532) tb!9123))

(declare-fun result!18803 () Bool)

(assert (=> tb!9123 (= result!18803 tp_is_empty!28833)))

(assert (=> b!1148886 t!36532))

(declare-fun b_and!39471 () Bool)

(assert (= b_and!39469 (and (=> t!36532 result!18803) b_and!39471)))

(declare-fun m!1059375 () Bool)

(assert (=> b!1148908 m!1059375))

(declare-fun m!1059377 () Bool)

(assert (=> b!1148908 m!1059377))

(declare-fun m!1059379 () Bool)

(assert (=> b!1148915 m!1059379))

(declare-fun m!1059381 () Bool)

(assert (=> b!1148897 m!1059381))

(declare-fun m!1059383 () Bool)

(assert (=> b!1148903 m!1059383))

(declare-fun m!1059385 () Bool)

(assert (=> b!1148904 m!1059385))

(declare-fun m!1059387 () Bool)

(assert (=> b!1148904 m!1059387))

(declare-fun m!1059389 () Bool)

(assert (=> b!1148904 m!1059389))

(declare-fun m!1059391 () Bool)

(assert (=> b!1148904 m!1059391))

(declare-fun m!1059393 () Bool)

(assert (=> b!1148904 m!1059393))

(declare-fun m!1059395 () Bool)

(assert (=> b!1148904 m!1059395))

(assert (=> b!1148904 m!1059393))

(declare-fun m!1059397 () Bool)

(assert (=> b!1148904 m!1059397))

(assert (=> b!1148904 m!1059397))

(assert (=> b!1148904 m!1059389))

(declare-fun m!1059399 () Bool)

(assert (=> b!1148904 m!1059399))

(assert (=> b!1148904 m!1059389))

(declare-fun m!1059401 () Bool)

(assert (=> b!1148891 m!1059401))

(assert (=> bm!53179 m!1059385))

(declare-fun m!1059403 () Bool)

(assert (=> bm!53178 m!1059403))

(declare-fun m!1059405 () Bool)

(assert (=> bm!53175 m!1059405))

(declare-fun m!1059407 () Bool)

(assert (=> b!1148899 m!1059407))

(declare-fun m!1059409 () Bool)

(assert (=> b!1148899 m!1059409))

(declare-fun m!1059411 () Bool)

(assert (=> b!1148899 m!1059411))

(declare-fun m!1059413 () Bool)

(assert (=> b!1148899 m!1059413))

(declare-fun m!1059415 () Bool)

(assert (=> b!1148892 m!1059415))

(assert (=> b!1148889 m!1059379))

(declare-fun m!1059417 () Bool)

(assert (=> b!1148900 m!1059417))

(declare-fun m!1059419 () Bool)

(assert (=> b!1148906 m!1059419))

(declare-fun m!1059421 () Bool)

(assert (=> b!1148902 m!1059421))

(declare-fun m!1059423 () Bool)

(assert (=> bm!53180 m!1059423))

(declare-fun m!1059425 () Bool)

(assert (=> bm!53181 m!1059425))

(declare-fun m!1059427 () Bool)

(assert (=> start!98734 m!1059427))

(declare-fun m!1059429 () Bool)

(assert (=> start!98734 m!1059429))

(declare-fun m!1059431 () Bool)

(assert (=> b!1148886 m!1059431))

(declare-fun m!1059433 () Bool)

(assert (=> b!1148886 m!1059433))

(declare-fun m!1059435 () Bool)

(assert (=> b!1148886 m!1059435))

(declare-fun m!1059437 () Bool)

(assert (=> b!1148886 m!1059437))

(assert (=> b!1148914 m!1059389))

(declare-fun m!1059439 () Bool)

(assert (=> b!1148914 m!1059439))

(declare-fun m!1059441 () Bool)

(assert (=> mapNonEmpty!45074 m!1059441))

(declare-fun m!1059443 () Bool)

(assert (=> b!1148909 m!1059443))

(declare-fun m!1059445 () Bool)

(assert (=> b!1148909 m!1059445))

(declare-fun m!1059447 () Bool)

(assert (=> b!1148909 m!1059447))

(declare-fun m!1059449 () Bool)

(assert (=> b!1148907 m!1059449))

(declare-fun m!1059451 () Bool)

(assert (=> b!1148907 m!1059451))

(declare-fun m!1059453 () Bool)

(assert (=> b!1148913 m!1059453))

(check-sat (not start!98734) (not b!1148903) b_and!39471 (not b!1148886) (not b!1148908) (not mapNonEmpty!45074) (not b!1148915) (not b!1148892) (not bm!53181) (not b!1148899) (not b!1148900) (not b!1148909) (not b!1148889) (not b!1148906) (not bm!53175) tp_is_empty!28833 (not b!1148902) (not b_lambda!19427) (not b!1148907) (not b_next!24303) (not bm!53180) (not b!1148891) (not b!1148897) (not bm!53179) (not bm!53178) (not b!1148904) (not b!1148914))
(check-sat b_and!39471 (not b_next!24303))
