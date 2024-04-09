; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98746 () Bool)

(assert start!98746)

(declare-fun b_free!24315 () Bool)

(declare-fun b_next!24315 () Bool)

(assert (=> start!98746 (= b_free!24315 (not b_next!24315))))

(declare-fun tp!85656 () Bool)

(declare-fun b_and!39493 () Bool)

(assert (=> start!98746 (= tp!85656 b_and!39493)))

(declare-fun b!1149438 () Bool)

(declare-fun e!653834 () Bool)

(declare-fun e!653835 () Bool)

(assert (=> b!1149438 (= e!653834 e!653835)))

(declare-fun res!764806 () Bool)

(assert (=> b!1149438 (=> (not res!764806) (not e!653835))))

(declare-datatypes ((array!74494 0))(
  ( (array!74495 (arr!35894 (Array (_ BitVec 32) (_ BitVec 64))) (size!36431 (_ BitVec 32))) )
))
(declare-fun lt!514090 () array!74494)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74494 (_ BitVec 32)) Bool)

(assert (=> b!1149438 (= res!764806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514090 mask!1564))))

(declare-fun _keys!1208 () array!74494)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149438 (= lt!514090 (array!74495 (store (arr!35894 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36431 _keys!1208)))))

(declare-fun b!1149439 () Bool)

(declare-datatypes ((Unit!37708 0))(
  ( (Unit!37709) )
))
(declare-fun e!653826 () Unit!37708)

(declare-fun Unit!37710 () Unit!37708)

(assert (=> b!1149439 (= e!653826 Unit!37710)))

(declare-fun lt!514083 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1149439 (= lt!514083 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113643 () Bool)

(assert (=> b!1149439 (= c!113643 (and (not lt!514083) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514088 () Unit!37708)

(declare-fun e!653831 () Unit!37708)

(assert (=> b!1149439 (= lt!514088 e!653831)))

(declare-datatypes ((V!43587 0))(
  ( (V!43588 (val!14479 Int)) )
))
(declare-fun zeroValue!944 () V!43587)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13713 0))(
  ( (ValueCellFull!13713 (v!17117 V!43587)) (EmptyCell!13713) )
))
(declare-datatypes ((array!74496 0))(
  ( (array!74497 (arr!35895 (Array (_ BitVec 32) ValueCell!13713)) (size!36432 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74496)

(declare-fun minValue!944 () V!43587)

(declare-fun lt!514085 () Unit!37708)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!455 (array!74494 array!74496 (_ BitVec 32) (_ BitVec 32) V!43587 V!43587 (_ BitVec 64) (_ BitVec 32) Int) Unit!37708)

(assert (=> b!1149439 (= lt!514085 (lemmaListMapContainsThenArrayContainsFrom!455 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113642 () Bool)

(assert (=> b!1149439 (= c!113642 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764804 () Bool)

(declare-fun e!653820 () Bool)

(assert (=> b!1149439 (= res!764804 e!653820)))

(declare-fun e!653822 () Bool)

(assert (=> b!1149439 (=> (not res!764804) (not e!653822))))

(assert (=> b!1149439 e!653822))

(declare-fun lt!514080 () Unit!37708)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74494 (_ BitVec 32) (_ BitVec 32)) Unit!37708)

(assert (=> b!1149439 (= lt!514080 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25243 0))(
  ( (Nil!25240) (Cons!25239 (h!26448 (_ BitVec 64)) (t!36557 List!25243)) )
))
(declare-fun arrayNoDuplicates!0 (array!74494 (_ BitVec 32) List!25243) Bool)

(assert (=> b!1149439 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25240)))

(declare-fun lt!514087 () Unit!37708)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74494 (_ BitVec 64) (_ BitVec 32) List!25243) Unit!37708)

(assert (=> b!1149439 (= lt!514087 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25240))))

(assert (=> b!1149439 false))

(declare-fun b!1149440 () Bool)

(declare-fun call!53323 () Bool)

(assert (=> b!1149440 call!53323))

(declare-fun lt!514084 () Unit!37708)

(declare-fun call!53325 () Unit!37708)

(assert (=> b!1149440 (= lt!514084 call!53325)))

(declare-fun e!653823 () Unit!37708)

(assert (=> b!1149440 (= e!653823 lt!514084)))

(declare-fun b!1149441 () Bool)

(declare-fun e!653827 () Bool)

(declare-fun e!653825 () Bool)

(declare-fun mapRes!45092 () Bool)

(assert (=> b!1149441 (= e!653827 (and e!653825 mapRes!45092))))

(declare-fun condMapEmpty!45092 () Bool)

(declare-fun mapDefault!45092 () ValueCell!13713)

(assert (=> b!1149441 (= condMapEmpty!45092 (= (arr!35895 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13713)) mapDefault!45092)))))

(declare-fun b!1149442 () Bool)

(declare-fun res!764810 () Bool)

(assert (=> b!1149442 (=> (not res!764810) (not e!653834))))

(assert (=> b!1149442 (= res!764810 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25240))))

