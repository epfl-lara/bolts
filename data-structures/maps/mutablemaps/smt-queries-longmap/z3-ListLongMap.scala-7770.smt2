; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97402 () Bool)

(assert start!97402)

(declare-fun b_free!23337 () Bool)

(declare-fun b_next!23337 () Bool)

(assert (=> start!97402 (= b_free!23337 (not b_next!23337))))

(declare-fun tp!82310 () Bool)

(declare-fun b_and!37531 () Bool)

(assert (=> start!97402 (= tp!82310 b_and!37531)))

(declare-fun res!740686 () Bool)

(declare-fun e!633019 () Bool)

(assert (=> start!97402 (=> (not res!740686) (not e!633019))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72062 0))(
  ( (array!72063 (arr!34680 (Array (_ BitVec 32) (_ BitVec 64))) (size!35217 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72062)

(assert (=> start!97402 (= res!740686 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35217 _keys!1208))))))

(assert (=> start!97402 e!633019))

(declare-fun tp_is_empty!27597 () Bool)

(assert (=> start!97402 tp_is_empty!27597))

(declare-fun array_inv!26554 (array!72062) Bool)

(assert (=> start!97402 (array_inv!26554 _keys!1208)))

(assert (=> start!97402 true))

(assert (=> start!97402 tp!82310))

(declare-datatypes ((V!41923 0))(
  ( (V!41924 (val!13855 Int)) )
))
(declare-datatypes ((ValueCell!13089 0))(
  ( (ValueCellFull!13089 (v!16489 V!41923)) (EmptyCell!13089) )
))
(declare-datatypes ((array!72064 0))(
  ( (array!72065 (arr!34681 (Array (_ BitVec 32) ValueCell!13089)) (size!35218 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72064)

(declare-fun e!633016 () Bool)

(declare-fun array_inv!26555 (array!72064) Bool)

(assert (=> start!97402 (and (array_inv!26555 _values!996) e!633016)))

(declare-fun b!1109793 () Bool)

(declare-fun e!633020 () Bool)

(assert (=> b!1109793 (= e!633020 tp_is_empty!27597)))

(declare-fun b!1109794 () Bool)

(declare-fun res!740684 () Bool)

(assert (=> b!1109794 (=> (not res!740684) (not e!633019))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1109794 (= res!740684 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35217 _keys!1208))))))

(declare-fun b!1109795 () Bool)

(declare-fun e!633017 () Bool)

(declare-datatypes ((tuple2!17586 0))(
  ( (tuple2!17587 (_1!8803 (_ BitVec 64)) (_2!8803 V!41923)) )
))
(declare-datatypes ((List!24322 0))(
  ( (Nil!24319) (Cons!24318 (h!25527 tuple2!17586) (t!34712 List!24322)) )
))
(declare-datatypes ((ListLongMap!15567 0))(
  ( (ListLongMap!15568 (toList!7799 List!24322)) )
))
(declare-fun call!46708 () ListLongMap!15567)

(declare-fun call!46709 () ListLongMap!15567)

(assert (=> b!1109795 (= e!633017 (= call!46708 call!46709))))

(declare-fun b!1109796 () Bool)

(declare-fun res!740690 () Bool)

(assert (=> b!1109796 (=> (not res!740690) (not e!633019))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109796 (= res!740690 (validMask!0 mask!1564))))

(declare-fun b!1109797 () Bool)

(declare-fun res!740691 () Bool)

(assert (=> b!1109797 (=> (not res!740691) (not e!633019))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109797 (= res!740691 (validKeyInArray!0 k0!934))))

(declare-fun b!1109798 () Bool)

(declare-fun e!633021 () Bool)

(declare-fun e!633023 () Bool)

(assert (=> b!1109798 (= e!633021 (not e!633023))))

(declare-fun res!740692 () Bool)

(assert (=> b!1109798 (=> res!740692 e!633023)))

(assert (=> b!1109798 (= res!740692 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35217 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109798 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36341 0))(
  ( (Unit!36342) )
))
(declare-fun lt!496031 () Unit!36341)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72062 (_ BitVec 64) (_ BitVec 32)) Unit!36341)

