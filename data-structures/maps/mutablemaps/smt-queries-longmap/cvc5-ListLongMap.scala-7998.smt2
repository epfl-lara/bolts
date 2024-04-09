; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98864 () Bool)

(assert start!98864)

(declare-fun b_free!24433 () Bool)

(declare-fun b_next!24433 () Bool)

(assert (=> start!98864 (= b_free!24433 (not b_next!24433))))

(declare-fun tp!86010 () Bool)

(declare-fun b_and!39729 () Bool)

(assert (=> start!98864 (= tp!86010 b_and!39729)))

(declare-fun b!1154866 () Bool)

(declare-fun res!767456 () Bool)

(declare-fun e!656837 () Bool)

(assert (=> b!1154866 (=> (not res!767456) (not e!656837))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74722 0))(
  ( (array!74723 (arr!36008 (Array (_ BitVec 32) (_ BitVec 64))) (size!36545 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74722)

(assert (=> b!1154866 (= res!767456 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36545 _keys!1208))))))

(declare-datatypes ((V!43745 0))(
  ( (V!43746 (val!14538 Int)) )
))
(declare-fun zeroValue!944 () V!43745)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13772 0))(
  ( (ValueCellFull!13772 (v!17176 V!43745)) (EmptyCell!13772) )
))
(declare-datatypes ((array!74724 0))(
  ( (array!74725 (arr!36009 (Array (_ BitVec 32) ValueCell!13772)) (size!36546 (_ BitVec 32))) )
))
(declare-fun lt!517985 () array!74724)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43745)

(declare-fun lt!517975 () array!74722)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!18556 0))(
  ( (tuple2!18557 (_1!9288 (_ BitVec 64)) (_2!9288 V!43745)) )
))
(declare-datatypes ((List!25339 0))(
  ( (Nil!25336) (Cons!25335 (h!26544 tuple2!18556) (t!36771 List!25339)) )
))
(declare-datatypes ((ListLongMap!16537 0))(
  ( (ListLongMap!16538 (toList!8284 List!25339)) )
))
(declare-fun call!54740 () ListLongMap!16537)

(declare-fun bm!54734 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4723 (array!74722 array!74724 (_ BitVec 32) (_ BitVec 32) V!43745 V!43745 (_ BitVec 32) Int) ListLongMap!16537)

