; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98794 () Bool)

(assert start!98794)

(declare-fun b_free!24363 () Bool)

(declare-fun b_next!24363 () Bool)

(assert (=> start!98794 (= b_free!24363 (not b_next!24363))))

(declare-fun tp!85801 () Bool)

(declare-fun b_and!39589 () Bool)

(assert (=> start!98794 (= tp!85801 b_and!39589)))

(declare-fun b!1151646 () Bool)

(declare-fun e!655045 () Bool)

(declare-fun e!655058 () Bool)

(assert (=> b!1151646 (= e!655045 e!655058)))

(declare-fun res!765891 () Bool)

(assert (=> b!1151646 (=> (not res!765891) (not e!655058))))

(declare-datatypes ((array!74588 0))(
  ( (array!74589 (arr!35941 (Array (_ BitVec 32) (_ BitVec 64))) (size!36478 (_ BitVec 32))) )
))
(declare-fun lt!515661 () array!74588)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74588 (_ BitVec 32)) Bool)

(assert (=> b!1151646 (= res!765891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!515661 mask!1564))))

(declare-fun _keys!1208 () array!74588)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1151646 (= lt!515661 (array!74589 (store (arr!35941 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36478 _keys!1208)))))

(declare-fun b!1151647 () Bool)

(declare-datatypes ((Unit!37799 0))(
  ( (Unit!37800) )
))
(declare-fun e!655043 () Unit!37799)

(declare-fun Unit!37801 () Unit!37799)

(assert (=> b!1151647 (= e!655043 Unit!37801)))

(declare-fun b!1151648 () Bool)

(declare-fun res!765889 () Bool)

(assert (=> b!1151648 (=> (not res!765889) (not e!655045))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1151648 (= res!765889 (= (select (arr!35941 _keys!1208) i!673) k0!934))))

(declare-fun b!1151649 () Bool)

(declare-fun e!655050 () Bool)

(declare-fun e!655051 () Bool)

(assert (=> b!1151649 (= e!655050 e!655051)))

(declare-fun res!765884 () Bool)

(assert (=> b!1151649 (=> res!765884 e!655051)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1151649 (= res!765884 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43651 0))(
  ( (V!43652 (val!14503 Int)) )
))
(declare-fun zeroValue!944 () V!43651)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18492 0))(
  ( (tuple2!18493 (_1!9256 (_ BitVec 64)) (_2!9256 V!43651)) )
))
(declare-datatypes ((List!25282 0))(
  ( (Nil!25279) (Cons!25278 (h!26487 tuple2!18492) (t!36644 List!25282)) )
))
(declare-datatypes ((ListLongMap!16473 0))(
  ( (ListLongMap!16474 (toList!8252 List!25282)) )
))
(declare-fun lt!515672 () ListLongMap!16473)

(declare-fun minValue!944 () V!43651)

(declare-datatypes ((ValueCell!13737 0))(
  ( (ValueCellFull!13737 (v!17141 V!43651)) (EmptyCell!13737) )
))
(declare-datatypes ((array!74590 0))(
  ( (array!74591 (arr!35942 (Array (_ BitVec 32) ValueCell!13737)) (size!36479 (_ BitVec 32))) )
))
(declare-fun lt!515669 () array!74590)

(declare-fun getCurrentListMapNoExtraKeys!4692 (array!74588 array!74590 (_ BitVec 32) (_ BitVec 32) V!43651 V!43651 (_ BitVec 32) Int) ListLongMap!16473)

