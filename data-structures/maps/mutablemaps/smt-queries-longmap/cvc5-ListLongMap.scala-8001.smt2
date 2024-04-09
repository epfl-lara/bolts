; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98882 () Bool)

(assert start!98882)

(declare-fun b_free!24451 () Bool)

(declare-fun b_next!24451 () Bool)

(assert (=> start!98882 (= b_free!24451 (not b_next!24451))))

(declare-fun tp!86065 () Bool)

(declare-fun b_and!39765 () Bool)

(assert (=> start!98882 (= tp!86065 b_and!39765)))

(declare-fun b!1155694 () Bool)

(declare-datatypes ((V!43769 0))(
  ( (V!43770 (val!14547 Int)) )
))
(declare-datatypes ((tuple2!18570 0))(
  ( (tuple2!18571 (_1!9295 (_ BitVec 64)) (_2!9295 V!43769)) )
))
(declare-datatypes ((List!25353 0))(
  ( (Nil!25350) (Cons!25349 (h!26558 tuple2!18570) (t!36803 List!25353)) )
))
(declare-datatypes ((ListLongMap!16551 0))(
  ( (ListLongMap!16552 (toList!8291 List!25353)) )
))
(declare-fun lt!518572 () ListLongMap!16551)

(declare-fun minValue!944 () V!43769)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6778 (ListLongMap!16551 (_ BitVec 64)) Bool)

(declare-fun +!3622 (ListLongMap!16551 tuple2!18570) ListLongMap!16551)

