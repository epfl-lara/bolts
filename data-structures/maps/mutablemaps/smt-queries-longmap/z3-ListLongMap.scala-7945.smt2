; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98548 () Bool)

(assert start!98548)

(declare-fun b_free!24117 () Bool)

(declare-fun b_next!24117 () Bool)

(assert (=> start!98548 (= b_free!24117 (not b_next!24117))))

(declare-fun tp!85063 () Bool)

(declare-fun b_and!39097 () Bool)

(assert (=> start!98548 (= tp!85063 b_and!39097)))

(declare-fun b!1140451 () Bool)

(declare-fun res!760478 () Bool)

(declare-fun e!648903 () Bool)

(assert (=> b!1140451 (=> (not res!760478) (not e!648903))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1140451 (= res!760478 (validMask!0 mask!1564))))

(declare-fun b!1140452 () Bool)

(declare-fun e!648891 () Bool)

(assert (=> b!1140452 (= e!648903 e!648891)))

(declare-fun res!760477 () Bool)

(assert (=> b!1140452 (=> (not res!760477) (not e!648891))))

(declare-datatypes ((array!74108 0))(
  ( (array!74109 (arr!35701 (Array (_ BitVec 32) (_ BitVec 64))) (size!36238 (_ BitVec 32))) )
))
(declare-fun lt!507834 () array!74108)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74108 (_ BitVec 32)) Bool)

(assert (=> b!1140452 (= res!760477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!507834 mask!1564))))

(declare-fun _keys!1208 () array!74108)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1140452 (= lt!507834 (array!74109 (store (arr!35701 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36238 _keys!1208)))))

(declare-fun b!1140453 () Bool)

(declare-fun e!648896 () Bool)

(assert (=> b!1140453 (= e!648896 true)))

(declare-datatypes ((V!43323 0))(
  ( (V!43324 (val!14380 Int)) )
))
(declare-datatypes ((tuple2!18270 0))(
  ( (tuple2!18271 (_1!9145 (_ BitVec 64)) (_2!9145 V!43323)) )
))
(declare-datatypes ((List!25072 0))(
  ( (Nil!25069) (Cons!25068 (h!26277 tuple2!18270) (t!36188 List!25072)) )
))
(declare-datatypes ((ListLongMap!16251 0))(
  ( (ListLongMap!16252 (toList!8141 List!25072)) )
))
(declare-fun lt!507839 () ListLongMap!16251)

(declare-fun lt!507836 () V!43323)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun -!1240 (ListLongMap!16251 (_ BitVec 64)) ListLongMap!16251)

(declare-fun +!3487 (ListLongMap!16251 tuple2!18270) ListLongMap!16251)

(assert (=> b!1140453 (= (-!1240 (+!3487 lt!507839 (tuple2!18271 (select (arr!35701 _keys!1208) from!1455) lt!507836)) (select (arr!35701 _keys!1208) from!1455)) lt!507839)))

(declare-datatypes ((Unit!37324 0))(
  ( (Unit!37325) )
))
(declare-fun lt!507830 () Unit!37324)

(declare-fun addThenRemoveForNewKeyIsSame!95 (ListLongMap!16251 (_ BitVec 64) V!43323) Unit!37324)

(assert (=> b!1140453 (= lt!507830 (addThenRemoveForNewKeyIsSame!95 lt!507839 (select (arr!35701 _keys!1208) from!1455) lt!507836))))

(declare-fun lt!507835 () V!43323)