(assert (=> bm!54734 (= call!54740 (getCurrentListMapNoExtraKeys!4723 lt!517975 lt!517985 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154867 () Bool)

(declare-fun call!54737 () Bool)

(assert (=> b!1154867 call!54737))

(declare-datatypes ((Unit!37922 0))(
  ( (Unit!37923) )
))
(declare-fun lt!517988 () Unit!37922)

(declare-fun call!54738 () Unit!37922)

(assert (=> b!1154867 (= lt!517988 call!54738)))

(declare-fun e!656843 () Unit!37922)

(assert (=> b!1154867 (= e!656843 lt!517988)))

(declare-fun b!1154868 () Bool)

(declare-fun e!656833 () Unit!37922)

(declare-fun Unit!37924 () Unit!37922)

(assert (=> b!1154868 (= e!656833 Unit!37924)))

(declare-fun lt!517983 () Bool)

(assert (=> b!1154868 (= lt!517983 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114705 () Bool)

(assert (=> b!1154868 (= c!114705 (and (not lt!517983) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!517978 () Unit!37922)

(declare-fun e!656835 () Unit!37922)

(assert (=> b!1154868 (= lt!517978 e!656835)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun _values!996 () array!74724)

(declare-fun lt!517989 () Unit!37922)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!492 (array!74722 array!74724 (_ BitVec 32) (_ BitVec 32) V!43745 V!43745 (_ BitVec 64) (_ BitVec 32) Int) Unit!37922)

(assert (=> b!1154868 (= lt!517989 (lemmaListMapContainsThenArrayContainsFrom!492 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114704 () Bool)

(assert (=> b!1154868 (= c!114704 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767463 () Bool)

(declare-fun e!656830 () Bool)

(assert (=> b!1154868 (= res!767463 e!656830)))

(declare-fun e!656831 () Bool)

(assert (=> b!1154868 (=> (not res!767463) (not e!656831))))

(assert (=> b!1154868 e!656831))

(declare-fun lt!517972 () Unit!37922)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74722 (_ BitVec 32) (_ BitVec 32)) Unit!37922)

(assert (=> b!1154868 (= lt!517972 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25340 0))(
  ( (Nil!25337) (Cons!25336 (h!26545 (_ BitVec 64)) (t!36772 List!25340)) )
))
(declare-fun arrayNoDuplicates!0 (array!74722 (_ BitVec 32) List!25340) Bool)

(assert (=> b!1154868 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25337)))

(declare-fun lt!517981 () Unit!37922)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74722 (_ BitVec 64) (_ BitVec 32) List!25340) Unit!37922)

(assert (=> b!1154868 (= lt!517981 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25337))))

(assert (=> b!1154868 false))

(declare-fun lt!517979 () ListLongMap!16537)

(declare-fun b!1154869 () Bool)

(declare-fun e!656838 () Bool)

(assert (=> b!1154869 (= e!656838 (= lt!517979 (getCurrentListMapNoExtraKeys!4723 lt!517975 lt!517985 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun mapNonEmpty!45269 () Bool)

(declare-fun mapRes!45269 () Bool)

(declare-fun tp!86011 () Bool)

(declare-fun e!656834 () Bool)

(assert (=> mapNonEmpty!45269 (= mapRes!45269 (and tp!86011 e!656834))))

(declare-fun mapValue!45269 () ValueCell!13772)

(declare-fun mapKey!45269 () (_ BitVec 32))

(declare-fun mapRest!45269 () (Array (_ BitVec 32) ValueCell!13772))

(assert (=> mapNonEmpty!45269 (= (arr!36009 _values!996) (store mapRest!45269 mapKey!45269 mapValue!45269))))

(declare-fun b!1154870 () Bool)

(declare-fun res!767465 () Bool)

(assert (=> b!1154870 (=> (not res!767465) (not e!656837))))

(assert (=> b!1154870 (= res!767465 (= (select (arr!36008 _keys!1208) i!673) k!934))))

(declare-fun b!1154871 () Bool)

(declare-fun Unit!37925 () Unit!37922)

(assert (=> b!1154871 (= e!656833 Unit!37925)))

(declare-fun bm!54735 () Bool)

(declare-fun call!54744 () ListLongMap!16537)

(assert (=> bm!54735 (= call!54744 (getCurrentListMapNoExtraKeys!4723 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154872 () Bool)

(declare-fun res!767457 () Bool)

(assert (=> b!1154872 (=> (not res!767457) (not e!656837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1154872 (= res!767457 (validKeyInArray!0 k!934))))

(declare-fun b!1154873 () Bool)

(declare-fun res!767458 () Bool)

(assert (=> b!1154873 (=> (not res!767458) (not e!656837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1154873 (= res!767458 (validMask!0 mask!1564))))

(declare-fun bm!54736 () Bool)

(declare-fun call!54741 () Bool)

(assert (=> bm!54736 (= call!54737 call!54741)))

(declare-fun b!1154874 () Bool)

(declare-fun e!656839 () Bool)

(declare-fun e!656832 () Bool)

(assert (=> b!1154874 (= e!656839 (not e!656832))))

(declare-fun res!767468 () Bool)

(assert (=> b!1154874 (=> res!767468 e!656832)))

(assert (=> b!1154874 (= res!767468 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1154874 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!517980 () Unit!37922)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74722 (_ BitVec 64) (_ BitVec 32)) Unit!37922)

(assert (=> b!1154874 (= lt!517980 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1154875 () Bool)

(declare-fun call!54743 () ListLongMap!16537)

(declare-fun contains!6772 (ListLongMap!16537 (_ BitVec 64)) Bool)

(assert (=> b!1154875 (contains!6772 call!54743 k!934)))

(declare-fun lt!517986 () Unit!37922)

(declare-fun call!54742 () Unit!37922)

(assert (=> b!1154875 (= lt!517986 call!54742)))

(assert (=> b!1154875 call!54741))

(declare-fun lt!517969 () ListLongMap!16537)

(declare-fun lt!517970 () ListLongMap!16537)

(declare-fun +!3615 (ListLongMap!16537 tuple2!18556) ListLongMap!16537)

(assert (=> b!1154875 (= lt!517969 (+!3615 lt!517970 (tuple2!18557 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!517976 () Unit!37922)

(declare-fun addStillContains!912 (ListLongMap!16537 (_ BitVec 64) V!43745 (_ BitVec 64)) Unit!37922)

(assert (=> b!1154875 (= lt!517976 (addStillContains!912 lt!517970 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1154875 (= e!656835 lt!517986)))

(declare-fun mapIsEmpty!45269 () Bool)

(assert (=> mapIsEmpty!45269 mapRes!45269))

(declare-fun b!1154876 () Bool)

(declare-fun e!656829 () Bool)

(assert (=> b!1154876 (= e!656829 true)))

(assert (=> b!1154876 e!656838))

(declare-fun res!767455 () Bool)

(assert (=> b!1154876 (=> (not res!767455) (not e!656838))))

(assert (=> b!1154876 (= res!767455 (= lt!517979 lt!517970))))

(declare-fun lt!517984 () ListLongMap!16537)

(declare-fun -!1362 (ListLongMap!16537 (_ BitVec 64)) ListLongMap!16537)

(assert (=> b!1154876 (= lt!517979 (-!1362 lt!517984 k!934))))

(declare-fun lt!517971 () V!43745)

(assert (=> b!1154876 (= (-!1362 (+!3615 lt!517970 (tuple2!18557 (select (arr!36008 _keys!1208) from!1455) lt!517971)) (select (arr!36008 _keys!1208) from!1455)) lt!517970)))

(declare-fun lt!517987 () Unit!37922)

(declare-fun addThenRemoveForNewKeyIsSame!205 (ListLongMap!16537 (_ BitVec 64) V!43745) Unit!37922)

(assert (=> b!1154876 (= lt!517987 (addThenRemoveForNewKeyIsSame!205 lt!517970 (select (arr!36008 _keys!1208) from!1455) lt!517971))))

(declare-fun lt!517982 () V!43745)

(declare-fun get!18371 (ValueCell!13772 V!43745) V!43745)

(assert (=> b!1154876 (= lt!517971 (get!18371 (select (arr!36009 _values!996) from!1455) lt!517982))))

(declare-fun lt!517974 () Unit!37922)

(assert (=> b!1154876 (= lt!517974 e!656833)))

(declare-fun c!114706 () Bool)

(assert (=> b!1154876 (= c!114706 (contains!6772 lt!517970 k!934))))

(assert (=> b!1154876 (= lt!517970 (getCurrentListMapNoExtraKeys!4723 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154877 () Bool)

(declare-fun e!656842 () Bool)

(declare-fun e!656828 () Bool)

(assert (=> b!1154877 (= e!656842 (and e!656828 mapRes!45269))))

(declare-fun condMapEmpty!45269 () Bool)

(declare-fun mapDefault!45269 () ValueCell!13772)

