; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98620 () Bool)

(assert start!98620)

(declare-fun b_free!24189 () Bool)

(declare-fun b_next!24189 () Bool)

(assert (=> start!98620 (= b_free!24189 (not b_next!24189))))

(declare-fun tp!85279 () Bool)

(declare-fun b_and!39241 () Bool)

(assert (=> start!98620 (= tp!85279 b_and!39241)))

(declare-fun bm!51806 () Bool)

(declare-datatypes ((V!43419 0))(
  ( (V!43420 (val!14416 Int)) )
))
(declare-datatypes ((tuple2!18336 0))(
  ( (tuple2!18337 (_1!9178 (_ BitVec 64)) (_2!9178 V!43419)) )
))
(declare-datatypes ((List!25134 0))(
  ( (Nil!25131) (Cons!25130 (h!26339 tuple2!18336) (t!36322 List!25134)) )
))
(declare-datatypes ((ListLongMap!16317 0))(
  ( (ListLongMap!16318 (toList!8174 List!25134)) )
))
(declare-fun call!51815 () ListLongMap!16317)

(declare-fun call!51812 () ListLongMap!16317)

(assert (=> bm!51806 (= call!51815 call!51812)))

(declare-fun b!1143655 () Bool)

(declare-fun e!650619 () Bool)

(declare-fun e!650628 () Bool)

(assert (=> b!1143655 (= e!650619 e!650628)))

(declare-fun res!761977 () Bool)

(assert (=> b!1143655 (=> (not res!761977) (not e!650628))))

(declare-datatypes ((array!74246 0))(
  ( (array!74247 (arr!35770 (Array (_ BitVec 32) (_ BitVec 64))) (size!36307 (_ BitVec 32))) )
))
(declare-fun lt!510097 () array!74246)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74246 (_ BitVec 32)) Bool)

(assert (=> b!1143655 (= res!761977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510097 mask!1564))))

(declare-fun _keys!1208 () array!74246)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1143655 (= lt!510097 (array!74247 (store (arr!35770 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36307 _keys!1208)))))

(declare-fun b!1143656 () Bool)

(declare-fun e!650634 () Bool)

(declare-fun e!650625 () Bool)

(declare-fun mapRes!44903 () Bool)

(assert (=> b!1143656 (= e!650634 (and e!650625 mapRes!44903))))

(declare-fun condMapEmpty!44903 () Bool)