(declare-datatypes ((ValueCell!13614 0))(
  ( (ValueCellFull!13614 (v!17018 V!43323)) (EmptyCell!13614) )
))
(declare-datatypes ((array!74110 0))(
  ( (array!74111 (arr!35702 (Array (_ BitVec 32) ValueCell!13614)) (size!36239 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74110)

(declare-fun get!18155 (ValueCell!13614 V!43323) V!43323)

(assert (=> b!1140453 (= lt!507836 (get!18155 (select (arr!35702 _values!996) from!1455) lt!507835))))

(declare-fun lt!507838 () Unit!37324)

(declare-fun e!648898 () Unit!37324)

(assert (=> b!1140453 (= lt!507838 e!648898)))

(declare-fun c!111860 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6647 (ListLongMap!16251 (_ BitVec 64)) Bool)

(assert (=> b!1140453 (= c!111860 (contains!6647 lt!507839 k0!934))))

(declare-fun zeroValue!944 () V!43323)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43323)

(declare-fun getCurrentListMapNoExtraKeys!4585 (array!74108 array!74110 (_ BitVec 32) (_ BitVec 32) V!43323 V!43323 (_ BitVec 32) Int) ListLongMap!16251)

(assert (=> b!1140453 (= lt!507839 (getCurrentListMapNoExtraKeys!4585 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!50949 () ListLongMap!16251)

(declare-fun lt!507824 () array!74110)

(declare-fun bm!50942 () Bool)

(assert (=> bm!50942 (= call!50949 (getCurrentListMapNoExtraKeys!4585 lt!507834 lt!507824 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140454 () Bool)

(declare-fun res!760465 () Bool)

(assert (=> b!1140454 (=> (not res!760465) (not e!648903))))

(declare-datatypes ((List!25073 0))(
  ( (Nil!25070) (Cons!25069 (h!26278 (_ BitVec 64)) (t!36189 List!25073)) )
))
(declare-fun arrayNoDuplicates!0 (array!74108 (_ BitVec 32) List!25073) Bool)

(assert (=> b!1140454 (= res!760465 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25070))))

(declare-fun b!1140455 () Bool)

(declare-fun c!111864 () Bool)

(declare-fun lt!507843 () Bool)

(assert (=> b!1140455 (= c!111864 (and (not lt!507843) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!648905 () Unit!37324)

(declare-fun e!648894 () Unit!37324)

(assert (=> b!1140455 (= e!648905 e!648894)))

(declare-fun e!648904 () Bool)

(declare-fun b!1140456 () Bool)

(declare-fun arrayContainsKey!0 (array!74108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1140456 (= e!648904 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun e!648899 () Bool)

(declare-fun b!1140457 () Bool)

(declare-fun call!50945 () ListLongMap!16251)

(assert (=> b!1140457 (= e!648899 (= call!50949 (-!1240 call!50945 k0!934)))))

(declare-fun b!1140458 () Bool)

(declare-fun e!648900 () Bool)

(declare-fun e!648892 () Bool)

(declare-fun mapRes!44795 () Bool)

(assert (=> b!1140458 (= e!648900 (and e!648892 mapRes!44795))))

(declare-fun condMapEmpty!44795 () Bool)

(declare-fun mapDefault!44795 () ValueCell!13614)

(assert (=> b!1140458 (= condMapEmpty!44795 (= (arr!35702 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13614)) mapDefault!44795)))))

(declare-fun c!111859 () Bool)

(declare-fun call!50947 () ListLongMap!16251)

(declare-fun bm!50943 () Bool)

(assert (=> bm!50943 (= call!50947 (+!3487 lt!507839 (ite (or c!111859 c!111864) (tuple2!18271 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18271 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1140459 () Bool)

(declare-fun call!50950 () Bool)

(assert (=> b!1140459 call!50950))

(declare-fun lt!507831 () Unit!37324)

(declare-fun call!50952 () Unit!37324)

(assert (=> b!1140459 (= lt!507831 call!50952)))

(declare-fun e!648902 () Unit!37324)

(assert (=> b!1140459 (= e!648902 lt!507831)))

(declare-fun bm!50944 () Bool)

(assert (=> bm!50944 (= call!50945 (getCurrentListMapNoExtraKeys!4585 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140460 () Bool)

(declare-fun res!760471 () Bool)

(assert (=> b!1140460 (=> (not res!760471) (not e!648903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1140460 (= res!760471 (validKeyInArray!0 k0!934))))

(declare-fun b!1140461 () Bool)

(declare-fun tp_is_empty!28647 () Bool)

(assert (=> b!1140461 (= e!648892 tp_is_empty!28647)))

(declare-fun b!1140462 () Bool)

(declare-fun res!760466 () Bool)

(assert (=> b!1140462 (=> (not res!760466) (not e!648891))))

(assert (=> b!1140462 (= res!760466 (arrayNoDuplicates!0 lt!507834 #b00000000000000000000000000000000 Nil!25070))))

(declare-fun b!1140463 () Bool)

(declare-fun res!760475 () Bool)

(assert (=> b!1140463 (=> (not res!760475) (not e!648903))))

(assert (=> b!1140463 (= res!760475 (and (= (size!36239 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36238 _keys!1208) (size!36239 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1140464 () Bool)

(declare-fun e!648906 () Bool)

(assert (=> b!1140464 (= e!648891 (not e!648906))))

(declare-fun res!760470 () Bool)

(assert (=> b!1140464 (=> res!760470 e!648906)))

(assert (=> b!1140464 (= res!760470 (bvsgt from!1455 i!673))))

(assert (=> b!1140464 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!507829 () Unit!37324)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74108 (_ BitVec 64) (_ BitVec 32)) Unit!37324)

(assert (=> b!1140464 (= lt!507829 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1140465 () Bool)

(declare-fun Unit!37326 () Unit!37324)

(assert (=> b!1140465 (= e!648898 Unit!37326)))

(assert (=> b!1140465 (= lt!507843 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1140465 (= c!111859 (and (not lt!507843) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!507840 () Unit!37324)

(assert (=> b!1140465 (= lt!507840 e!648905)))

(declare-fun lt!507827 () Unit!37324)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!389 (array!74108 array!74110 (_ BitVec 32) (_ BitVec 32) V!43323 V!43323 (_ BitVec 64) (_ BitVec 32) Int) Unit!37324)

(assert (=> b!1140465 (= lt!507827 (lemmaListMapContainsThenArrayContainsFrom!389 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111862 () Bool)

(assert (=> b!1140465 (= c!111862 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760473 () Bool)

(declare-fun e!648893 () Bool)

(assert (=> b!1140465 (= res!760473 e!648893)))

(assert (=> b!1140465 (=> (not res!760473) (not e!648904))))

(assert (=> b!1140465 e!648904))

(declare-fun lt!507841 () Unit!37324)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74108 (_ BitVec 32) (_ BitVec 32)) Unit!37324)

(assert (=> b!1140465 (= lt!507841 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1140465 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25070)))

(declare-fun lt!507825 () Unit!37324)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74108 (_ BitVec 64) (_ BitVec 32) List!25073) Unit!37324)

(assert (=> b!1140465 (= lt!507825 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25070))))

(assert (=> b!1140465 false))

(declare-fun b!1140466 () Bool)

(assert (=> b!1140466 (= e!648893 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1140467 () Bool)

(declare-fun res!760469 () Bool)

(assert (=> b!1140467 (=> (not res!760469) (not e!648903))))

(assert (=> b!1140467 (= res!760469 (= (select (arr!35701 _keys!1208) i!673) k0!934))))

(declare-fun b!1140468 () Bool)

(declare-fun res!760468 () Bool)

(assert (=> b!1140468 (=> (not res!760468) (not e!648903))))

(assert (=> b!1140468 (= res!760468 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36238 _keys!1208))))))

(declare-fun b!1140469 () Bool)

(declare-fun e!648895 () Bool)

(assert (=> b!1140469 (= e!648906 e!648895)))

(declare-fun res!760474 () Bool)

(assert (=> b!1140469 (=> res!760474 e!648895)))

(assert (=> b!1140469 (= res!760474 (not (= from!1455 i!673)))))

(declare-fun lt!507823 () ListLongMap!16251)

(assert (=> b!1140469 (= lt!507823 (getCurrentListMapNoExtraKeys!4585 lt!507834 lt!507824 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1140469 (= lt!507824 (array!74111 (store (arr!35702 _values!996) i!673 (ValueCellFull!13614 lt!507835)) (size!36239 _values!996)))))

(declare-fun dynLambda!2640 (Int (_ BitVec 64)) V!43323)

(assert (=> b!1140469 (= lt!507835 (dynLambda!2640 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!507826 () ListLongMap!16251)

(assert (=> b!1140469 (= lt!507826 (getCurrentListMapNoExtraKeys!4585 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1140470 () Bool)

(declare-fun res!760476 () Bool)

(assert (=> b!1140470 (=> (not res!760476) (not e!648903))))

(assert (=> b!1140470 (= res!760476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!50945 () Bool)

(declare-fun call!50948 () Bool)

(declare-fun lt!507833 () ListLongMap!16251)

(declare-fun call!50946 () ListLongMap!16251)

(assert (=> bm!50945 (= call!50948 (contains!6647 (ite c!111859 lt!507833 call!50946) k0!934))))

(declare-fun call!50951 () Unit!37324)

(declare-fun bm!50946 () Bool)

(declare-fun addStillContains!788 (ListLongMap!16251 (_ BitVec 64) V!43323 (_ BitVec 64)) Unit!37324)

(assert (=> bm!50946 (= call!50951 (addStillContains!788 lt!507839 (ite (or c!111859 c!111864) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111859 c!111864) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1140471 () Bool)

(declare-fun Unit!37327 () Unit!37324)

(assert (=> b!1140471 (= e!648898 Unit!37327)))

(declare-fun b!1140472 () Bool)

(assert (=> b!1140472 (= e!648893 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!507843) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1140473 () Bool)

(assert (=> b!1140473 (contains!6647 (+!3487 lt!507833 (tuple2!18271 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!507832 () Unit!37324)

(assert (=> b!1140473 (= lt!507832 (addStillContains!788 lt!507833 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1140473 call!50948))

(assert (=> b!1140473 (= lt!507833 call!50947)))

(declare-fun lt!507842 () Unit!37324)

(assert (=> b!1140473 (= lt!507842 call!50951)))

(assert (=> b!1140473 (= e!648905 lt!507832)))

(declare-fun b!1140474 () Bool)

(declare-fun e!648901 () Bool)

(assert (=> b!1140474 (= e!648901 tp_is_empty!28647)))

(declare-fun b!1140475 () Bool)

(assert (=> b!1140475 (= e!648894 e!648902)))

(declare-fun c!111863 () Bool)

(assert (=> b!1140475 (= c!111863 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!507843))))

(declare-fun b!1140476 () Bool)

(assert (=> b!1140476 (= e!648895 e!648896)))

(declare-fun res!760472 () Bool)

(assert (=> b!1140476 (=> res!760472 e!648896)))

(assert (=> b!1140476 (= res!760472 (not (= (select (arr!35701 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1140476 e!648899))

(declare-fun c!111861 () Bool)

(assert (=> b!1140476 (= c!111861 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!507837 () Unit!37324)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!497 (array!74108 array!74110 (_ BitVec 32) (_ BitVec 32) V!43323 V!43323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37324)

(assert (=> b!1140476 (= lt!507837 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!497 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50947 () Bool)

(assert (=> bm!50947 (= call!50952 call!50951)))

(declare-fun res!760467 () Bool)

(assert (=> start!98548 (=> (not res!760467) (not e!648903))))

(assert (=> start!98548 (= res!760467 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36238 _keys!1208))))))

(assert (=> start!98548 e!648903))

(assert (=> start!98548 tp_is_empty!28647))

(declare-fun array_inv!27238 (array!74108) Bool)

(assert (=> start!98548 (array_inv!27238 _keys!1208)))

(assert (=> start!98548 true))

(assert (=> start!98548 tp!85063))

(declare-fun array_inv!27239 (array!74110) Bool)

(assert (=> start!98548 (and (array_inv!27239 _values!996) e!648900)))

(declare-fun b!1140477 () Bool)

(assert (=> b!1140477 (= e!648899 (= call!50949 call!50945))))

(declare-fun mapNonEmpty!44795 () Bool)

(declare-fun tp!85062 () Bool)

(assert (=> mapNonEmpty!44795 (= mapRes!44795 (and tp!85062 e!648901))))

(declare-fun mapRest!44795 () (Array (_ BitVec 32) ValueCell!13614))

(declare-fun mapKey!44795 () (_ BitVec 32))

(declare-fun mapValue!44795 () ValueCell!13614)

(assert (=> mapNonEmpty!44795 (= (arr!35702 _values!996) (store mapRest!44795 mapKey!44795 mapValue!44795))))

(declare-fun bm!50948 () Bool)

(assert (=> bm!50948 (= call!50950 call!50948)))

(declare-fun b!1140478 () Bool)

(declare-fun Unit!37328 () Unit!37324)

(assert (=> b!1140478 (= e!648902 Unit!37328)))

(declare-fun bm!50949 () Bool)

(assert (=> bm!50949 (= call!50946 call!50947)))

(declare-fun mapIsEmpty!44795 () Bool)

(assert (=> mapIsEmpty!44795 mapRes!44795))

(declare-fun b!1140479 () Bool)

(declare-fun lt!507828 () Unit!37324)

(assert (=> b!1140479 (= e!648894 lt!507828)))

(assert (=> b!1140479 (= lt!507828 call!50952)))

(assert (=> b!1140479 call!50950))

(assert (= (and start!98548 res!760467) b!1140451))

(assert (= (and b!1140451 res!760478) b!1140463))

(assert (= (and b!1140463 res!760475) b!1140470))

(assert (= (and b!1140470 res!760476) b!1140454))

(assert (= (and b!1140454 res!760465) b!1140468))

(assert (= (and b!1140468 res!760468) b!1140460))

(assert (= (and b!1140460 res!760471) b!1140467))

(assert (= (and b!1140467 res!760469) b!1140452))

(assert (= (and b!1140452 res!760477) b!1140462))

(assert (= (and b!1140462 res!760466) b!1140464))

(assert (= (and b!1140464 (not res!760470)) b!1140469))

(assert (= (and b!1140469 (not res!760474)) b!1140476))

(assert (= (and b!1140476 c!111861) b!1140457))

(assert (= (and b!1140476 (not c!111861)) b!1140477))

(assert (= (or b!1140457 b!1140477) bm!50942))

(assert (= (or b!1140457 b!1140477) bm!50944))

(assert (= (and b!1140476 (not res!760472)) b!1140453))

(assert (= (and b!1140453 c!111860) b!1140465))

(assert (= (and b!1140453 (not c!111860)) b!1140471))

(assert (= (and b!1140465 c!111859) b!1140473))

(assert (= (and b!1140465 (not c!111859)) b!1140455))

(assert (= (and b!1140455 c!111864) b!1140479))

(assert (= (and b!1140455 (not c!111864)) b!1140475))

(assert (= (and b!1140475 c!111863) b!1140459))

(assert (= (and b!1140475 (not c!111863)) b!1140478))

(assert (= (or b!1140479 b!1140459) bm!50947))

(assert (= (or b!1140479 b!1140459) bm!50949))

(assert (= (or b!1140479 b!1140459) bm!50948))

(assert (= (or b!1140473 bm!50948) bm!50945))

(assert (= (or b!1140473 bm!50947) bm!50946))

(assert (= (or b!1140473 bm!50949) bm!50943))

(assert (= (and b!1140465 c!111862) b!1140466))

(assert (= (and b!1140465 (not c!111862)) b!1140472))

(assert (= (and b!1140465 res!760473) b!1140456))

(assert (= (and b!1140458 condMapEmpty!44795) mapIsEmpty!44795))

(assert (= (and b!1140458 (not condMapEmpty!44795)) mapNonEmpty!44795))

(get-info :version)

(assert (= (and mapNonEmpty!44795 ((_ is ValueCellFull!13614) mapValue!44795)) b!1140474))

(assert (= (and b!1140458 ((_ is ValueCellFull!13614) mapDefault!44795)) b!1140461))

(assert (= start!98548 b!1140458))

(declare-fun b_lambda!19241 () Bool)

(assert (=> (not b_lambda!19241) (not b!1140469)))

(declare-fun t!36187 () Bool)

(declare-fun tb!8937 () Bool)

(assert (=> (and start!98548 (= defaultEntry!1004 defaultEntry!1004) t!36187) tb!8937))

(declare-fun result!18431 () Bool)

(assert (=> tb!8937 (= result!18431 tp_is_empty!28647)))

(assert (=> b!1140469 t!36187))

(declare-fun b_and!39099 () Bool)

(assert (= b_and!39097 (and (=> t!36187 result!18431) b_and!39099)))

(declare-fun m!1052007 () Bool)

(assert (=> b!1140464 m!1052007))

(declare-fun m!1052009 () Bool)

(assert (=> b!1140464 m!1052009))

(declare-fun m!1052011 () Bool)

(assert (=> b!1140451 m!1052011))

(declare-fun m!1052013 () Bool)

(assert (=> b!1140467 m!1052013))

(declare-fun m!1052015 () Bool)

(assert (=> bm!50944 m!1052015))

(declare-fun m!1052017 () Bool)

(assert (=> b!1140457 m!1052017))

(declare-fun m!1052019 () Bool)

(assert (=> b!1140460 m!1052019))

(declare-fun m!1052021 () Bool)

(assert (=> b!1140465 m!1052021))

(declare-fun m!1052023 () Bool)

(assert (=> b!1140465 m!1052023))

(declare-fun m!1052025 () Bool)

(assert (=> b!1140465 m!1052025))

(declare-fun m!1052027 () Bool)

(assert (=> b!1140465 m!1052027))

(declare-fun m!1052029 () Bool)

(assert (=> b!1140456 m!1052029))

(declare-fun m!1052031 () Bool)

(assert (=> b!1140454 m!1052031))

(declare-fun m!1052033 () Bool)

(assert (=> bm!50945 m!1052033))

(assert (=> b!1140453 m!1052015))

(declare-fun m!1052035 () Bool)

(assert (=> b!1140453 m!1052035))

(declare-fun m!1052037 () Bool)

(assert (=> b!1140453 m!1052037))

(declare-fun m!1052039 () Bool)

(assert (=> b!1140453 m!1052039))

(declare-fun m!1052041 () Bool)

(assert (=> b!1140453 m!1052041))

(declare-fun m!1052043 () Bool)

(assert (=> b!1140453 m!1052043))

(assert (=> b!1140453 m!1052037))

(assert (=> b!1140453 m!1052039))

(declare-fun m!1052045 () Bool)

(assert (=> b!1140453 m!1052045))

(assert (=> b!1140453 m!1052035))

(declare-fun m!1052047 () Bool)

(assert (=> b!1140453 m!1052047))

(assert (=> b!1140453 m!1052039))

(declare-fun m!1052049 () Bool)

(assert (=> b!1140452 m!1052049))

(declare-fun m!1052051 () Bool)

(assert (=> b!1140452 m!1052051))

(declare-fun m!1052053 () Bool)

(assert (=> b!1140469 m!1052053))

(declare-fun m!1052055 () Bool)

(assert (=> b!1140469 m!1052055))

(declare-fun m!1052057 () Bool)

(assert (=> b!1140469 m!1052057))

(declare-fun m!1052059 () Bool)

(assert (=> b!1140469 m!1052059))

(declare-fun m!1052061 () Bool)

(assert (=> b!1140470 m!1052061))

(declare-fun m!1052063 () Bool)

(assert (=> bm!50946 m!1052063))

(declare-fun m!1052065 () Bool)

(assert (=> mapNonEmpty!44795 m!1052065))

(declare-fun m!1052067 () Bool)

(assert (=> bm!50943 m!1052067))

(assert (=> b!1140476 m!1052039))

(declare-fun m!1052069 () Bool)

(assert (=> b!1140476 m!1052069))

(declare-fun m!1052071 () Bool)

(assert (=> start!98548 m!1052071))

(declare-fun m!1052073 () Bool)

(assert (=> start!98548 m!1052073))

(declare-fun m!1052075 () Bool)

(assert (=> b!1140473 m!1052075))

(assert (=> b!1140473 m!1052075))

(declare-fun m!1052077 () Bool)

(assert (=> b!1140473 m!1052077))

(declare-fun m!1052079 () Bool)

(assert (=> b!1140473 m!1052079))

(assert (=> b!1140466 m!1052029))

(declare-fun m!1052081 () Bool)

(assert (=> bm!50942 m!1052081))

(declare-fun m!1052083 () Bool)

(assert (=> b!1140462 m!1052083))

(check-sat (not b!1140462) (not b!1140453) (not bm!50944) (not b!1140452) (not b!1140457) (not mapNonEmpty!44795) (not b!1140469) (not b!1140451) (not b_lambda!19241) (not b!1140476) b_and!39099 (not start!98548) tp_is_empty!28647 (not bm!50942) (not b!1140460) (not b!1140470) (not b!1140464) (not bm!50946) (not b!1140473) (not b_next!24117) (not bm!50943) (not b!1140456) (not b!1140466) (not b!1140454) (not bm!50945) (not b!1140465))
(check-sat b_and!39099 (not b_next!24117))
