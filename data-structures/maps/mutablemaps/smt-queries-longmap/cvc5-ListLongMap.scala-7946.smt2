; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98552 () Bool)

(assert start!98552)

(declare-fun b_free!24121 () Bool)

(declare-fun b_next!24121 () Bool)

(assert (=> start!98552 (= b_free!24121 (not b_next!24121))))

(declare-fun tp!85075 () Bool)

(declare-fun b_and!39105 () Bool)

(assert (=> start!98552 (= tp!85075 b_and!39105)))

(declare-fun b!1140629 () Bool)

(declare-fun res!760560 () Bool)

(declare-fun e!648999 () Bool)

(assert (=> b!1140629 (=> (not res!760560) (not e!648999))))

(declare-datatypes ((array!74114 0))(
  ( (array!74115 (arr!35704 (Array (_ BitVec 32) (_ BitVec 64))) (size!36241 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74114)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74114 (_ BitVec 32)) Bool)

(assert (=> b!1140629 (= res!760560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1140630 () Bool)

(declare-fun e!648993 () Bool)

(declare-fun e!648987 () Bool)

(assert (=> b!1140630 (= e!648993 e!648987)))

(declare-fun res!760550 () Bool)

(assert (=> b!1140630 (=> res!760550 e!648987)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1140630 (= res!760550 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43329 0))(
  ( (V!43330 (val!14382 Int)) )
))
(declare-fun zeroValue!944 () V!43329)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!507959 () array!74114)

(declare-datatypes ((tuple2!18272 0))(
  ( (tuple2!18273 (_1!9146 (_ BitVec 64)) (_2!9146 V!43329)) )
))
(declare-datatypes ((List!25074 0))(
  ( (Nil!25071) (Cons!25070 (h!26279 tuple2!18272) (t!36194 List!25074)) )
))
(declare-datatypes ((ListLongMap!16253 0))(
  ( (ListLongMap!16254 (toList!8142 List!25074)) )
))
(declare-fun lt!507958 () ListLongMap!16253)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13616 0))(
  ( (ValueCellFull!13616 (v!17020 V!43329)) (EmptyCell!13616) )
))
(declare-datatypes ((array!74116 0))(
  ( (array!74117 (arr!35705 (Array (_ BitVec 32) ValueCell!13616)) (size!36242 (_ BitVec 32))) )
))
(declare-fun lt!507969 () array!74116)

(declare-fun minValue!944 () V!43329)

(declare-fun getCurrentListMapNoExtraKeys!4586 (array!74114 array!74116 (_ BitVec 32) (_ BitVec 32) V!43329 V!43329 (_ BitVec 32) Int) ListLongMap!16253)