(assert (=> b!1155694 (contains!6778 (+!3622 lt!518572 (tuple2!18571 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!37954 0))(
  ( (Unit!37955) )
))
(declare-fun lt!518567 () Unit!37954)

(declare-fun addStillContains!919 (ListLongMap!16551 (_ BitVec 64) V!43769 (_ BitVec 64)) Unit!37954)

(assert (=> b!1155694 (= lt!518567 (addStillContains!919 lt!518572 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!54958 () Bool)

(assert (=> b!1155694 call!54958))

(declare-fun call!54953 () ListLongMap!16551)

(assert (=> b!1155694 (= lt!518572 call!54953)))

(declare-fun lt!518580 () Unit!37954)

(declare-fun call!54955 () Unit!37954)

(assert (=> b!1155694 (= lt!518580 call!54955)))

(declare-fun e!657291 () Unit!37954)

(assert (=> b!1155694 (= e!657291 lt!518567)))

(declare-fun mapNonEmpty!45296 () Bool)

(declare-fun mapRes!45296 () Bool)

(declare-fun tp!86064 () Bool)

(declare-fun e!657287 () Bool)

(assert (=> mapNonEmpty!45296 (= mapRes!45296 (and tp!86064 e!657287))))

(declare-fun mapKey!45296 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13781 0))(
  ( (ValueCellFull!13781 (v!17185 V!43769)) (EmptyCell!13781) )
))
(declare-datatypes ((array!74756 0))(
  ( (array!74757 (arr!36025 (Array (_ BitVec 32) ValueCell!13781)) (size!36562 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74756)

(declare-fun mapRest!45296 () (Array (_ BitVec 32) ValueCell!13781))

(declare-fun mapValue!45296 () ValueCell!13781)

(assert (=> mapNonEmpty!45296 (= (arr!36025 _values!996) (store mapRest!45296 mapKey!45296 mapValue!45296))))

(declare-fun zeroValue!944 () V!43769)

(declare-datatypes ((array!74758 0))(
  ( (array!74759 (arr!36026 (Array (_ BitVec 32) (_ BitVec 64))) (size!36563 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74758)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!54950 () Bool)

(declare-fun call!54960 () ListLongMap!16551)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4730 (array!74758 array!74756 (_ BitVec 32) (_ BitVec 32) V!43769 V!43769 (_ BitVec 32) Int) ListLongMap!16551)

(assert (=> bm!54950 (= call!54960 (getCurrentListMapNoExtraKeys!4730 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155695 () Bool)

(declare-fun e!657301 () Bool)

(assert (=> b!1155695 (= e!657301 true)))

(declare-fun e!657290 () Bool)

(assert (=> b!1155695 e!657290))

(declare-fun res!767864 () Bool)

(assert (=> b!1155695 (=> (not res!767864) (not e!657290))))

(declare-fun lt!518581 () ListLongMap!16551)

(declare-fun lt!518563 () ListLongMap!16551)

(assert (=> b!1155695 (= res!767864 (= lt!518581 lt!518563))))

(declare-fun lt!518562 () ListLongMap!16551)

(declare-fun -!1368 (ListLongMap!16551 (_ BitVec 64)) ListLongMap!16551)

(assert (=> b!1155695 (= lt!518581 (-!1368 lt!518562 k!934))))

(declare-fun lt!518569 () V!43769)

(assert (=> b!1155695 (= (-!1368 (+!3622 lt!518563 (tuple2!18571 (select (arr!36026 _keys!1208) from!1455) lt!518569)) (select (arr!36026 _keys!1208) from!1455)) lt!518563)))

(declare-fun lt!518571 () Unit!37954)

(declare-fun addThenRemoveForNewKeyIsSame!211 (ListLongMap!16551 (_ BitVec 64) V!43769) Unit!37954)

(assert (=> b!1155695 (= lt!518571 (addThenRemoveForNewKeyIsSame!211 lt!518563 (select (arr!36026 _keys!1208) from!1455) lt!518569))))

(declare-fun lt!518583 () V!43769)

(declare-fun get!18383 (ValueCell!13781 V!43769) V!43769)

(assert (=> b!1155695 (= lt!518569 (get!18383 (select (arr!36025 _values!996) from!1455) lt!518583))))

(declare-fun lt!518579 () Unit!37954)

(declare-fun e!657302 () Unit!37954)

(assert (=> b!1155695 (= lt!518579 e!657302)))

(declare-fun c!114868 () Bool)

(assert (=> b!1155695 (= c!114868 (contains!6778 lt!518563 k!934))))

(assert (=> b!1155695 (= lt!518563 (getCurrentListMapNoExtraKeys!4730 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!54957 () ListLongMap!16551)

(declare-fun lt!518576 () array!74756)

(declare-fun lt!518573 () array!74758)

(declare-fun bm!54951 () Bool)

(assert (=> bm!54951 (= call!54957 (getCurrentListMapNoExtraKeys!4730 lt!518573 lt!518576 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155696 () Bool)

(declare-fun e!657295 () Bool)

(declare-fun e!657298 () Bool)

(assert (=> b!1155696 (= e!657295 (not e!657298))))

(declare-fun res!767873 () Bool)

(assert (=> b!1155696 (=> res!767873 e!657298)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1155696 (= res!767873 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1155696 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!518577 () Unit!37954)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74758 (_ BitVec 64) (_ BitVec 32)) Unit!37954)

(assert (=> b!1155696 (= lt!518577 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!657299 () Bool)

(declare-fun lt!518574 () Bool)

(declare-fun b!1155697 () Bool)

(assert (=> b!1155697 (= e!657299 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!518574) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1155698 () Bool)

(declare-fun e!657296 () Bool)

(assert (=> b!1155698 (= e!657296 (= call!54957 call!54960))))

(declare-fun b!1155699 () Bool)

(declare-fun Unit!37956 () Unit!37954)

(assert (=> b!1155699 (= e!657302 Unit!37956)))

(assert (=> b!1155699 (= lt!518574 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114870 () Bool)

(assert (=> b!1155699 (= c!114870 (and (not lt!518574) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!518568 () Unit!37954)

(assert (=> b!1155699 (= lt!518568 e!657291)))

(declare-fun lt!518582 () Unit!37954)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!498 (array!74758 array!74756 (_ BitVec 32) (_ BitVec 32) V!43769 V!43769 (_ BitVec 64) (_ BitVec 32) Int) Unit!37954)

(assert (=> b!1155699 (= lt!518582 (lemmaListMapContainsThenArrayContainsFrom!498 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114869 () Bool)

(assert (=> b!1155699 (= c!114869 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767868 () Bool)

(assert (=> b!1155699 (= res!767868 e!657299)))

(declare-fun e!657289 () Bool)

(assert (=> b!1155699 (=> (not res!767868) (not e!657289))))

(assert (=> b!1155699 e!657289))

(declare-fun lt!518570 () Unit!37954)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74758 (_ BitVec 32) (_ BitVec 32)) Unit!37954)

(assert (=> b!1155699 (= lt!518570 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25354 0))(
  ( (Nil!25351) (Cons!25350 (h!26559 (_ BitVec 64)) (t!36804 List!25354)) )
))
(declare-fun arrayNoDuplicates!0 (array!74758 (_ BitVec 32) List!25354) Bool)

(assert (=> b!1155699 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25351)))

(declare-fun lt!518566 () Unit!37954)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74758 (_ BitVec 64) (_ BitVec 32) List!25354) Unit!37954)

(assert (=> b!1155699 (= lt!518566 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25351))))

(assert (=> b!1155699 false))

(declare-fun b!1155700 () Bool)

(declare-fun res!767859 () Bool)

(assert (=> b!1155700 (=> (not res!767859) (not e!657295))))

(assert (=> b!1155700 (= res!767859 (arrayNoDuplicates!0 lt!518573 #b00000000000000000000000000000000 Nil!25351))))

(declare-fun bm!54952 () Bool)

(declare-fun call!54959 () Bool)

(assert (=> bm!54952 (= call!54959 call!54958)))

(declare-fun b!1155701 () Bool)

(assert (=> b!1155701 (= e!657296 (= call!54957 (-!1368 call!54960 k!934)))))

(declare-fun b!1155702 () Bool)

(declare-fun Unit!37957 () Unit!37954)

(assert (=> b!1155702 (= e!657302 Unit!37957)))

(declare-fun b!1155703 () Bool)

(declare-fun e!657293 () Bool)

(declare-fun tp_is_empty!28981 () Bool)

(assert (=> b!1155703 (= e!657293 tp_is_empty!28981)))

(declare-fun b!1155704 () Bool)

(assert (=> b!1155704 (= e!657287 tp_is_empty!28981)))

(declare-fun b!1155705 () Bool)

(declare-fun e!657297 () Unit!37954)

(declare-fun Unit!37958 () Unit!37954)

(assert (=> b!1155705 (= e!657297 Unit!37958)))

(declare-fun b!1155706 () Bool)

(declare-fun res!767860 () Bool)

(declare-fun e!657294 () Bool)

(assert (=> b!1155706 (=> (not res!767860) (not e!657294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74758 (_ BitVec 32)) Bool)

(assert (=> b!1155706 (= res!767860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!54954 () ListLongMap!16551)

(declare-fun bm!54953 () Bool)

(assert (=> bm!54953 (= call!54958 (contains!6778 (ite c!114870 lt!518572 call!54954) k!934))))

(declare-fun bm!54954 () Bool)

(assert (=> bm!54954 (= call!54954 call!54953)))

(declare-fun b!1155707 () Bool)

(declare-fun res!767862 () Bool)

(assert (=> b!1155707 (=> (not res!767862) (not e!657294))))

(assert (=> b!1155707 (= res!767862 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25351))))

(declare-fun b!1155708 () Bool)

(declare-fun res!767871 () Bool)

(assert (=> b!1155708 (=> (not res!767871) (not e!657294))))

(assert (=> b!1155708 (= res!767871 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36563 _keys!1208))))))

(declare-fun b!1155709 () Bool)

(declare-fun res!767870 () Bool)

(assert (=> b!1155709 (=> (not res!767870) (not e!657294))))

(assert (=> b!1155709 (= res!767870 (= (select (arr!36026 _keys!1208) i!673) k!934))))

(declare-fun b!1155710 () Bool)

(declare-fun e!657300 () Bool)

(assert (=> b!1155710 (= e!657298 e!657300)))

(declare-fun res!767865 () Bool)

(assert (=> b!1155710 (=> res!767865 e!657300)))

(assert (=> b!1155710 (= res!767865 (not (= from!1455 i!673)))))

(declare-fun lt!518564 () ListLongMap!16551)

(assert (=> b!1155710 (= lt!518564 (getCurrentListMapNoExtraKeys!4730 lt!518573 lt!518576 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1155710 (= lt!518576 (array!74757 (store (arr!36025 _values!996) i!673 (ValueCellFull!13781 lt!518583)) (size!36562 _values!996)))))

(declare-fun dynLambda!2744 (Int (_ BitVec 64)) V!43769)

(assert (=> b!1155710 (= lt!518583 (dynLambda!2744 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1155710 (= lt!518562 (getCurrentListMapNoExtraKeys!4730 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1155711 () Bool)

(declare-fun res!767861 () Bool)

(assert (=> b!1155711 (=> (not res!767861) (not e!657294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1155711 (= res!767861 (validMask!0 mask!1564))))

(declare-fun b!1155712 () Bool)

(declare-fun c!114865 () Bool)

(assert (=> b!1155712 (= c!114865 (and (not lt!518574) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!657292 () Unit!37954)

(assert (=> b!1155712 (= e!657291 e!657292)))

(declare-fun bm!54955 () Bool)

(assert (=> bm!54955 (= call!54955 (addStillContains!919 lt!518563 (ite (or c!114870 c!114865) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114870 c!114865) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1155713 () Bool)

(declare-fun res!767872 () Bool)

(assert (=> b!1155713 (=> (not res!767872) (not e!657294))))

(assert (=> b!1155713 (= res!767872 (and (= (size!36562 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36563 _keys!1208) (size!36562 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1155714 () Bool)

(declare-fun res!767869 () Bool)

(assert (=> b!1155714 (=> (not res!767869) (not e!657294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1155714 (= res!767869 (validKeyInArray!0 k!934))))

(declare-fun b!1155715 () Bool)

(declare-fun lt!518578 () Unit!37954)

(assert (=> b!1155715 (= e!657292 lt!518578)))

(declare-fun call!54956 () Unit!37954)

(assert (=> b!1155715 (= lt!518578 call!54956)))

(assert (=> b!1155715 call!54959))

(declare-fun b!1155716 () Bool)

(declare-fun e!657288 () Bool)

(assert (=> b!1155716 (= e!657288 (and e!657293 mapRes!45296))))

(declare-fun condMapEmpty!45296 () Bool)

(declare-fun mapDefault!45296 () ValueCell!13781)