(assert (=> b!1109798 (= lt!496031 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1109799 () Bool)

(declare-fun -!1027 (ListLongMap!15567 (_ BitVec 64)) ListLongMap!15567)

(assert (=> b!1109799 (= e!633017 (= call!46708 (-!1027 call!46709 k0!934)))))

(declare-fun zeroValue!944 () V!41923)

(declare-fun bm!46705 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41923)

(declare-fun getCurrentListMapNoExtraKeys!4262 (array!72062 array!72064 (_ BitVec 32) (_ BitVec 32) V!41923 V!41923 (_ BitVec 32) Int) ListLongMap!15567)

(assert (=> bm!46705 (= call!46709 (getCurrentListMapNoExtraKeys!4262 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109800 () Bool)

(declare-fun res!740693 () Bool)

(assert (=> b!1109800 (=> (not res!740693) (not e!633019))))

(assert (=> b!1109800 (= res!740693 (= (select (arr!34680 _keys!1208) i!673) k0!934))))

(declare-fun b!1109801 () Bool)

(declare-fun e!633022 () Bool)

(assert (=> b!1109801 (= e!633022 tp_is_empty!27597)))

(declare-fun mapNonEmpty!43213 () Bool)

(declare-fun mapRes!43213 () Bool)

(declare-fun tp!82311 () Bool)

(assert (=> mapNonEmpty!43213 (= mapRes!43213 (and tp!82311 e!633022))))

(declare-fun mapValue!43213 () ValueCell!13089)

(declare-fun mapKey!43213 () (_ BitVec 32))

(declare-fun mapRest!43213 () (Array (_ BitVec 32) ValueCell!13089))

(assert (=> mapNonEmpty!43213 (= (arr!34681 _values!996) (store mapRest!43213 mapKey!43213 mapValue!43213))))

(declare-fun mapIsEmpty!43213 () Bool)

(assert (=> mapIsEmpty!43213 mapRes!43213))

(declare-fun b!1109802 () Bool)

(declare-fun res!740688 () Bool)

(assert (=> b!1109802 (=> (not res!740688) (not e!633021))))

(declare-fun lt!496030 () array!72062)

(declare-datatypes ((List!24323 0))(
  ( (Nil!24320) (Cons!24319 (h!25528 (_ BitVec 64)) (t!34713 List!24323)) )
))
(declare-fun arrayNoDuplicates!0 (array!72062 (_ BitVec 32) List!24323) Bool)

(assert (=> b!1109802 (= res!740688 (arrayNoDuplicates!0 lt!496030 #b00000000000000000000000000000000 Nil!24320))))

(declare-fun b!1109803 () Bool)

(assert (=> b!1109803 (= e!633023 true)))

(assert (=> b!1109803 e!633017))

(declare-fun c!109157 () Bool)

(assert (=> b!1109803 (= c!109157 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!496032 () Unit!36341)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!277 (array!72062 array!72064 (_ BitVec 32) (_ BitVec 32) V!41923 V!41923 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36341)

(assert (=> b!1109803 (= lt!496032 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!277 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109804 () Bool)

(declare-fun res!740685 () Bool)

(assert (=> b!1109804 (=> (not res!740685) (not e!633019))))

(assert (=> b!1109804 (= res!740685 (and (= (size!35218 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35217 _keys!1208) (size!35218 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!46706 () Bool)

(declare-fun dynLambda!2385 (Int (_ BitVec 64)) V!41923)

(assert (=> bm!46706 (= call!46708 (getCurrentListMapNoExtraKeys!4262 lt!496030 (array!72065 (store (arr!34681 _values!996) i!673 (ValueCellFull!13089 (dynLambda!2385 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35218 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109805 () Bool)

(assert (=> b!1109805 (= e!633019 e!633021)))

(declare-fun res!740694 () Bool)

(assert (=> b!1109805 (=> (not res!740694) (not e!633021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72062 (_ BitVec 32)) Bool)

(assert (=> b!1109805 (= res!740694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496030 mask!1564))))

(assert (=> b!1109805 (= lt!496030 (array!72063 (store (arr!34680 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35217 _keys!1208)))))

(declare-fun b!1109806 () Bool)

(declare-fun res!740687 () Bool)

(assert (=> b!1109806 (=> (not res!740687) (not e!633019))))

(assert (=> b!1109806 (= res!740687 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24320))))

(declare-fun b!1109807 () Bool)

(assert (=> b!1109807 (= e!633016 (and e!633020 mapRes!43213))))

(declare-fun condMapEmpty!43213 () Bool)

(declare-fun mapDefault!43213 () ValueCell!13089)

(assert (=> b!1109807 (= condMapEmpty!43213 (= (arr!34681 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13089)) mapDefault!43213)))))

(declare-fun b!1109808 () Bool)

(declare-fun res!740689 () Bool)

(assert (=> b!1109808 (=> (not res!740689) (not e!633019))))

(assert (=> b!1109808 (= res!740689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!97402 res!740686) b!1109796))

(assert (= (and b!1109796 res!740690) b!1109804))

(assert (= (and b!1109804 res!740685) b!1109808))

(assert (= (and b!1109808 res!740689) b!1109806))

(assert (= (and b!1109806 res!740687) b!1109794))

(assert (= (and b!1109794 res!740684) b!1109797))

(assert (= (and b!1109797 res!740691) b!1109800))

(assert (= (and b!1109800 res!740693) b!1109805))

(assert (= (and b!1109805 res!740694) b!1109802))

(assert (= (and b!1109802 res!740688) b!1109798))

(assert (= (and b!1109798 (not res!740692)) b!1109803))

(assert (= (and b!1109803 c!109157) b!1109799))

(assert (= (and b!1109803 (not c!109157)) b!1109795))

(assert (= (or b!1109799 b!1109795) bm!46706))

(assert (= (or b!1109799 b!1109795) bm!46705))

(assert (= (and b!1109807 condMapEmpty!43213) mapIsEmpty!43213))

(assert (= (and b!1109807 (not condMapEmpty!43213)) mapNonEmpty!43213))

(get-info :version)

(assert (= (and mapNonEmpty!43213 ((_ is ValueCellFull!13089) mapValue!43213)) b!1109801))

(assert (= (and b!1109807 ((_ is ValueCellFull!13089) mapDefault!43213)) b!1109793))

(assert (= start!97402 b!1109807))

(declare-fun b_lambda!18393 () Bool)

(assert (=> (not b_lambda!18393) (not bm!46706)))

(declare-fun t!34711 () Bool)

(declare-fun tb!8211 () Bool)

(assert (=> (and start!97402 (= defaultEntry!1004 defaultEntry!1004) t!34711) tb!8211))

(declare-fun result!16975 () Bool)

(assert (=> tb!8211 (= result!16975 tp_is_empty!27597)))

(assert (=> bm!46706 t!34711))

(declare-fun b_and!37533 () Bool)

(assert (= b_and!37531 (and (=> t!34711 result!16975) b_and!37533)))

(declare-fun m!1028091 () Bool)

(assert (=> b!1109799 m!1028091))

(declare-fun m!1028093 () Bool)

(assert (=> start!97402 m!1028093))

(declare-fun m!1028095 () Bool)

(assert (=> start!97402 m!1028095))

(declare-fun m!1028097 () Bool)

(assert (=> bm!46705 m!1028097))

(declare-fun m!1028099 () Bool)

(assert (=> b!1109800 m!1028099))

(declare-fun m!1028101 () Bool)

(assert (=> bm!46706 m!1028101))

(declare-fun m!1028103 () Bool)

(assert (=> bm!46706 m!1028103))

(declare-fun m!1028105 () Bool)

(assert (=> bm!46706 m!1028105))

(declare-fun m!1028107 () Bool)

(assert (=> b!1109803 m!1028107))

(declare-fun m!1028109 () Bool)

(assert (=> mapNonEmpty!43213 m!1028109))

(declare-fun m!1028111 () Bool)

(assert (=> b!1109797 m!1028111))

(declare-fun m!1028113 () Bool)

(assert (=> b!1109802 m!1028113))

(declare-fun m!1028115 () Bool)

(assert (=> b!1109796 m!1028115))

(declare-fun m!1028117 () Bool)

(assert (=> b!1109798 m!1028117))

(declare-fun m!1028119 () Bool)

(assert (=> b!1109798 m!1028119))

(declare-fun m!1028121 () Bool)

(assert (=> b!1109808 m!1028121))

(declare-fun m!1028123 () Bool)

(assert (=> b!1109805 m!1028123))

(declare-fun m!1028125 () Bool)

(assert (=> b!1109805 m!1028125))

(declare-fun m!1028127 () Bool)

(assert (=> b!1109806 m!1028127))

(check-sat (not b!1109803) b_and!37533 (not b!1109798) (not b!1109796) (not b!1109799) (not b!1109802) (not b!1109808) (not b!1109806) tp_is_empty!27597 (not mapNonEmpty!43213) (not b!1109805) (not b_lambda!18393) (not b!1109797) (not start!97402) (not bm!46706) (not b_next!23337) (not bm!46705))
(check-sat b_and!37533 (not b_next!23337))