(declare-fun call!53321 () Unit!37708)

(declare-fun c!113645 () Bool)

(declare-datatypes ((tuple2!18450 0))(
  ( (tuple2!18451 (_1!9235 (_ BitVec 64)) (_2!9235 V!43587)) )
))
(declare-datatypes ((List!25244 0))(
  ( (Nil!25241) (Cons!25240 (h!26449 tuple2!18450) (t!36558 List!25244)) )
))
(declare-datatypes ((ListLongMap!16431 0))(
  ( (ListLongMap!16432 (toList!8231 List!25244)) )
))
(declare-fun lt!514074 () ListLongMap!16431)

(declare-fun bm!53318 () Bool)

(declare-fun lt!514086 () ListLongMap!16431)

(declare-fun addStillContains!869 (ListLongMap!16431 (_ BitVec 64) V!43587 (_ BitVec 64)) Unit!37708)

(assert (=> bm!53318 (= call!53321 (addStillContains!869 (ite c!113643 lt!514074 lt!514086) (ite c!113643 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113645 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113643 minValue!944 (ite c!113645 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1149443 () Bool)

(declare-fun tp_is_empty!28845 () Bool)

(assert (=> b!1149443 (= e!653825 tp_is_empty!28845)))

(declare-fun b!1149444 () Bool)

(declare-fun res!764805 () Bool)

(assert (=> b!1149444 (=> (not res!764805) (not e!653835))))

(assert (=> b!1149444 (= res!764805 (arrayNoDuplicates!0 lt!514090 #b00000000000000000000000000000000 Nil!25240))))

(declare-fun mapIsEmpty!45092 () Bool)

(assert (=> mapIsEmpty!45092 mapRes!45092))

(declare-fun b!1149445 () Bool)

(assert (=> b!1149445 (= e!653820 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!514083) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1149446 () Bool)

(declare-fun res!764802 () Bool)

(assert (=> b!1149446 (=> (not res!764802) (not e!653834))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1149446 (= res!764802 (validKeyInArray!0 k0!934))))

(declare-fun b!1149447 () Bool)

(declare-fun e!653819 () Unit!37708)

(assert (=> b!1149447 (= e!653819 e!653823)))

(declare-fun c!113646 () Bool)

(assert (=> b!1149447 (= c!113646 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!514083))))

(declare-fun b!1149448 () Bool)

(declare-fun res!764811 () Bool)

(assert (=> b!1149448 (=> (not res!764811) (not e!653834))))

(assert (=> b!1149448 (= res!764811 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36431 _keys!1208))))))

(declare-fun b!1149449 () Bool)

(declare-fun lt!514082 () Unit!37708)

(assert (=> b!1149449 (= e!653819 lt!514082)))

(assert (=> b!1149449 (= lt!514082 call!53325)))

(assert (=> b!1149449 call!53323))

(declare-fun mapNonEmpty!45092 () Bool)

(declare-fun tp!85657 () Bool)

(declare-fun e!653830 () Bool)

(assert (=> mapNonEmpty!45092 (= mapRes!45092 (and tp!85657 e!653830))))

(declare-fun mapValue!45092 () ValueCell!13713)

(declare-fun mapRest!45092 () (Array (_ BitVec 32) ValueCell!13713))

(declare-fun mapKey!45092 () (_ BitVec 32))

(assert (=> mapNonEmpty!45092 (= (arr!35895 _values!996) (store mapRest!45092 mapKey!45092 mapValue!45092))))

(declare-fun b!1149450 () Bool)

(declare-fun Unit!37711 () Unit!37708)

(assert (=> b!1149450 (= e!653823 Unit!37711)))

(declare-fun res!764801 () Bool)

(assert (=> start!98746 (=> (not res!764801) (not e!653834))))

(assert (=> start!98746 (= res!764801 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36431 _keys!1208))))))

(assert (=> start!98746 e!653834))

(assert (=> start!98746 tp_is_empty!28845))

(declare-fun array_inv!27370 (array!74494) Bool)

(assert (=> start!98746 (array_inv!27370 _keys!1208)))

(assert (=> start!98746 true))

(assert (=> start!98746 tp!85656))

(declare-fun array_inv!27371 (array!74496) Bool)

(assert (=> start!98746 (and (array_inv!27371 _values!996) e!653827)))

(declare-fun b!1149451 () Bool)

(declare-fun arrayContainsKey!0 (array!74494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1149451 (= e!653820 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149452 () Bool)

(declare-fun e!653821 () Bool)

(declare-fun call!53324 () ListLongMap!16431)

(declare-fun call!53326 () ListLongMap!16431)

(assert (=> b!1149452 (= e!653821 (= call!53324 call!53326))))

(declare-fun b!1149453 () Bool)

(declare-fun res!764812 () Bool)

(assert (=> b!1149453 (=> (not res!764812) (not e!653834))))

(assert (=> b!1149453 (= res!764812 (= (select (arr!35894 _keys!1208) i!673) k0!934))))

(declare-fun b!1149454 () Bool)

(declare-fun -!1319 (ListLongMap!16431 (_ BitVec 64)) ListLongMap!16431)

(assert (=> b!1149454 (= e!653821 (= call!53324 (-!1319 call!53326 k0!934)))))

(declare-fun b!1149455 () Bool)

(assert (=> b!1149455 (= e!653822 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149456 () Bool)

(declare-fun e!653824 () Bool)

(declare-fun e!653833 () Bool)

(assert (=> b!1149456 (= e!653824 e!653833)))

(declare-fun res!764799 () Bool)

(assert (=> b!1149456 (=> res!764799 e!653833)))

(assert (=> b!1149456 (= res!764799 (not (= from!1455 i!673)))))

(declare-fun lt!514079 () ListLongMap!16431)

(declare-fun lt!514081 () array!74496)

(declare-fun getCurrentListMapNoExtraKeys!4672 (array!74494 array!74496 (_ BitVec 32) (_ BitVec 32) V!43587 V!43587 (_ BitVec 32) Int) ListLongMap!16431)

(assert (=> b!1149456 (= lt!514079 (getCurrentListMapNoExtraKeys!4672 lt!514090 lt!514081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!514095 () V!43587)

(assert (=> b!1149456 (= lt!514081 (array!74497 (store (arr!35895 _values!996) i!673 (ValueCellFull!13713 lt!514095)) (size!36432 _values!996)))))

(declare-fun dynLambda!2702 (Int (_ BitVec 64)) V!43587)

(assert (=> b!1149456 (= lt!514095 (dynLambda!2702 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!514093 () ListLongMap!16431)

(assert (=> b!1149456 (= lt!514093 (getCurrentListMapNoExtraKeys!4672 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1149457 () Bool)

(declare-fun contains!6726 (ListLongMap!16431 (_ BitVec 64)) Bool)

(declare-fun +!3569 (ListLongMap!16431 tuple2!18450) ListLongMap!16431)

(assert (=> b!1149457 (contains!6726 (+!3569 lt!514074 (tuple2!18451 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!514092 () Unit!37708)

(assert (=> b!1149457 (= lt!514092 call!53321)))

(declare-fun call!53328 () Bool)

(assert (=> b!1149457 call!53328))

(declare-fun call!53322 () ListLongMap!16431)

(assert (=> b!1149457 (= lt!514074 call!53322)))

(declare-fun lt!514077 () Unit!37708)

(assert (=> b!1149457 (= lt!514077 (addStillContains!869 lt!514086 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1149457 (= e!653831 lt!514092)))

(declare-fun b!1149458 () Bool)

(declare-fun res!764807 () Bool)

(assert (=> b!1149458 (=> (not res!764807) (not e!653834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1149458 (= res!764807 (validMask!0 mask!1564))))

(declare-fun b!1149459 () Bool)

(assert (=> b!1149459 (= e!653830 tp_is_empty!28845)))

(declare-fun b!1149460 () Bool)

(declare-fun res!764803 () Bool)

(assert (=> b!1149460 (=> (not res!764803) (not e!653834))))

(assert (=> b!1149460 (= res!764803 (and (= (size!36432 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36431 _keys!1208) (size!36432 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!53319 () Bool)

(assert (=> bm!53319 (= call!53323 call!53328)))

(declare-fun bm!53320 () Bool)

(assert (=> bm!53320 (= call!53326 (getCurrentListMapNoExtraKeys!4672 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53321 () Bool)

(assert (=> bm!53321 (= call!53324 (getCurrentListMapNoExtraKeys!4672 lt!514090 lt!514081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149461 () Bool)

(declare-fun e!653832 () Bool)

(assert (=> b!1149461 (= e!653833 e!653832)))

(declare-fun res!764809 () Bool)

(assert (=> b!1149461 (=> res!764809 e!653832)))

(assert (=> b!1149461 (= res!764809 (not (= (select (arr!35894 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1149461 e!653821))

(declare-fun c!113641 () Bool)

(assert (=> b!1149461 (= c!113641 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!514076 () Unit!37708)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!560 (array!74494 array!74496 (_ BitVec 32) (_ BitVec 32) V!43587 V!43587 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37708)

(assert (=> b!1149461 (= lt!514076 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!560 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!514091 () ListLongMap!16431)

(declare-fun b!1149462 () Bool)

(declare-fun e!653828 () Bool)

(assert (=> b!1149462 (= e!653828 (= lt!514091 (getCurrentListMapNoExtraKeys!4672 lt!514090 lt!514081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!53322 () Bool)

(declare-fun call!53327 () ListLongMap!16431)

(assert (=> bm!53322 (= call!53328 (contains!6726 (ite c!113643 lt!514074 call!53327) k0!934))))

(declare-fun bm!53323 () Bool)

(assert (=> bm!53323 (= call!53322 (+!3569 lt!514086 (ite (or c!113643 c!113645) (tuple2!18451 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18451 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1149463 () Bool)

(declare-fun res!764813 () Bool)

(assert (=> b!1149463 (=> (not res!764813) (not e!653834))))

(assert (=> b!1149463 (= res!764813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!53324 () Bool)

(assert (=> bm!53324 (= call!53325 call!53321)))

(declare-fun b!1149464 () Bool)

(assert (=> b!1149464 (= e!653835 (not e!653824))))

(declare-fun res!764808 () Bool)

(assert (=> b!1149464 (=> res!764808 e!653824)))

(assert (=> b!1149464 (= res!764808 (bvsgt from!1455 i!673))))

(assert (=> b!1149464 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!514089 () Unit!37708)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74494 (_ BitVec 64) (_ BitVec 32)) Unit!37708)

(assert (=> b!1149464 (= lt!514089 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1149465 () Bool)

(assert (=> b!1149465 (= c!113645 (and (not lt!514083) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1149465 (= e!653831 e!653819)))

(declare-fun b!1149466 () Bool)

(assert (=> b!1149466 (= e!653832 true)))

(assert (=> b!1149466 e!653828))

(declare-fun res!764800 () Bool)

(assert (=> b!1149466 (=> (not res!764800) (not e!653828))))

(assert (=> b!1149466 (= res!764800 (= lt!514091 lt!514086))))

(assert (=> b!1149466 (= lt!514091 (-!1319 lt!514093 k0!934))))

(declare-fun lt!514094 () V!43587)

(assert (=> b!1149466 (= (-!1319 (+!3569 lt!514086 (tuple2!18451 (select (arr!35894 _keys!1208) from!1455) lt!514094)) (select (arr!35894 _keys!1208) from!1455)) lt!514086)))

(declare-fun lt!514078 () Unit!37708)

(declare-fun addThenRemoveForNewKeyIsSame!168 (ListLongMap!16431 (_ BitVec 64) V!43587) Unit!37708)

(assert (=> b!1149466 (= lt!514078 (addThenRemoveForNewKeyIsSame!168 lt!514086 (select (arr!35894 _keys!1208) from!1455) lt!514094))))

(declare-fun get!18294 (ValueCell!13713 V!43587) V!43587)

(assert (=> b!1149466 (= lt!514094 (get!18294 (select (arr!35895 _values!996) from!1455) lt!514095))))

(declare-fun lt!514075 () Unit!37708)

(assert (=> b!1149466 (= lt!514075 e!653826)))

(declare-fun c!113644 () Bool)

(assert (=> b!1149466 (= c!113644 (contains!6726 lt!514086 k0!934))))

(assert (=> b!1149466 (= lt!514086 (getCurrentListMapNoExtraKeys!4672 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53325 () Bool)

(assert (=> bm!53325 (= call!53327 call!53322)))

(declare-fun b!1149467 () Bool)

(declare-fun Unit!37712 () Unit!37708)

(assert (=> b!1149467 (= e!653826 Unit!37712)))

(assert (= (and start!98746 res!764801) b!1149458))

(assert (= (and b!1149458 res!764807) b!1149460))

(assert (= (and b!1149460 res!764803) b!1149463))

(assert (= (and b!1149463 res!764813) b!1149442))

(assert (= (and b!1149442 res!764810) b!1149448))

(assert (= (and b!1149448 res!764811) b!1149446))

(assert (= (and b!1149446 res!764802) b!1149453))

(assert (= (and b!1149453 res!764812) b!1149438))

(assert (= (and b!1149438 res!764806) b!1149444))

(assert (= (and b!1149444 res!764805) b!1149464))

(assert (= (and b!1149464 (not res!764808)) b!1149456))

(assert (= (and b!1149456 (not res!764799)) b!1149461))

(assert (= (and b!1149461 c!113641) b!1149454))

(assert (= (and b!1149461 (not c!113641)) b!1149452))

(assert (= (or b!1149454 b!1149452) bm!53321))

(assert (= (or b!1149454 b!1149452) bm!53320))

(assert (= (and b!1149461 (not res!764809)) b!1149466))

(assert (= (and b!1149466 c!113644) b!1149439))

(assert (= (and b!1149466 (not c!113644)) b!1149467))

(assert (= (and b!1149439 c!113643) b!1149457))

(assert (= (and b!1149439 (not c!113643)) b!1149465))

(assert (= (and b!1149465 c!113645) b!1149449))

(assert (= (and b!1149465 (not c!113645)) b!1149447))

(assert (= (and b!1149447 c!113646) b!1149440))

(assert (= (and b!1149447 (not c!113646)) b!1149450))

(assert (= (or b!1149449 b!1149440) bm!53324))

(assert (= (or b!1149449 b!1149440) bm!53325))

(assert (= (or b!1149449 b!1149440) bm!53319))

(assert (= (or b!1149457 bm!53319) bm!53322))

(assert (= (or b!1149457 bm!53324) bm!53318))

(assert (= (or b!1149457 bm!53325) bm!53323))

(assert (= (and b!1149439 c!113642) b!1149451))

(assert (= (and b!1149439 (not c!113642)) b!1149445))

(assert (= (and b!1149439 res!764804) b!1149455))

(assert (= (and b!1149466 res!764800) b!1149462))

(assert (= (and b!1149441 condMapEmpty!45092) mapIsEmpty!45092))

(assert (= (and b!1149441 (not condMapEmpty!45092)) mapNonEmpty!45092))

(get-info :version)

(assert (= (and mapNonEmpty!45092 ((_ is ValueCellFull!13713) mapValue!45092)) b!1149459))

(assert (= (and b!1149441 ((_ is ValueCellFull!13713) mapDefault!45092)) b!1149443))

(assert (= start!98746 b!1149441))

(declare-fun b_lambda!19439 () Bool)

(assert (=> (not b_lambda!19439) (not b!1149456)))

(declare-fun t!36556 () Bool)

(declare-fun tb!9135 () Bool)

(assert (=> (and start!98746 (= defaultEntry!1004 defaultEntry!1004) t!36556) tb!9135))

(declare-fun result!18827 () Bool)

(assert (=> tb!9135 (= result!18827 tp_is_empty!28845)))

(assert (=> b!1149456 t!36556))

(declare-fun b_and!39495 () Bool)

(assert (= b_and!39493 (and (=> t!36556 result!18827) b_and!39495)))

(declare-fun m!1059855 () Bool)

(assert (=> bm!53320 m!1059855))

(declare-fun m!1059857 () Bool)

(assert (=> start!98746 m!1059857))

(declare-fun m!1059859 () Bool)

(assert (=> start!98746 m!1059859))

(declare-fun m!1059861 () Bool)

(assert (=> b!1149466 m!1059861))

(assert (=> b!1149466 m!1059855))

(declare-fun m!1059863 () Bool)

(assert (=> b!1149466 m!1059863))

(assert (=> b!1149466 m!1059861))

(declare-fun m!1059865 () Bool)

(assert (=> b!1149466 m!1059865))

(declare-fun m!1059867 () Bool)

(assert (=> b!1149466 m!1059867))

(declare-fun m!1059869 () Bool)

(assert (=> b!1149466 m!1059869))

(declare-fun m!1059871 () Bool)

(assert (=> b!1149466 m!1059871))

(assert (=> b!1149466 m!1059863))

(declare-fun m!1059873 () Bool)

(assert (=> b!1149466 m!1059873))

(assert (=> b!1149466 m!1059865))

(declare-fun m!1059875 () Bool)

(assert (=> b!1149466 m!1059875))

(assert (=> b!1149466 m!1059865))

(declare-fun m!1059877 () Bool)

(assert (=> b!1149462 m!1059877))

(declare-fun m!1059879 () Bool)

(assert (=> b!1149454 m!1059879))

(declare-fun m!1059881 () Bool)

(assert (=> b!1149456 m!1059881))

(declare-fun m!1059883 () Bool)

(assert (=> b!1149456 m!1059883))

(declare-fun m!1059885 () Bool)

(assert (=> b!1149456 m!1059885))

(declare-fun m!1059887 () Bool)

(assert (=> b!1149456 m!1059887))

(declare-fun m!1059889 () Bool)

(assert (=> b!1149438 m!1059889))

(declare-fun m!1059891 () Bool)

(assert (=> b!1149438 m!1059891))

(declare-fun m!1059893 () Bool)

(assert (=> bm!53323 m!1059893))

(declare-fun m!1059895 () Bool)

(assert (=> b!1149442 m!1059895))

(assert (=> b!1149461 m!1059865))

(declare-fun m!1059897 () Bool)

(assert (=> b!1149461 m!1059897))

(declare-fun m!1059899 () Bool)

(assert (=> mapNonEmpty!45092 m!1059899))

(declare-fun m!1059901 () Bool)

(assert (=> b!1149463 m!1059901))

(declare-fun m!1059903 () Bool)

(assert (=> b!1149453 m!1059903))

(declare-fun m!1059905 () Bool)

(assert (=> b!1149457 m!1059905))

(assert (=> b!1149457 m!1059905))

(declare-fun m!1059907 () Bool)

(assert (=> b!1149457 m!1059907))

(declare-fun m!1059909 () Bool)

(assert (=> b!1149457 m!1059909))

(declare-fun m!1059911 () Bool)

(assert (=> bm!53322 m!1059911))

(declare-fun m!1059913 () Bool)

(assert (=> b!1149439 m!1059913))

(declare-fun m!1059915 () Bool)

(assert (=> b!1149439 m!1059915))

(declare-fun m!1059917 () Bool)

(assert (=> b!1149439 m!1059917))

(declare-fun m!1059919 () Bool)

(assert (=> b!1149439 m!1059919))

(declare-fun m!1059921 () Bool)

(assert (=> b!1149458 m!1059921))

(declare-fun m!1059923 () Bool)

(assert (=> b!1149444 m!1059923))

(declare-fun m!1059925 () Bool)

(assert (=> b!1149455 m!1059925))

(declare-fun m!1059927 () Bool)

(assert (=> b!1149464 m!1059927))

(declare-fun m!1059929 () Bool)

(assert (=> b!1149464 m!1059929))

(assert (=> b!1149451 m!1059925))

(declare-fun m!1059931 () Bool)

(assert (=> bm!53318 m!1059931))

(assert (=> bm!53321 m!1059877))

(declare-fun m!1059933 () Bool)

(assert (=> b!1149446 m!1059933))

(check-sat (not b!1149466) (not mapNonEmpty!45092) (not b_lambda!19439) (not bm!53321) (not start!98746) (not b!1149464) (not bm!53323) (not b!1149462) (not b!1149446) b_and!39495 (not b_next!24315) (not b!1149458) (not bm!53322) (not b!1149439) (not b!1149457) (not b!1149438) (not b!1149461) (not b!1149455) (not bm!53318) (not bm!53320) (not b!1149442) (not b!1149454) (not b!1149456) (not b!1149463) (not b!1149444) (not b!1149451) tp_is_empty!28845)
(check-sat b_and!39495 (not b_next!24315))