(assert (=> b!1151649 (= lt!515672 (getCurrentListMapNoExtraKeys!4692 lt!515661 lt!515669 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!74590)

(declare-fun lt!515664 () V!43651)

(assert (=> b!1151649 (= lt!515669 (array!74591 (store (arr!35942 _values!996) i!673 (ValueCellFull!13737 lt!515664)) (size!36479 _values!996)))))

(declare-fun dynLambda!2718 (Int (_ BitVec 64)) V!43651)

(assert (=> b!1151649 (= lt!515664 (dynLambda!2718 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!515675 () ListLongMap!16473)

(assert (=> b!1151649 (= lt!515675 (getCurrentListMapNoExtraKeys!4692 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1151650 () Bool)

(declare-fun e!655057 () Bool)

(assert (=> b!1151650 (= e!655057 true)))

(declare-fun e!655052 () Bool)

(assert (=> b!1151650 e!655052))

(declare-fun res!765893 () Bool)

(assert (=> b!1151650 (=> (not res!765893) (not e!655052))))

(declare-fun lt!515677 () ListLongMap!16473)

(declare-fun lt!515679 () ListLongMap!16473)

(assert (=> b!1151650 (= res!765893 (= lt!515677 lt!515679))))

(declare-fun -!1337 (ListLongMap!16473 (_ BitVec 64)) ListLongMap!16473)

(assert (=> b!1151650 (= lt!515677 (-!1337 lt!515675 k0!934))))

(declare-fun lt!515668 () V!43651)

(declare-fun +!3587 (ListLongMap!16473 tuple2!18492) ListLongMap!16473)

(assert (=> b!1151650 (= (-!1337 (+!3587 lt!515679 (tuple2!18493 (select (arr!35941 _keys!1208) from!1455) lt!515668)) (select (arr!35941 _keys!1208) from!1455)) lt!515679)))

(declare-fun lt!515662 () Unit!37799)

(declare-fun addThenRemoveForNewKeyIsSame!184 (ListLongMap!16473 (_ BitVec 64) V!43651) Unit!37799)

(assert (=> b!1151650 (= lt!515662 (addThenRemoveForNewKeyIsSame!184 lt!515679 (select (arr!35941 _keys!1208) from!1455) lt!515668))))

(declare-fun get!18326 (ValueCell!13737 V!43651) V!43651)

(assert (=> b!1151650 (= lt!515668 (get!18326 (select (arr!35942 _values!996) from!1455) lt!515664))))

(declare-fun lt!515663 () Unit!37799)

(assert (=> b!1151650 (= lt!515663 e!655043)))

(declare-fun c!114078 () Bool)

(declare-fun contains!6745 (ListLongMap!16473 (_ BitVec 64)) Bool)

(assert (=> b!1151650 (= c!114078 (contains!6745 lt!515679 k0!934))))

(assert (=> b!1151650 (= lt!515679 (getCurrentListMapNoExtraKeys!4692 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151651 () Bool)

(declare-fun res!765885 () Bool)

(assert (=> b!1151651 (=> (not res!765885) (not e!655058))))

(declare-datatypes ((List!25283 0))(
  ( (Nil!25280) (Cons!25279 (h!26488 (_ BitVec 64)) (t!36645 List!25283)) )
))
(declare-fun arrayNoDuplicates!0 (array!74588 (_ BitVec 32) List!25283) Bool)

(assert (=> b!1151651 (= res!765885 (arrayNoDuplicates!0 lt!515661 #b00000000000000000000000000000000 Nil!25280))))

(declare-fun b!1151652 () Bool)

(declare-fun e!655056 () Bool)

(declare-fun call!53904 () ListLongMap!16473)

(declare-fun call!53898 () ListLongMap!16473)

(assert (=> b!1151652 (= e!655056 (= call!53904 call!53898))))

(declare-fun lt!515665 () Bool)

(declare-fun e!655053 () Bool)

(declare-fun b!1151653 () Bool)

(assert (=> b!1151653 (= e!655053 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!515665) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1151654 () Bool)

(assert (=> b!1151654 (= e!655052 (= lt!515677 (getCurrentListMapNoExtraKeys!4692 lt!515661 lt!515669 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1151655 () Bool)

(declare-fun e!655054 () Bool)

(declare-fun e!655047 () Bool)

(declare-fun mapRes!45164 () Bool)

(assert (=> b!1151655 (= e!655054 (and e!655047 mapRes!45164))))

(declare-fun condMapEmpty!45164 () Bool)

(declare-fun mapDefault!45164 () ValueCell!13737)

(assert (=> b!1151655 (= condMapEmpty!45164 (= (arr!35942 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13737)) mapDefault!45164)))))

(declare-fun b!1151656 () Bool)

(declare-fun res!765890 () Bool)

(assert (=> b!1151656 (=> (not res!765890) (not e!655045))))

(assert (=> b!1151656 (= res!765890 (and (= (size!36479 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36478 _keys!1208) (size!36479 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1151657 () Bool)

(declare-fun call!53897 () Bool)

(assert (=> b!1151657 call!53897))

(declare-fun lt!515676 () Unit!37799)

(declare-fun call!53900 () Unit!37799)

(assert (=> b!1151657 (= lt!515676 call!53900)))

(declare-fun e!655048 () Unit!37799)

(assert (=> b!1151657 (= e!655048 lt!515676)))

(declare-fun mapIsEmpty!45164 () Bool)

(assert (=> mapIsEmpty!45164 mapRes!45164))

(declare-fun b!1151658 () Bool)

(declare-fun Unit!37802 () Unit!37799)

(assert (=> b!1151658 (= e!655043 Unit!37802)))

(assert (=> b!1151658 (= lt!515665 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114075 () Bool)

(assert (=> b!1151658 (= c!114075 (and (not lt!515665) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!515666 () Unit!37799)

(declare-fun e!655059 () Unit!37799)

(assert (=> b!1151658 (= lt!515666 e!655059)))

(declare-fun lt!515667 () Unit!37799)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!472 (array!74588 array!74590 (_ BitVec 32) (_ BitVec 32) V!43651 V!43651 (_ BitVec 64) (_ BitVec 32) Int) Unit!37799)

(assert (=> b!1151658 (= lt!515667 (lemmaListMapContainsThenArrayContainsFrom!472 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114073 () Bool)

(assert (=> b!1151658 (= c!114073 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765883 () Bool)

(assert (=> b!1151658 (= res!765883 e!655053)))

(declare-fun e!655055 () Bool)

(assert (=> b!1151658 (=> (not res!765883) (not e!655055))))

(assert (=> b!1151658 e!655055))

(declare-fun lt!515660 () Unit!37799)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74588 (_ BitVec 32) (_ BitVec 32)) Unit!37799)

(assert (=> b!1151658 (= lt!515660 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1151658 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25280)))

(declare-fun lt!515674 () Unit!37799)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74588 (_ BitVec 64) (_ BitVec 32) List!25283) Unit!37799)

(assert (=> b!1151658 (= lt!515674 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25280))))

(assert (=> b!1151658 false))

(declare-fun lt!515671 () ListLongMap!16473)

(declare-fun call!53899 () Unit!37799)

(declare-fun c!114076 () Bool)

(declare-fun bm!53894 () Bool)

(declare-fun addStillContains!887 (ListLongMap!16473 (_ BitVec 64) V!43651 (_ BitVec 64)) Unit!37799)

(assert (=> bm!53894 (= call!53899 (addStillContains!887 (ite c!114075 lt!515671 lt!515679) (ite c!114075 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114076 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114075 minValue!944 (ite c!114076 zeroValue!944 minValue!944)) k0!934))))

(declare-fun res!765880 () Bool)

(assert (=> start!98794 (=> (not res!765880) (not e!655045))))

(assert (=> start!98794 (= res!765880 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36478 _keys!1208))))))

(assert (=> start!98794 e!655045))

(declare-fun tp_is_empty!28893 () Bool)

(assert (=> start!98794 tp_is_empty!28893))

(declare-fun array_inv!27398 (array!74588) Bool)

(assert (=> start!98794 (array_inv!27398 _keys!1208)))

(assert (=> start!98794 true))

(assert (=> start!98794 tp!85801))

(declare-fun array_inv!27399 (array!74590) Bool)

(assert (=> start!98794 (and (array_inv!27399 _values!996) e!655054)))

(declare-fun b!1151659 () Bool)

(assert (=> b!1151659 (= e!655058 (not e!655050))))

(declare-fun res!765887 () Bool)

(assert (=> b!1151659 (=> res!765887 e!655050)))

(assert (=> b!1151659 (= res!765887 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1151659 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!515673 () Unit!37799)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74588 (_ BitVec 64) (_ BitVec 32)) Unit!37799)

(assert (=> b!1151659 (= lt!515673 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1151660 () Bool)

(assert (=> b!1151660 (= e!655056 (= call!53904 (-!1337 call!53898 k0!934)))))

(declare-fun b!1151661 () Bool)

(assert (=> b!1151661 (= c!114076 (and (not lt!515665) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!655044 () Unit!37799)

(assert (=> b!1151661 (= e!655059 e!655044)))

(declare-fun b!1151662 () Bool)

(declare-fun lt!515670 () Unit!37799)

(assert (=> b!1151662 (= e!655044 lt!515670)))

(assert (=> b!1151662 (= lt!515670 call!53900)))

(assert (=> b!1151662 call!53897))

(declare-fun b!1151663 () Bool)

(assert (=> b!1151663 (= e!655055 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1151664 () Bool)

(declare-fun res!765888 () Bool)

(assert (=> b!1151664 (=> (not res!765888) (not e!655045))))

(assert (=> b!1151664 (= res!765888 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25280))))

(declare-fun b!1151665 () Bool)

(declare-fun res!765881 () Bool)

(assert (=> b!1151665 (=> (not res!765881) (not e!655045))))

(assert (=> b!1151665 (= res!765881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!53895 () Bool)

(declare-fun call!53901 () Bool)

(assert (=> bm!53895 (= call!53897 call!53901)))

(declare-fun bm!53896 () Bool)

(declare-fun call!53902 () ListLongMap!16473)

(assert (=> bm!53896 (= call!53902 (+!3587 (ite c!114075 lt!515671 lt!515679) (ite c!114075 (tuple2!18493 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114076 (tuple2!18493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18493 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!53897 () Bool)

(declare-fun call!53903 () ListLongMap!16473)

(assert (=> bm!53897 (= call!53903 call!53902)))

(declare-fun b!1151666 () Bool)

(declare-fun e!655046 () Bool)

(assert (=> b!1151666 (= e!655046 tp_is_empty!28893)))

(declare-fun b!1151667 () Bool)

(declare-fun Unit!37803 () Unit!37799)

(assert (=> b!1151667 (= e!655048 Unit!37803)))

(declare-fun b!1151668 () Bool)

(declare-fun res!765892 () Bool)

(assert (=> b!1151668 (=> (not res!765892) (not e!655045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1151668 (= res!765892 (validMask!0 mask!1564))))

(declare-fun b!1151669 () Bool)

(assert (=> b!1151669 (contains!6745 call!53902 k0!934)))

(declare-fun lt!515678 () Unit!37799)

(assert (=> b!1151669 (= lt!515678 call!53899)))

(assert (=> b!1151669 call!53901))

(assert (=> b!1151669 (= lt!515671 (+!3587 lt!515679 (tuple2!18493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!515659 () Unit!37799)

(assert (=> b!1151669 (= lt!515659 (addStillContains!887 lt!515679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1151669 (= e!655059 lt!515678)))

(declare-fun b!1151670 () Bool)

(declare-fun res!765879 () Bool)

(assert (=> b!1151670 (=> (not res!765879) (not e!655045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1151670 (= res!765879 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!45164 () Bool)

(declare-fun tp!85800 () Bool)

(assert (=> mapNonEmpty!45164 (= mapRes!45164 (and tp!85800 e!655046))))

(declare-fun mapValue!45164 () ValueCell!13737)

(declare-fun mapRest!45164 () (Array (_ BitVec 32) ValueCell!13737))

(declare-fun mapKey!45164 () (_ BitVec 32))

(assert (=> mapNonEmpty!45164 (= (arr!35942 _values!996) (store mapRest!45164 mapKey!45164 mapValue!45164))))

(declare-fun b!1151671 () Bool)

(assert (=> b!1151671 (= e!655044 e!655048)))

(declare-fun c!114077 () Bool)

(assert (=> b!1151671 (= c!114077 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!515665))))

(declare-fun bm!53898 () Bool)

(assert (=> bm!53898 (= call!53901 (contains!6745 (ite c!114075 lt!515671 call!53903) k0!934))))

(declare-fun bm!53899 () Bool)

(assert (=> bm!53899 (= call!53898 (getCurrentListMapNoExtraKeys!4692 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151672 () Bool)

(assert (=> b!1151672 (= e!655047 tp_is_empty!28893)))

(declare-fun b!1151673 () Bool)

(declare-fun res!765886 () Bool)

(assert (=> b!1151673 (=> (not res!765886) (not e!655045))))

(assert (=> b!1151673 (= res!765886 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36478 _keys!1208))))))

(declare-fun b!1151674 () Bool)

(assert (=> b!1151674 (= e!655053 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!53900 () Bool)

(assert (=> bm!53900 (= call!53904 (getCurrentListMapNoExtraKeys!4692 lt!515661 lt!515669 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53901 () Bool)

(assert (=> bm!53901 (= call!53900 call!53899)))

(declare-fun b!1151675 () Bool)

(assert (=> b!1151675 (= e!655051 e!655057)))

(declare-fun res!765882 () Bool)

(assert (=> b!1151675 (=> res!765882 e!655057)))

(assert (=> b!1151675 (= res!765882 (not (= (select (arr!35941 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1151675 e!655056))

(declare-fun c!114074 () Bool)

(assert (=> b!1151675 (= c!114074 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!515658 () Unit!37799)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!573 (array!74588 array!74590 (_ BitVec 32) (_ BitVec 32) V!43651 V!43651 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37799)

(assert (=> b!1151675 (= lt!515658 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!573 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98794 res!765880) b!1151668))

(assert (= (and b!1151668 res!765892) b!1151656))

(assert (= (and b!1151656 res!765890) b!1151665))

(assert (= (and b!1151665 res!765881) b!1151664))

(assert (= (and b!1151664 res!765888) b!1151673))

(assert (= (and b!1151673 res!765886) b!1151670))

(assert (= (and b!1151670 res!765879) b!1151648))

(assert (= (and b!1151648 res!765889) b!1151646))

(assert (= (and b!1151646 res!765891) b!1151651))

(assert (= (and b!1151651 res!765885) b!1151659))

(assert (= (and b!1151659 (not res!765887)) b!1151649))

(assert (= (and b!1151649 (not res!765884)) b!1151675))

(assert (= (and b!1151675 c!114074) b!1151660))

(assert (= (and b!1151675 (not c!114074)) b!1151652))

(assert (= (or b!1151660 b!1151652) bm!53900))

(assert (= (or b!1151660 b!1151652) bm!53899))

(assert (= (and b!1151675 (not res!765882)) b!1151650))

(assert (= (and b!1151650 c!114078) b!1151658))

(assert (= (and b!1151650 (not c!114078)) b!1151647))

(assert (= (and b!1151658 c!114075) b!1151669))

(assert (= (and b!1151658 (not c!114075)) b!1151661))

(assert (= (and b!1151661 c!114076) b!1151662))

(assert (= (and b!1151661 (not c!114076)) b!1151671))

(assert (= (and b!1151671 c!114077) b!1151657))

(assert (= (and b!1151671 (not c!114077)) b!1151667))

(assert (= (or b!1151662 b!1151657) bm!53901))

(assert (= (or b!1151662 b!1151657) bm!53897))

(assert (= (or b!1151662 b!1151657) bm!53895))

(assert (= (or b!1151669 bm!53895) bm!53898))

(assert (= (or b!1151669 bm!53901) bm!53894))

(assert (= (or b!1151669 bm!53897) bm!53896))

(assert (= (and b!1151658 c!114073) b!1151674))

(assert (= (and b!1151658 (not c!114073)) b!1151653))

(assert (= (and b!1151658 res!765883) b!1151663))

(assert (= (and b!1151650 res!765893) b!1151654))

(assert (= (and b!1151655 condMapEmpty!45164) mapIsEmpty!45164))

(assert (= (and b!1151655 (not condMapEmpty!45164)) mapNonEmpty!45164))

(get-info :version)

(assert (= (and mapNonEmpty!45164 ((_ is ValueCellFull!13737) mapValue!45164)) b!1151666))

(assert (= (and b!1151655 ((_ is ValueCellFull!13737) mapDefault!45164)) b!1151672))

(assert (= start!98794 b!1151655))

(declare-fun b_lambda!19487 () Bool)

(assert (=> (not b_lambda!19487) (not b!1151649)))

(declare-fun t!36643 () Bool)

(declare-fun tb!9183 () Bool)

(assert (=> (and start!98794 (= defaultEntry!1004 defaultEntry!1004) t!36643) tb!9183))

(declare-fun result!18923 () Bool)

(assert (=> tb!9183 (= result!18923 tp_is_empty!28893)))

(assert (=> b!1151649 t!36643))

(declare-fun b_and!39591 () Bool)

(assert (= b_and!39589 (and (=> t!36643 result!18923) b_and!39591)))

(declare-fun m!1061779 () Bool)

(assert (=> b!1151675 m!1061779))

(declare-fun m!1061781 () Bool)

(assert (=> b!1151675 m!1061781))

(declare-fun m!1061783 () Bool)

(assert (=> bm!53900 m!1061783))

(declare-fun m!1061785 () Bool)

(assert (=> b!1151646 m!1061785))

(declare-fun m!1061787 () Bool)

(assert (=> b!1151646 m!1061787))

(declare-fun m!1061789 () Bool)

(assert (=> b!1151648 m!1061789))

(declare-fun m!1061791 () Bool)

(assert (=> b!1151669 m!1061791))

(declare-fun m!1061793 () Bool)

(assert (=> b!1151669 m!1061793))

(declare-fun m!1061795 () Bool)

(assert (=> b!1151669 m!1061795))

(declare-fun m!1061797 () Bool)

(assert (=> b!1151668 m!1061797))

(declare-fun m!1061799 () Bool)

(assert (=> mapNonEmpty!45164 m!1061799))

(declare-fun m!1061801 () Bool)

(assert (=> b!1151660 m!1061801))

(declare-fun m!1061803 () Bool)

(assert (=> b!1151659 m!1061803))

(declare-fun m!1061805 () Bool)

(assert (=> b!1151659 m!1061805))

(declare-fun m!1061807 () Bool)

(assert (=> bm!53896 m!1061807))

(declare-fun m!1061809 () Bool)

(assert (=> b!1151674 m!1061809))

(declare-fun m!1061811 () Bool)

(assert (=> b!1151651 m!1061811))

(declare-fun m!1061813 () Bool)

(assert (=> b!1151650 m!1061813))

(declare-fun m!1061815 () Bool)

(assert (=> b!1151650 m!1061815))

(assert (=> b!1151650 m!1061779))

(declare-fun m!1061817 () Bool)

(assert (=> b!1151650 m!1061817))

(declare-fun m!1061819 () Bool)

(assert (=> b!1151650 m!1061819))

(assert (=> b!1151650 m!1061819))

(declare-fun m!1061821 () Bool)

(assert (=> b!1151650 m!1061821))

(declare-fun m!1061823 () Bool)

(assert (=> b!1151650 m!1061823))

(assert (=> b!1151650 m!1061779))

(declare-fun m!1061825 () Bool)

(assert (=> b!1151650 m!1061825))

(assert (=> b!1151650 m!1061779))

(declare-fun m!1061827 () Bool)

(assert (=> b!1151650 m!1061827))

(assert (=> b!1151650 m!1061815))

(declare-fun m!1061829 () Bool)

(assert (=> b!1151670 m!1061829))

(declare-fun m!1061831 () Bool)

(assert (=> b!1151664 m!1061831))

(declare-fun m!1061833 () Bool)

(assert (=> b!1151665 m!1061833))

(assert (=> bm!53899 m!1061813))

(declare-fun m!1061835 () Bool)

(assert (=> bm!53898 m!1061835))

(declare-fun m!1061837 () Bool)

(assert (=> b!1151658 m!1061837))

(declare-fun m!1061839 () Bool)

(assert (=> b!1151658 m!1061839))

(declare-fun m!1061841 () Bool)

(assert (=> b!1151658 m!1061841))

(declare-fun m!1061843 () Bool)

(assert (=> b!1151658 m!1061843))

(declare-fun m!1061845 () Bool)

(assert (=> bm!53894 m!1061845))

(declare-fun m!1061847 () Bool)

(assert (=> b!1151649 m!1061847))

(declare-fun m!1061849 () Bool)

(assert (=> b!1151649 m!1061849))

(declare-fun m!1061851 () Bool)

(assert (=> b!1151649 m!1061851))

(declare-fun m!1061853 () Bool)

(assert (=> b!1151649 m!1061853))

(assert (=> b!1151663 m!1061809))

(assert (=> b!1151654 m!1061783))

(declare-fun m!1061855 () Bool)

(assert (=> start!98794 m!1061855))

(declare-fun m!1061857 () Bool)

(assert (=> start!98794 m!1061857))

(check-sat (not b!1151670) (not b!1151674) (not b!1151675) (not b!1151663) (not b!1151660) (not bm!53898) (not b!1151650) (not bm!53896) (not b!1151664) (not b!1151669) (not b!1151654) (not b!1151649) (not start!98794) b_and!39591 (not b!1151646) (not bm!53899) (not b!1151651) tp_is_empty!28893 (not b!1151668) (not b!1151658) (not b!1151659) (not bm!53894) (not b_next!24363) (not b!1151665) (not bm!53900) (not mapNonEmpty!45164) (not b_lambda!19487))
(check-sat b_and!39591 (not b_next!24363))