(declare-datatypes ((ValueCell!13650 0))(
  ( (ValueCellFull!13650 (v!17054 V!43419)) (EmptyCell!13650) )
))
(declare-datatypes ((array!74248 0))(
  ( (array!74249 (arr!35771 (Array (_ BitVec 32) ValueCell!13650)) (size!36308 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74248)

(declare-fun mapDefault!44903 () ValueCell!13650)

(assert (=> b!1143656 (= condMapEmpty!44903 (= (arr!35771 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13650)) mapDefault!44903)))))

(declare-fun b!1143657 () Bool)

(declare-fun res!761987 () Bool)

(assert (=> b!1143657 (=> (not res!761987) (not e!650619))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1143657 (= res!761987 (validKeyInArray!0 k0!934))))

(declare-fun b!1143658 () Bool)

(declare-fun e!650623 () Bool)

(assert (=> b!1143658 (= e!650623 true)))

(declare-fun lt!510111 () ListLongMap!16317)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!510099 () V!43419)

(declare-fun -!1267 (ListLongMap!16317 (_ BitVec 64)) ListLongMap!16317)

(declare-fun +!3518 (ListLongMap!16317 tuple2!18336) ListLongMap!16317)

(assert (=> b!1143658 (= (-!1267 (+!3518 lt!510111 (tuple2!18337 (select (arr!35770 _keys!1208) from!1455) lt!510099)) (select (arr!35770 _keys!1208) from!1455)) lt!510111)))

(declare-datatypes ((Unit!37459 0))(
  ( (Unit!37460) )
))
(declare-fun lt!510095 () Unit!37459)

(declare-fun addThenRemoveForNewKeyIsSame!122 (ListLongMap!16317 (_ BitVec 64) V!43419) Unit!37459)

(assert (=> b!1143658 (= lt!510095 (addThenRemoveForNewKeyIsSame!122 lt!510111 (select (arr!35770 _keys!1208) from!1455) lt!510099))))

(declare-fun lt!510104 () V!43419)

(declare-fun get!18206 (ValueCell!13650 V!43419) V!43419)

(assert (=> b!1143658 (= lt!510099 (get!18206 (select (arr!35771 _values!996) from!1455) lt!510104))))

(declare-fun lt!510106 () Unit!37459)

(declare-fun e!650622 () Unit!37459)

(assert (=> b!1143658 (= lt!510106 e!650622)))

(declare-fun c!112512 () Bool)

(declare-fun contains!6676 (ListLongMap!16317 (_ BitVec 64)) Bool)

(assert (=> b!1143658 (= c!112512 (contains!6676 lt!510111 k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43419)

(declare-fun zeroValue!944 () V!43419)

(declare-fun getCurrentListMapNoExtraKeys!4616 (array!74246 array!74248 (_ BitVec 32) (_ BitVec 32) V!43419 V!43419 (_ BitVec 32) Int) ListLongMap!16317)

(assert (=> b!1143658 (= lt!510111 (getCurrentListMapNoExtraKeys!4616 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112509 () Bool)

(declare-fun bm!51807 () Bool)

(declare-fun c!112511 () Bool)

(assert (=> bm!51807 (= call!51812 (+!3518 lt!510111 (ite (or c!112509 c!112511) (tuple2!18337 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18337 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun call!51813 () ListLongMap!16317)

(declare-fun call!51809 () ListLongMap!16317)

(declare-fun e!650630 () Bool)

(declare-fun b!1143659 () Bool)

(assert (=> b!1143659 (= e!650630 (= call!51809 (-!1267 call!51813 k0!934)))))

(declare-fun b!1143660 () Bool)

(declare-fun e!650632 () Bool)

(assert (=> b!1143660 (= e!650632 e!650623)))

(declare-fun res!761983 () Bool)

(assert (=> b!1143660 (=> res!761983 e!650623)))

(assert (=> b!1143660 (= res!761983 (not (= (select (arr!35770 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1143660 e!650630))

(declare-fun c!112508 () Bool)

(assert (=> b!1143660 (= c!112508 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!510107 () Unit!37459)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!522 (array!74246 array!74248 (_ BitVec 32) (_ BitVec 32) V!43419 V!43419 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37459)

(assert (=> b!1143660 (= lt!510107 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!522 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143661 () Bool)

(declare-fun e!650620 () Unit!37459)

(declare-fun Unit!37461 () Unit!37459)

(assert (=> b!1143661 (= e!650620 Unit!37461)))

(declare-fun mapNonEmpty!44903 () Bool)

(declare-fun tp!85278 () Bool)

(declare-fun e!650621 () Bool)

(assert (=> mapNonEmpty!44903 (= mapRes!44903 (and tp!85278 e!650621))))

(declare-fun mapKey!44903 () (_ BitVec 32))

(declare-fun mapRest!44903 () (Array (_ BitVec 32) ValueCell!13650))

(declare-fun mapValue!44903 () ValueCell!13650)

(assert (=> mapNonEmpty!44903 (= (arr!35771 _values!996) (store mapRest!44903 mapKey!44903 mapValue!44903))))

(declare-fun bm!51808 () Bool)

(declare-fun lt!510100 () ListLongMap!16317)

(declare-fun call!51816 () Unit!37459)

(declare-fun addStillContains!815 (ListLongMap!16317 (_ BitVec 64) V!43419 (_ BitVec 64)) Unit!37459)

(assert (=> bm!51808 (= call!51816 (addStillContains!815 (ite c!112509 lt!510100 lt!510111) (ite c!112509 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112511 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112509 minValue!944 (ite c!112511 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1143662 () Bool)

(assert (=> b!1143662 (contains!6676 (+!3518 lt!510100 (tuple2!18337 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!510092 () Unit!37459)

(assert (=> b!1143662 (= lt!510092 call!51816)))

(declare-fun call!51810 () Bool)

(assert (=> b!1143662 call!51810))

(assert (=> b!1143662 (= lt!510100 call!51812)))

(declare-fun lt!510103 () Unit!37459)

(assert (=> b!1143662 (= lt!510103 (addStillContains!815 lt!510111 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!650631 () Unit!37459)

(assert (=> b!1143662 (= e!650631 lt!510092)))

(declare-fun b!1143663 () Bool)

(declare-fun e!650624 () Unit!37459)

(declare-fun lt!510098 () Unit!37459)

(assert (=> b!1143663 (= e!650624 lt!510098)))

(declare-fun call!51811 () Unit!37459)

(assert (=> b!1143663 (= lt!510098 call!51811)))

(declare-fun call!51814 () Bool)

(assert (=> b!1143663 call!51814))

(declare-fun b!1143664 () Bool)

(declare-fun tp_is_empty!28719 () Bool)

(assert (=> b!1143664 (= e!650625 tp_is_empty!28719)))

(declare-fun bm!51809 () Bool)

(assert (=> bm!51809 (= call!51813 (getCurrentListMapNoExtraKeys!4616 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51810 () Bool)

(assert (=> bm!51810 (= call!51814 call!51810)))

(declare-fun e!650633 () Bool)

(declare-fun b!1143665 () Bool)

(declare-fun arrayContainsKey!0 (array!74246 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1143665 (= e!650633 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun e!650627 () Bool)

(declare-fun b!1143666 () Bool)

(assert (=> b!1143666 (= e!650627 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!761986 () Bool)

(assert (=> start!98620 (=> (not res!761986) (not e!650619))))

(assert (=> start!98620 (= res!761986 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36307 _keys!1208))))))

(assert (=> start!98620 e!650619))

(assert (=> start!98620 tp_is_empty!28719))

(declare-fun array_inv!27286 (array!74246) Bool)

(assert (=> start!98620 (array_inv!27286 _keys!1208)))

(assert (=> start!98620 true))

(assert (=> start!98620 tp!85279))

(declare-fun array_inv!27287 (array!74248) Bool)

(assert (=> start!98620 (and (array_inv!27287 _values!996) e!650634)))

(declare-fun b!1143667 () Bool)

(declare-fun e!650626 () Bool)

(assert (=> b!1143667 (= e!650626 e!650632)))

(declare-fun res!761979 () Bool)

(assert (=> b!1143667 (=> res!761979 e!650632)))

(assert (=> b!1143667 (= res!761979 (not (= from!1455 i!673)))))

(declare-fun lt!510101 () ListLongMap!16317)

(declare-fun lt!510094 () array!74248)

(assert (=> b!1143667 (= lt!510101 (getCurrentListMapNoExtraKeys!4616 lt!510097 lt!510094 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1143667 (= lt!510094 (array!74249 (store (arr!35771 _values!996) i!673 (ValueCellFull!13650 lt!510104)) (size!36308 _values!996)))))

(declare-fun dynLambda!2661 (Int (_ BitVec 64)) V!43419)

(assert (=> b!1143667 (= lt!510104 (dynLambda!2661 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!510096 () ListLongMap!16317)

(assert (=> b!1143667 (= lt!510096 (getCurrentListMapNoExtraKeys!4616 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1143668 () Bool)

(declare-fun res!761984 () Bool)

(assert (=> b!1143668 (=> (not res!761984) (not e!650619))))

(declare-datatypes ((List!25135 0))(
  ( (Nil!25132) (Cons!25131 (h!26340 (_ BitVec 64)) (t!36323 List!25135)) )
))
(declare-fun arrayNoDuplicates!0 (array!74246 (_ BitVec 32) List!25135) Bool)

(assert (=> b!1143668 (= res!761984 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25132))))

(declare-fun b!1143669 () Bool)

(declare-fun res!761980 () Bool)

(assert (=> b!1143669 (=> (not res!761980) (not e!650619))))

(assert (=> b!1143669 (= res!761980 (= (select (arr!35770 _keys!1208) i!673) k0!934))))

(declare-fun b!1143670 () Bool)

(declare-fun res!761988 () Bool)

(assert (=> b!1143670 (=> (not res!761988) (not e!650619))))

(assert (=> b!1143670 (= res!761988 (and (= (size!36308 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36307 _keys!1208) (size!36308 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1143671 () Bool)

(assert (=> b!1143671 (= e!650621 tp_is_empty!28719)))

(declare-fun bm!51811 () Bool)

(assert (=> bm!51811 (= call!51810 (contains!6676 (ite c!112509 lt!510100 call!51815) k0!934))))

(declare-fun b!1143672 () Bool)

(assert (=> b!1143672 (= e!650624 e!650620)))

(declare-fun c!112510 () Bool)

(declare-fun lt!510102 () Bool)

(assert (=> b!1143672 (= c!112510 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510102))))

(declare-fun b!1143673 () Bool)

(declare-fun Unit!37462 () Unit!37459)

(assert (=> b!1143673 (= e!650622 Unit!37462)))

(assert (=> b!1143673 (= lt!510102 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1143673 (= c!112509 (and (not lt!510102) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510091 () Unit!37459)

(assert (=> b!1143673 (= lt!510091 e!650631)))

(declare-fun lt!510110 () Unit!37459)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!409 (array!74246 array!74248 (_ BitVec 32) (_ BitVec 32) V!43419 V!43419 (_ BitVec 64) (_ BitVec 32) Int) Unit!37459)

(assert (=> b!1143673 (= lt!510110 (lemmaListMapContainsThenArrayContainsFrom!409 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112507 () Bool)

(assert (=> b!1143673 (= c!112507 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761989 () Bool)

(assert (=> b!1143673 (= res!761989 e!650627)))

(assert (=> b!1143673 (=> (not res!761989) (not e!650633))))

(assert (=> b!1143673 e!650633))

(declare-fun lt!510105 () Unit!37459)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74246 (_ BitVec 32) (_ BitVec 32)) Unit!37459)

(assert (=> b!1143673 (= lt!510105 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1143673 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25132)))

(declare-fun lt!510109 () Unit!37459)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74246 (_ BitVec 64) (_ BitVec 32) List!25135) Unit!37459)

(assert (=> b!1143673 (= lt!510109 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25132))))

(assert (=> b!1143673 false))

(declare-fun mapIsEmpty!44903 () Bool)

(assert (=> mapIsEmpty!44903 mapRes!44903))

(declare-fun b!1143674 () Bool)

(declare-fun res!761990 () Bool)

(assert (=> b!1143674 (=> (not res!761990) (not e!650619))))

(assert (=> b!1143674 (= res!761990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!51812 () Bool)

(assert (=> bm!51812 (= call!51811 call!51816)))

(declare-fun bm!51813 () Bool)

(assert (=> bm!51813 (= call!51809 (getCurrentListMapNoExtraKeys!4616 lt!510097 lt!510094 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143675 () Bool)

(assert (=> b!1143675 (= e!650628 (not e!650626))))

(declare-fun res!761982 () Bool)

(assert (=> b!1143675 (=> res!761982 e!650626)))

(assert (=> b!1143675 (= res!761982 (bvsgt from!1455 i!673))))

(assert (=> b!1143675 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!510108 () Unit!37459)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74246 (_ BitVec 64) (_ BitVec 32)) Unit!37459)

(assert (=> b!1143675 (= lt!510108 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1143676 () Bool)

(assert (=> b!1143676 (= e!650630 (= call!51809 call!51813))))

(declare-fun b!1143677 () Bool)

(declare-fun res!761985 () Bool)

(assert (=> b!1143677 (=> (not res!761985) (not e!650628))))

(assert (=> b!1143677 (= res!761985 (arrayNoDuplicates!0 lt!510097 #b00000000000000000000000000000000 Nil!25132))))

(declare-fun b!1143678 () Bool)

(assert (=> b!1143678 (= c!112511 (and (not lt!510102) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1143678 (= e!650631 e!650624)))

(declare-fun b!1143679 () Bool)

(assert (=> b!1143679 (= e!650627 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!510102) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1143680 () Bool)

(declare-fun res!761978 () Bool)

(assert (=> b!1143680 (=> (not res!761978) (not e!650619))))

(assert (=> b!1143680 (= res!761978 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36307 _keys!1208))))))

(declare-fun b!1143681 () Bool)

(declare-fun res!761981 () Bool)

(assert (=> b!1143681 (=> (not res!761981) (not e!650619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1143681 (= res!761981 (validMask!0 mask!1564))))

(declare-fun b!1143682 () Bool)

(declare-fun Unit!37463 () Unit!37459)

(assert (=> b!1143682 (= e!650622 Unit!37463)))

(declare-fun b!1143683 () Bool)

(assert (=> b!1143683 call!51814))

(declare-fun lt!510093 () Unit!37459)

(assert (=> b!1143683 (= lt!510093 call!51811)))

(assert (=> b!1143683 (= e!650620 lt!510093)))

(assert (= (and start!98620 res!761986) b!1143681))

(assert (= (and b!1143681 res!761981) b!1143670))

(assert (= (and b!1143670 res!761988) b!1143674))

(assert (= (and b!1143674 res!761990) b!1143668))

(assert (= (and b!1143668 res!761984) b!1143680))

(assert (= (and b!1143680 res!761978) b!1143657))

(assert (= (and b!1143657 res!761987) b!1143669))

(assert (= (and b!1143669 res!761980) b!1143655))

(assert (= (and b!1143655 res!761977) b!1143677))

(assert (= (and b!1143677 res!761985) b!1143675))

(assert (= (and b!1143675 (not res!761982)) b!1143667))

(assert (= (and b!1143667 (not res!761979)) b!1143660))

(assert (= (and b!1143660 c!112508) b!1143659))

(assert (= (and b!1143660 (not c!112508)) b!1143676))

(assert (= (or b!1143659 b!1143676) bm!51813))

(assert (= (or b!1143659 b!1143676) bm!51809))

(assert (= (and b!1143660 (not res!761983)) b!1143658))

(assert (= (and b!1143658 c!112512) b!1143673))

(assert (= (and b!1143658 (not c!112512)) b!1143682))

(assert (= (and b!1143673 c!112509) b!1143662))

(assert (= (and b!1143673 (not c!112509)) b!1143678))

(assert (= (and b!1143678 c!112511) b!1143663))

(assert (= (and b!1143678 (not c!112511)) b!1143672))

(assert (= (and b!1143672 c!112510) b!1143683))

(assert (= (and b!1143672 (not c!112510)) b!1143661))

(assert (= (or b!1143663 b!1143683) bm!51812))

(assert (= (or b!1143663 b!1143683) bm!51806))

(assert (= (or b!1143663 b!1143683) bm!51810))

(assert (= (or b!1143662 bm!51810) bm!51811))

(assert (= (or b!1143662 bm!51812) bm!51808))

(assert (= (or b!1143662 bm!51806) bm!51807))

(assert (= (and b!1143673 c!112507) b!1143666))

(assert (= (and b!1143673 (not c!112507)) b!1143679))

(assert (= (and b!1143673 res!761989) b!1143665))

(assert (= (and b!1143656 condMapEmpty!44903) mapIsEmpty!44903))

(assert (= (and b!1143656 (not condMapEmpty!44903)) mapNonEmpty!44903))

(get-info :version)

(assert (= (and mapNonEmpty!44903 ((_ is ValueCellFull!13650) mapValue!44903)) b!1143671))

(assert (= (and b!1143656 ((_ is ValueCellFull!13650) mapDefault!44903)) b!1143664))

(assert (= start!98620 b!1143656))

(declare-fun b_lambda!19313 () Bool)

(assert (=> (not b_lambda!19313) (not b!1143667)))

(declare-fun t!36321 () Bool)

(declare-fun tb!9009 () Bool)

(assert (=> (and start!98620 (= defaultEntry!1004 defaultEntry!1004) t!36321) tb!9009))

(declare-fun result!18575 () Bool)

(assert (=> tb!9009 (= result!18575 tp_is_empty!28719)))

(assert (=> b!1143667 t!36321))

(declare-fun b_and!39243 () Bool)

(assert (= b_and!39241 (and (=> t!36321 result!18575) b_and!39243)))

(declare-fun m!1054819 () Bool)

(assert (=> bm!51811 m!1054819))

(declare-fun m!1054821 () Bool)

(assert (=> b!1143681 m!1054821))

(declare-fun m!1054823 () Bool)

(assert (=> b!1143677 m!1054823))

(declare-fun m!1054825 () Bool)

(assert (=> bm!51807 m!1054825))

(declare-fun m!1054827 () Bool)

(assert (=> b!1143659 m!1054827))

(declare-fun m!1054829 () Bool)

(assert (=> b!1143662 m!1054829))

(assert (=> b!1143662 m!1054829))

(declare-fun m!1054831 () Bool)

(assert (=> b!1143662 m!1054831))

(declare-fun m!1054833 () Bool)

(assert (=> b!1143662 m!1054833))

(declare-fun m!1054835 () Bool)

(assert (=> b!1143657 m!1054835))

(declare-fun m!1054837 () Bool)

(assert (=> mapNonEmpty!44903 m!1054837))

(declare-fun m!1054839 () Bool)

(assert (=> start!98620 m!1054839))

(declare-fun m!1054841 () Bool)

(assert (=> start!98620 m!1054841))

(declare-fun m!1054843 () Bool)

(assert (=> b!1143666 m!1054843))

(declare-fun m!1054845 () Bool)

(assert (=> bm!51808 m!1054845))

(declare-fun m!1054847 () Bool)

(assert (=> b!1143658 m!1054847))

(declare-fun m!1054849 () Bool)

(assert (=> b!1143658 m!1054849))

(declare-fun m!1054851 () Bool)

(assert (=> b!1143658 m!1054851))

(declare-fun m!1054853 () Bool)

(assert (=> b!1143658 m!1054853))

(declare-fun m!1054855 () Bool)

(assert (=> b!1143658 m!1054855))

(declare-fun m!1054857 () Bool)

(assert (=> b!1143658 m!1054857))

(assert (=> b!1143658 m!1054853))

(declare-fun m!1054859 () Bool)

(assert (=> b!1143658 m!1054859))

(assert (=> b!1143658 m!1054853))

(assert (=> b!1143658 m!1054857))

(assert (=> b!1143658 m!1054849))

(declare-fun m!1054861 () Bool)

(assert (=> b!1143658 m!1054861))

(declare-fun m!1054863 () Bool)

(assert (=> b!1143655 m!1054863))

(declare-fun m!1054865 () Bool)

(assert (=> b!1143655 m!1054865))

(declare-fun m!1054867 () Bool)

(assert (=> bm!51813 m!1054867))

(declare-fun m!1054869 () Bool)

(assert (=> b!1143667 m!1054869))

(declare-fun m!1054871 () Bool)

(assert (=> b!1143667 m!1054871))

(declare-fun m!1054873 () Bool)

(assert (=> b!1143667 m!1054873))

(declare-fun m!1054875 () Bool)

(assert (=> b!1143667 m!1054875))

(declare-fun m!1054877 () Bool)

(assert (=> b!1143669 m!1054877))

(declare-fun m!1054879 () Bool)

(assert (=> b!1143668 m!1054879))

(declare-fun m!1054881 () Bool)

(assert (=> b!1143674 m!1054881))

(assert (=> bm!51809 m!1054847))

(declare-fun m!1054883 () Bool)

(assert (=> b!1143673 m!1054883))

(declare-fun m!1054885 () Bool)

(assert (=> b!1143673 m!1054885))

(declare-fun m!1054887 () Bool)

(assert (=> b!1143673 m!1054887))

(declare-fun m!1054889 () Bool)

(assert (=> b!1143673 m!1054889))

(assert (=> b!1143665 m!1054843))

(assert (=> b!1143660 m!1054853))

(declare-fun m!1054891 () Bool)

(assert (=> b!1143660 m!1054891))

(declare-fun m!1054893 () Bool)

(assert (=> b!1143675 m!1054893))

(declare-fun m!1054895 () Bool)

(assert (=> b!1143675 m!1054895))

(check-sat (not bm!51813) (not b!1143655) (not b!1143675) (not b!1143658) (not b!1143659) (not b!1143673) (not b!1143668) (not b!1143674) (not mapNonEmpty!44903) (not b!1143667) (not b!1143677) (not bm!51811) (not bm!51809) tp_is_empty!28719 (not b!1143681) (not b!1143662) (not start!98620) (not bm!51808) (not b!1143665) (not b_next!24189) (not bm!51807) b_and!39243 (not b!1143660) (not b!1143657) (not b!1143666) (not b_lambda!19313))
(check-sat b_and!39243 (not b_next!24189))