(assert (=> b!1140630 (= lt!507958 (getCurrentListMapNoExtraKeys!4586 lt!507959 lt!507969 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!507953 () V!43329)

(declare-fun _values!996 () array!74116)

(assert (=> b!1140630 (= lt!507969 (array!74117 (store (arr!35705 _values!996) i!673 (ValueCellFull!13616 lt!507953)) (size!36242 _values!996)))))

(declare-fun dynLambda!2641 (Int (_ BitVec 64)) V!43329)

(assert (=> b!1140630 (= lt!507953 (dynLambda!2641 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!507960 () ListLongMap!16253)

(assert (=> b!1140630 (= lt!507960 (getCurrentListMapNoExtraKeys!4586 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1140631 () Bool)

(declare-fun e!649002 () Bool)

(assert (=> b!1140631 (= e!649002 (not e!648993))))

(declare-fun res!760552 () Bool)

(assert (=> b!1140631 (=> res!760552 e!648993)))

(assert (=> b!1140631 (= res!760552 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1140631 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37329 0))(
  ( (Unit!37330) )
))
(declare-fun lt!507954 () Unit!37329)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74114 (_ BitVec 64) (_ BitVec 32)) Unit!37329)

(assert (=> b!1140631 (= lt!507954 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1140632 () Bool)

(declare-fun res!760556 () Bool)

(assert (=> b!1140632 (=> (not res!760556) (not e!648999))))

(declare-datatypes ((List!25075 0))(
  ( (Nil!25072) (Cons!25071 (h!26280 (_ BitVec 64)) (t!36195 List!25075)) )
))
(declare-fun arrayNoDuplicates!0 (array!74114 (_ BitVec 32) List!25075) Bool)

(assert (=> b!1140632 (= res!760556 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25072))))

(declare-fun mapIsEmpty!44801 () Bool)

(declare-fun mapRes!44801 () Bool)

(assert (=> mapIsEmpty!44801 mapRes!44801))

(declare-fun b!1140633 () Bool)

(declare-fun res!760561 () Bool)

(assert (=> b!1140633 (=> (not res!760561) (not e!648999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1140633 (= res!760561 (validKeyInArray!0 k!934))))

(declare-fun bm!50990 () Bool)

(declare-fun call!50993 () Bool)

(declare-fun call!51000 () Bool)

(assert (=> bm!50990 (= call!50993 call!51000)))

(declare-fun bm!50991 () Bool)

(declare-fun call!50995 () ListLongMap!16253)

(declare-fun call!50998 () ListLongMap!16253)

(assert (=> bm!50991 (= call!50995 call!50998)))

(declare-fun b!1140634 () Bool)

(declare-fun e!648994 () Unit!37329)

(declare-fun Unit!37331 () Unit!37329)

(assert (=> b!1140634 (= e!648994 Unit!37331)))

(declare-fun b!1140635 () Bool)

(declare-fun res!760553 () Bool)

(assert (=> b!1140635 (=> (not res!760553) (not e!649002))))

(assert (=> b!1140635 (= res!760553 (arrayNoDuplicates!0 lt!507959 #b00000000000000000000000000000000 Nil!25072))))

(declare-fun lt!507963 () Bool)

(declare-fun b!1140636 () Bool)

(declare-fun e!648998 () Bool)

(assert (=> b!1140636 (= e!648998 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!507963) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1140637 () Bool)

(declare-fun e!648989 () Unit!37329)

(declare-fun lt!507957 () Unit!37329)

(assert (=> b!1140637 (= e!648989 lt!507957)))

(declare-fun call!50996 () Unit!37329)

(assert (=> b!1140637 (= lt!507957 call!50996)))

(assert (=> b!1140637 call!50993))

(declare-fun b!1140638 () Bool)

(assert (=> b!1140638 (= e!648999 e!649002)))

(declare-fun res!760551 () Bool)

(assert (=> b!1140638 (=> (not res!760551) (not e!649002))))

(assert (=> b!1140638 (= res!760551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!507959 mask!1564))))

(assert (=> b!1140638 (= lt!507959 (array!74115 (store (arr!35704 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36241 _keys!1208)))))

(declare-fun b!1140639 () Bool)

(declare-fun res!760562 () Bool)

(assert (=> b!1140639 (=> (not res!760562) (not e!648999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1140639 (= res!760562 (validMask!0 mask!1564))))

(declare-fun b!1140640 () Bool)

(declare-fun e!648997 () Bool)

(declare-fun tp_is_empty!28651 () Bool)

(assert (=> b!1140640 (= e!648997 tp_is_empty!28651)))

(declare-fun b!1140641 () Bool)

(declare-fun lt!507950 () ListLongMap!16253)

(declare-fun contains!6648 (ListLongMap!16253 (_ BitVec 64)) Bool)

(declare-fun +!3488 (ListLongMap!16253 tuple2!18272) ListLongMap!16253)

(assert (=> b!1140641 (contains!6648 (+!3488 lt!507950 (tuple2!18273 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!507955 () Unit!37329)

(declare-fun call!50999 () Unit!37329)

(assert (=> b!1140641 (= lt!507955 call!50999)))

(assert (=> b!1140641 call!51000))

(assert (=> b!1140641 (= lt!507950 call!50998)))

(declare-fun lt!507961 () ListLongMap!16253)

(declare-fun lt!507952 () Unit!37329)

(declare-fun addStillContains!789 (ListLongMap!16253 (_ BitVec 64) V!43329 (_ BitVec 64)) Unit!37329)

(assert (=> b!1140641 (= lt!507952 (addStillContains!789 lt!507961 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!648992 () Unit!37329)

(assert (=> b!1140641 (= e!648992 lt!507955)))

(declare-fun c!111898 () Bool)

(declare-fun bm!50993 () Bool)

(assert (=> bm!50993 (= call!51000 (contains!6648 (ite c!111898 lt!507950 call!50995) k!934))))

(declare-fun b!1140642 () Bool)

(declare-fun e!648995 () Bool)

(assert (=> b!1140642 (= e!648995 true)))

(declare-fun lt!507966 () V!43329)

(declare-fun -!1241 (ListLongMap!16253 (_ BitVec 64)) ListLongMap!16253)

(assert (=> b!1140642 (= (-!1241 (+!3488 lt!507961 (tuple2!18273 (select (arr!35704 _keys!1208) from!1455) lt!507966)) (select (arr!35704 _keys!1208) from!1455)) lt!507961)))

(declare-fun lt!507964 () Unit!37329)

(declare-fun addThenRemoveForNewKeyIsSame!96 (ListLongMap!16253 (_ BitVec 64) V!43329) Unit!37329)

(assert (=> b!1140642 (= lt!507964 (addThenRemoveForNewKeyIsSame!96 lt!507961 (select (arr!35704 _keys!1208) from!1455) lt!507966))))

(declare-fun get!18158 (ValueCell!13616 V!43329) V!43329)

(assert (=> b!1140642 (= lt!507966 (get!18158 (select (arr!35705 _values!996) from!1455) lt!507953))))

(declare-fun lt!507962 () Unit!37329)

(declare-fun e!648991 () Unit!37329)

(assert (=> b!1140642 (= lt!507962 e!648991)))

(declare-fun c!111897 () Bool)

(assert (=> b!1140642 (= c!111897 (contains!6648 lt!507961 k!934))))

(assert (=> b!1140642 (= lt!507961 (getCurrentListMapNoExtraKeys!4586 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44801 () Bool)

(declare-fun tp!85074 () Bool)

(assert (=> mapNonEmpty!44801 (= mapRes!44801 (and tp!85074 e!648997))))

(declare-fun mapValue!44801 () ValueCell!13616)

(declare-fun mapKey!44801 () (_ BitVec 32))

(declare-fun mapRest!44801 () (Array (_ BitVec 32) ValueCell!13616))

(assert (=> mapNonEmpty!44801 (= (arr!35705 _values!996) (store mapRest!44801 mapKey!44801 mapValue!44801))))

(declare-fun b!1140643 () Bool)

(assert (=> b!1140643 call!50993))

(declare-fun lt!507951 () Unit!37329)

(assert (=> b!1140643 (= lt!507951 call!50996)))

(assert (=> b!1140643 (= e!648994 lt!507951)))

(declare-fun bm!50994 () Bool)

(assert (=> bm!50994 (= call!50996 call!50999)))

(declare-fun bm!50995 () Bool)

(declare-fun c!111900 () Bool)

(assert (=> bm!50995 (= call!50999 (addStillContains!789 (ite c!111898 lt!507950 lt!507961) (ite c!111898 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111900 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111898 minValue!944 (ite c!111900 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1140644 () Bool)

(declare-fun e!649000 () Bool)

(assert (=> b!1140644 (= e!649000 tp_is_empty!28651)))

(declare-fun bm!50996 () Bool)

(assert (=> bm!50996 (= call!50998 (+!3488 lt!507961 (ite (or c!111898 c!111900) (tuple2!18273 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18273 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1140645 () Bool)

(declare-fun e!648988 () Bool)

(assert (=> b!1140645 (= e!648988 (and e!649000 mapRes!44801))))

(declare-fun condMapEmpty!44801 () Bool)

(declare-fun mapDefault!44801 () ValueCell!13616)

