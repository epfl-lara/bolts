; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98708 () Bool)

(assert start!98708)

(declare-fun b_free!24277 () Bool)

(declare-fun b_next!24277 () Bool)

(assert (=> start!98708 (= b_free!24277 (not b_next!24277))))

(declare-fun tp!85542 () Bool)

(declare-fun b_and!39417 () Bool)

(assert (=> start!98708 (= tp!85542 b_and!39417)))

(declare-fun b!1147690 () Bool)

(declare-datatypes ((V!43537 0))(
  ( (V!43538 (val!14460 Int)) )
))
(declare-datatypes ((tuple2!18412 0))(
  ( (tuple2!18413 (_1!9216 (_ BitVec 64)) (_2!9216 V!43537)) )
))
(declare-datatypes ((List!25205 0))(
  ( (Nil!25202) (Cons!25201 (h!26410 tuple2!18412) (t!36481 List!25205)) )
))
(declare-datatypes ((ListLongMap!16393 0))(
  ( (ListLongMap!16394 (toList!8212 List!25205)) )
))
(declare-fun lt!512877 () ListLongMap!16393)

(declare-fun minValue!944 () V!43537)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6709 (ListLongMap!16393 (_ BitVec 64)) Bool)

(declare-fun +!3552 (ListLongMap!16393 tuple2!18412) ListLongMap!16393)

(assert (=> b!1147690 (contains!6709 (+!3552 lt!512877 (tuple2!18413 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!37624 0))(
  ( (Unit!37625) )
))
(declare-fun lt!512868 () Unit!37624)

(declare-fun call!52869 () Unit!37624)

(assert (=> b!1147690 (= lt!512868 call!52869)))

(declare-fun call!52865 () Bool)

(assert (=> b!1147690 call!52865))

(declare-fun call!52870 () ListLongMap!16393)

(assert (=> b!1147690 (= lt!512877 call!52870)))

(declare-fun zeroValue!944 () V!43537)

(declare-fun lt!512880 () Unit!37624)

(declare-fun lt!512878 () ListLongMap!16393)

(declare-fun addStillContains!851 (ListLongMap!16393 (_ BitVec 64) V!43537 (_ BitVec 64)) Unit!37624)

(assert (=> b!1147690 (= lt!512880 (addStillContains!851 lt!512878 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!652865 () Unit!37624)

(assert (=> b!1147690 (= e!652865 lt!512868)))

(declare-fun b!1147691 () Bool)

(declare-fun e!652864 () Bool)

(assert (=> b!1147691 (= e!652864 true)))

(declare-fun e!652858 () Bool)

(assert (=> b!1147691 e!652858))

(declare-fun res!763955 () Bool)

(assert (=> b!1147691 (=> (not res!763955) (not e!652858))))

(declare-datatypes ((array!74418 0))(
  ( (array!74419 (arr!35856 (Array (_ BitVec 32) (_ BitVec 64))) (size!36393 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74418)

(declare-fun lt!512883 () V!43537)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun -!1302 (ListLongMap!16393 (_ BitVec 64)) ListLongMap!16393)

(assert (=> b!1147691 (= res!763955 (= (-!1302 (+!3552 lt!512878 (tuple2!18413 (select (arr!35856 _keys!1208) from!1455) lt!512883)) (select (arr!35856 _keys!1208) from!1455)) lt!512878))))

(declare-fun lt!512866 () Unit!37624)

(declare-fun addThenRemoveForNewKeyIsSame!151 (ListLongMap!16393 (_ BitVec 64) V!43537) Unit!37624)

(assert (=> b!1147691 (= lt!512866 (addThenRemoveForNewKeyIsSame!151 lt!512878 (select (arr!35856 _keys!1208) from!1455) lt!512883))))

(declare-datatypes ((ValueCell!13694 0))(
  ( (ValueCellFull!13694 (v!17098 V!43537)) (EmptyCell!13694) )
))
(declare-datatypes ((array!74420 0))(
  ( (array!74421 (arr!35857 (Array (_ BitVec 32) ValueCell!13694)) (size!36394 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74420)

(declare-fun lt!512873 () V!43537)

(declare-fun get!18265 (ValueCell!13694 V!43537) V!43537)

(assert (=> b!1147691 (= lt!512883 (get!18265 (select (arr!35857 _values!996) from!1455) lt!512873))))

(declare-fun lt!512870 () Unit!37624)

(declare-fun e!652863 () Unit!37624)

(assert (=> b!1147691 (= lt!512870 e!652863)))

(declare-fun c!113300 () Bool)

(assert (=> b!1147691 (= c!113300 (contains!6709 lt!512878 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4653 (array!74418 array!74420 (_ BitVec 32) (_ BitVec 32) V!43537 V!43537 (_ BitVec 32) Int) ListLongMap!16393)

(assert (=> b!1147691 (= lt!512878 (getCurrentListMapNoExtraKeys!4653 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147692 () Bool)

(declare-fun res!763953 () Bool)

(declare-fun e!652860 () Bool)

(assert (=> b!1147692 (=> (not res!763953) (not e!652860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74418 (_ BitVec 32)) Bool)

(assert (=> b!1147692 (= res!763953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1147693 () Bool)

(declare-fun res!763958 () Bool)

(assert (=> b!1147693 (=> (not res!763958) (not e!652860))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1147693 (= res!763958 (validMask!0 mask!1564))))

(declare-fun bm!52862 () Bool)

(declare-fun call!52868 () Bool)

(assert (=> bm!52862 (= call!52868 call!52865)))

(declare-fun b!1147694 () Bool)

(declare-fun e!652850 () Bool)

(declare-fun call!52872 () ListLongMap!16393)

(declare-fun call!52866 () ListLongMap!16393)

(assert (=> b!1147694 (= e!652850 (= call!52872 call!52866))))

(declare-fun bm!52863 () Bool)

(declare-fun c!113301 () Bool)

(declare-fun c!113302 () Bool)

(assert (=> bm!52863 (= call!52869 (addStillContains!851 (ite c!113301 lt!512877 lt!512878) (ite c!113301 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113302 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113301 minValue!944 (ite c!113302 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1147695 () Bool)

(declare-fun res!763952 () Bool)

(assert (=> b!1147695 (=> (not res!763952) (not e!652860))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1147695 (= res!763952 (= (select (arr!35856 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!45035 () Bool)

(declare-fun mapRes!45035 () Bool)

(assert (=> mapIsEmpty!45035 mapRes!45035))

(declare-fun b!1147697 () Bool)

(declare-fun lt!512874 () Bool)

(assert (=> b!1147697 (= c!113302 (and (not lt!512874) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!652854 () Unit!37624)

(assert (=> b!1147697 (= e!652865 e!652854)))

(declare-fun b!1147698 () Bool)

(declare-fun lt!512879 () Unit!37624)

(assert (=> b!1147698 (= e!652854 lt!512879)))

(declare-fun call!52871 () Unit!37624)

(assert (=> b!1147698 (= lt!512879 call!52871)))

(assert (=> b!1147698 call!52868))

(declare-fun mapNonEmpty!45035 () Bool)

(declare-fun tp!85543 () Bool)

(declare-fun e!652855 () Bool)

(assert (=> mapNonEmpty!45035 (= mapRes!45035 (and tp!85543 e!652855))))

(declare-fun mapRest!45035 () (Array (_ BitVec 32) ValueCell!13694))

(declare-fun mapValue!45035 () ValueCell!13694)

(declare-fun mapKey!45035 () (_ BitVec 32))

(assert (=> mapNonEmpty!45035 (= (arr!35857 _values!996) (store mapRest!45035 mapKey!45035 mapValue!45035))))

(declare-fun b!1147699 () Bool)

(declare-fun res!763950 () Bool)

(assert (=> b!1147699 (=> (not res!763950) (not e!652860))))

(assert (=> b!1147699 (= res!763950 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36393 _keys!1208))))))

(declare-fun lt!512864 () ListLongMap!16393)

(declare-fun b!1147700 () Bool)

(assert (=> b!1147700 (= e!652858 (= (-!1302 lt!512864 k!934) lt!512878))))

(declare-fun b!1147701 () Bool)

(declare-fun Unit!37626 () Unit!37624)

(assert (=> b!1147701 (= e!652863 Unit!37626)))

(assert (=> b!1147701 (= lt!512874 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1147701 (= c!113301 (and (not lt!512874) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!512882 () Unit!37624)

(assert (=> b!1147701 (= lt!512882 e!652865)))

(declare-fun lt!512872 () Unit!37624)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!438 (array!74418 array!74420 (_ BitVec 32) (_ BitVec 32) V!43537 V!43537 (_ BitVec 64) (_ BitVec 32) Int) Unit!37624)

(assert (=> b!1147701 (= lt!512872 (lemmaListMapContainsThenArrayContainsFrom!438 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113303 () Bool)

(assert (=> b!1147701 (= c!113303 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763956 () Bool)

(declare-fun e!652856 () Bool)

(assert (=> b!1147701 (= res!763956 e!652856)))

(declare-fun e!652857 () Bool)

(assert (=> b!1147701 (=> (not res!763956) (not e!652857))))

(assert (=> b!1147701 e!652857))

(declare-fun lt!512871 () Unit!37624)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74418 (_ BitVec 32) (_ BitVec 32)) Unit!37624)

(assert (=> b!1147701 (= lt!512871 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25206 0))(
  ( (Nil!25203) (Cons!25202 (h!26411 (_ BitVec 64)) (t!36482 List!25206)) )
))
(declare-fun arrayNoDuplicates!0 (array!74418 (_ BitVec 32) List!25206) Bool)

(assert (=> b!1147701 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25203)))

(declare-fun lt!512863 () Unit!37624)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74418 (_ BitVec 64) (_ BitVec 32) List!25206) Unit!37624)

(assert (=> b!1147701 (= lt!512863 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25203))))

(assert (=> b!1147701 false))

(declare-fun b!1147702 () Bool)

(declare-fun arrayContainsKey!0 (array!74418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1147702 (= e!652857 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52864 () Bool)

(assert (=> bm!52864 (= call!52871 call!52869)))

(declare-fun b!1147703 () Bool)

(declare-fun res!763945 () Bool)

(assert (=> b!1147703 (=> (not res!763945) (not e!652860))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1147703 (= res!763945 (validKeyInArray!0 k!934))))

(declare-fun b!1147704 () Bool)

(assert (=> b!1147704 call!52868))

(declare-fun lt!512876 () Unit!37624)

(assert (=> b!1147704 (= lt!512876 call!52871)))

(declare-fun e!652861 () Unit!37624)

(assert (=> b!1147704 (= e!652861 lt!512876)))

(declare-fun bm!52865 () Bool)

(declare-fun lt!512875 () array!74420)

(declare-fun lt!512867 () array!74418)

(assert (=> bm!52865 (= call!52872 (getCurrentListMapNoExtraKeys!4653 lt!512867 lt!512875 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147705 () Bool)

(declare-fun tp_is_empty!28807 () Bool)

(assert (=> b!1147705 (= e!652855 tp_is_empty!28807)))

(declare-fun b!1147706 () Bool)

(declare-fun e!652859 () Bool)

(assert (=> b!1147706 (= e!652859 e!652864)))

(declare-fun res!763944 () Bool)

(assert (=> b!1147706 (=> res!763944 e!652864)))

(assert (=> b!1147706 (= res!763944 (not (= (select (arr!35856 _keys!1208) from!1455) k!934)))))

(assert (=> b!1147706 e!652850))

(declare-fun c!113304 () Bool)

(assert (=> b!1147706 (= c!113304 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!512869 () Unit!37624)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!547 (array!74418 array!74420 (_ BitVec 32) (_ BitVec 32) V!43537 V!43537 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37624)

(assert (=> b!1147706 (= lt!512869 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!547 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147707 () Bool)

(declare-fun e!652853 () Bool)

(declare-fun e!652866 () Bool)

(assert (=> b!1147707 (= e!652853 (not e!652866))))

(declare-fun res!763957 () Bool)

(assert (=> b!1147707 (=> res!763957 e!652866)))

(assert (=> b!1147707 (= res!763957 (bvsgt from!1455 i!673))))

(assert (=> b!1147707 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!512865 () Unit!37624)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74418 (_ BitVec 64) (_ BitVec 32)) Unit!37624)

(assert (=> b!1147707 (= lt!512865 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1147708 () Bool)

(declare-fun Unit!37627 () Unit!37624)

(assert (=> b!1147708 (= e!652863 Unit!37627)))

(declare-fun bm!52866 () Bool)

(assert (=> bm!52866 (= call!52870 (+!3552 lt!512878 (ite (or c!113301 c!113302) (tuple2!18413 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18413 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1147696 () Bool)

(declare-fun Unit!37628 () Unit!37624)

(assert (=> b!1147696 (= e!652861 Unit!37628)))

(declare-fun res!763954 () Bool)

(assert (=> start!98708 (=> (not res!763954) (not e!652860))))

(assert (=> start!98708 (= res!763954 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36393 _keys!1208))))))

(assert (=> start!98708 e!652860))

(assert (=> start!98708 tp_is_empty!28807))

(declare-fun array_inv!27342 (array!74418) Bool)

(assert (=> start!98708 (array_inv!27342 _keys!1208)))

(assert (=> start!98708 true))

(assert (=> start!98708 tp!85542))

(declare-fun e!652862 () Bool)

(declare-fun array_inv!27343 (array!74420) Bool)

(assert (=> start!98708 (and (array_inv!27343 _values!996) e!652862)))

(declare-fun b!1147709 () Bool)

(assert (=> b!1147709 (= e!652860 e!652853)))

(declare-fun res!763946 () Bool)

(assert (=> b!1147709 (=> (not res!763946) (not e!652853))))

(assert (=> b!1147709 (= res!763946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!512867 mask!1564))))

(assert (=> b!1147709 (= lt!512867 (array!74419 (store (arr!35856 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36393 _keys!1208)))))

(declare-fun bm!52867 () Bool)

(declare-fun call!52867 () ListLongMap!16393)

(assert (=> bm!52867 (= call!52865 (contains!6709 (ite c!113301 lt!512877 call!52867) k!934))))

(declare-fun b!1147710 () Bool)

(declare-fun res!763949 () Bool)

(assert (=> b!1147710 (=> (not res!763949) (not e!652860))))

(assert (=> b!1147710 (= res!763949 (and (= (size!36394 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36393 _keys!1208) (size!36394 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1147711 () Bool)

(assert (=> b!1147711 (= e!652856 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!512874) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1147712 () Bool)

(declare-fun res!763951 () Bool)

(assert (=> b!1147712 (=> (not res!763951) (not e!652853))))

(assert (=> b!1147712 (= res!763951 (arrayNoDuplicates!0 lt!512867 #b00000000000000000000000000000000 Nil!25203))))

(declare-fun bm!52868 () Bool)

(assert (=> bm!52868 (= call!52866 (getCurrentListMapNoExtraKeys!4653 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147713 () Bool)

(declare-fun e!652852 () Bool)

(assert (=> b!1147713 (= e!652862 (and e!652852 mapRes!45035))))

(declare-fun condMapEmpty!45035 () Bool)

(declare-fun mapDefault!45035 () ValueCell!13694)

