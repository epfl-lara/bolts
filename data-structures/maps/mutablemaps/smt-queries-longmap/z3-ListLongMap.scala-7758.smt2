; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97330 () Bool)

(assert start!97330)

(declare-fun b_free!23265 () Bool)

(declare-fun b_next!23265 () Bool)

(assert (=> start!97330 (= b_free!23265 (not b_next!23265))))

(declare-fun tp!82094 () Bool)

(declare-fun b_and!37379 () Bool)

(assert (=> start!97330 (= tp!82094 b_and!37379)))

(declare-fun b!1107945 () Bool)

(declare-fun res!739497 () Bool)

(declare-fun e!632131 () Bool)

(assert (=> b!1107945 (=> (not res!739497) (not e!632131))))

(declare-datatypes ((array!71918 0))(
  ( (array!71919 (arr!34608 (Array (_ BitVec 32) (_ BitVec 64))) (size!35145 (_ BitVec 32))) )
))
(declare-fun lt!495707 () array!71918)

(declare-datatypes ((List!24263 0))(
  ( (Nil!24260) (Cons!24259 (h!25468 (_ BitVec 64)) (t!34581 List!24263)) )
))
(declare-fun arrayNoDuplicates!0 (array!71918 (_ BitVec 32) List!24263) Bool)

(assert (=> b!1107945 (= res!739497 (arrayNoDuplicates!0 lt!495707 #b00000000000000000000000000000000 Nil!24260))))

(declare-fun mapIsEmpty!43105 () Bool)

(declare-fun mapRes!43105 () Bool)

(assert (=> mapIsEmpty!43105 mapRes!43105))

(declare-fun b!1107946 () Bool)

(declare-fun res!739498 () Bool)

(declare-fun e!632134 () Bool)

(assert (=> b!1107946 (=> (not res!739498) (not e!632134))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107946 (= res!739498 (validMask!0 mask!1564))))

(declare-datatypes ((V!41827 0))(
  ( (V!41828 (val!13819 Int)) )
))
(declare-fun zeroValue!944 () V!41827)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46489 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17526 0))(
  ( (tuple2!17527 (_1!8773 (_ BitVec 64)) (_2!8773 V!41827)) )
))
(declare-datatypes ((List!24264 0))(
  ( (Nil!24261) (Cons!24260 (h!25469 tuple2!17526) (t!34582 List!24264)) )
))
(declare-datatypes ((ListLongMap!15507 0))(
  ( (ListLongMap!15508 (toList!7769 List!24264)) )
))
(declare-fun call!46492 () ListLongMap!15507)

(declare-datatypes ((ValueCell!13053 0))(
  ( (ValueCellFull!13053 (v!16453 V!41827)) (EmptyCell!13053) )
))
(declare-datatypes ((array!71920 0))(
  ( (array!71921 (arr!34609 (Array (_ BitVec 32) ValueCell!13053)) (size!35146 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71920)

(declare-fun minValue!944 () V!41827)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4237 (array!71918 array!71920 (_ BitVec 32) (_ BitVec 32) V!41827 V!41827 (_ BitVec 32) Int) ListLongMap!15507)

(declare-fun dynLambda!2363 (Int (_ BitVec 64)) V!41827)

(assert (=> bm!46489 (= call!46492 (getCurrentListMapNoExtraKeys!4237 lt!495707 (array!71921 (store (arr!34609 _values!996) i!673 (ValueCellFull!13053 (dynLambda!2363 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35146 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107947 () Bool)

(declare-fun e!632128 () Bool)

(assert (=> b!1107947 (= e!632128 true)))

(declare-fun e!632132 () Bool)

(assert (=> b!1107947 e!632132))

(declare-fun c!109025 () Bool)

(assert (=> b!1107947 (= c!109025 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun _keys!1208 () array!71918)

(declare-datatypes ((Unit!36295 0))(
  ( (Unit!36296) )
))
(declare-fun lt!495706 () Unit!36295)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!257 (array!71918 array!71920 (_ BitVec 32) (_ BitVec 32) V!41827 V!41827 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36295)

(assert (=> b!1107947 (= lt!495706 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!257 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107948 () Bool)

(declare-fun res!739506 () Bool)

(assert (=> b!1107948 (=> (not res!739506) (not e!632134))))

(assert (=> b!1107948 (= res!739506 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24260))))

(declare-fun b!1107949 () Bool)

(declare-fun res!739504 () Bool)

(assert (=> b!1107949 (=> (not res!739504) (not e!632134))))

(assert (=> b!1107949 (= res!739504 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35145 _keys!1208))))))

(declare-fun b!1107950 () Bool)

(declare-fun e!632133 () Bool)

(declare-fun tp_is_empty!27525 () Bool)

(assert (=> b!1107950 (= e!632133 tp_is_empty!27525)))

(declare-fun b!1107951 () Bool)

(declare-fun call!46493 () ListLongMap!15507)

(assert (=> b!1107951 (= e!632132 (= call!46492 call!46493))))

(declare-fun mapNonEmpty!43105 () Bool)

(declare-fun tp!82095 () Bool)

(assert (=> mapNonEmpty!43105 (= mapRes!43105 (and tp!82095 e!632133))))

(declare-fun mapRest!43105 () (Array (_ BitVec 32) ValueCell!13053))

(declare-fun mapValue!43105 () ValueCell!13053)

(declare-fun mapKey!43105 () (_ BitVec 32))

(assert (=> mapNonEmpty!43105 (= (arr!34609 _values!996) (store mapRest!43105 mapKey!43105 mapValue!43105))))

(declare-fun res!739499 () Bool)

(assert (=> start!97330 (=> (not res!739499) (not e!632134))))

(assert (=> start!97330 (= res!739499 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35145 _keys!1208))))))

(assert (=> start!97330 e!632134))

(assert (=> start!97330 tp_is_empty!27525))

(declare-fun array_inv!26500 (array!71918) Bool)

(assert (=> start!97330 (array_inv!26500 _keys!1208)))

(assert (=> start!97330 true))

(assert (=> start!97330 tp!82094))

(declare-fun e!632129 () Bool)

(declare-fun array_inv!26501 (array!71920) Bool)

(assert (=> start!97330 (and (array_inv!26501 _values!996) e!632129)))

(declare-fun b!1107952 () Bool)

(assert (=> b!1107952 (= e!632131 (not e!632128))))

(declare-fun res!739505 () Bool)

(assert (=> b!1107952 (=> res!739505 e!632128)))

(assert (=> b!1107952 (= res!739505 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35145 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107952 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495708 () Unit!36295)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71918 (_ BitVec 64) (_ BitVec 32)) Unit!36295)

(assert (=> b!1107952 (= lt!495708 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1107953 () Bool)

(declare-fun res!739496 () Bool)

(assert (=> b!1107953 (=> (not res!739496) (not e!632134))))

(assert (=> b!1107953 (= res!739496 (and (= (size!35146 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35145 _keys!1208) (size!35146 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1107954 () Bool)

(declare-fun e!632135 () Bool)

(assert (=> b!1107954 (= e!632129 (and e!632135 mapRes!43105))))

(declare-fun condMapEmpty!43105 () Bool)

(declare-fun mapDefault!43105 () ValueCell!13053)

(assert (=> b!1107954 (= condMapEmpty!43105 (= (arr!34609 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13053)) mapDefault!43105)))))

(declare-fun bm!46490 () Bool)

(assert (=> bm!46490 (= call!46493 (getCurrentListMapNoExtraKeys!4237 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107955 () Bool)

(assert (=> b!1107955 (= e!632135 tp_is_empty!27525)))

(declare-fun b!1107956 () Bool)

(declare-fun res!739501 () Bool)

(assert (=> b!1107956 (=> (not res!739501) (not e!632134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107956 (= res!739501 (validKeyInArray!0 k0!934))))

(declare-fun b!1107957 () Bool)

(assert (=> b!1107957 (= e!632134 e!632131)))

(declare-fun res!739503 () Bool)

(assert (=> b!1107957 (=> (not res!739503) (not e!632131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71918 (_ BitVec 32)) Bool)

(assert (=> b!1107957 (= res!739503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495707 mask!1564))))

(assert (=> b!1107957 (= lt!495707 (array!71919 (store (arr!34608 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35145 _keys!1208)))))

(declare-fun b!1107958 () Bool)

(declare-fun res!739500 () Bool)

(assert (=> b!1107958 (=> (not res!739500) (not e!632134))))

(assert (=> b!1107958 (= res!739500 (= (select (arr!34608 _keys!1208) i!673) k0!934))))

(declare-fun b!1107959 () Bool)

(declare-fun -!1001 (ListLongMap!15507 (_ BitVec 64)) ListLongMap!15507)

(assert (=> b!1107959 (= e!632132 (= call!46492 (-!1001 call!46493 k0!934)))))

(declare-fun b!1107960 () Bool)

(declare-fun res!739502 () Bool)

(assert (=> b!1107960 (=> (not res!739502) (not e!632134))))

(assert (=> b!1107960 (= res!739502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!97330 res!739499) b!1107946))

(assert (= (and b!1107946 res!739498) b!1107953))

(assert (= (and b!1107953 res!739496) b!1107960))

(assert (= (and b!1107960 res!739502) b!1107948))

(assert (= (and b!1107948 res!739506) b!1107949))

(assert (= (and b!1107949 res!739504) b!1107956))

(assert (= (and b!1107956 res!739501) b!1107958))

(assert (= (and b!1107958 res!739500) b!1107957))

(assert (= (and b!1107957 res!739503) b!1107945))

(assert (= (and b!1107945 res!739497) b!1107952))

(assert (= (and b!1107952 (not res!739505)) b!1107947))

(assert (= (and b!1107947 c!109025) b!1107959))

(assert (= (and b!1107947 (not c!109025)) b!1107951))

(assert (= (or b!1107959 b!1107951) bm!46489))

(assert (= (or b!1107959 b!1107951) bm!46490))

(assert (= (and b!1107954 condMapEmpty!43105) mapIsEmpty!43105))

(assert (= (and b!1107954 (not condMapEmpty!43105)) mapNonEmpty!43105))

(get-info :version)

(assert (= (and mapNonEmpty!43105 ((_ is ValueCellFull!13053) mapValue!43105)) b!1107950))

(assert (= (and b!1107954 ((_ is ValueCellFull!13053) mapDefault!43105)) b!1107955))

(assert (= start!97330 b!1107954))

(declare-fun b_lambda!18313 () Bool)

(assert (=> (not b_lambda!18313) (not bm!46489)))

(declare-fun t!34580 () Bool)

(declare-fun tb!8139 () Bool)

(assert (=> (and start!97330 (= defaultEntry!1004 defaultEntry!1004) t!34580) tb!8139))

(declare-fun result!16831 () Bool)

(assert (=> tb!8139 (= result!16831 tp_is_empty!27525)))

(assert (=> bm!46489 t!34580))

(declare-fun b_and!37381 () Bool)

(assert (= b_and!37379 (and (=> t!34580 result!16831) b_and!37381)))

(declare-fun m!1026723 () Bool)

(assert (=> b!1107956 m!1026723))

(declare-fun m!1026725 () Bool)

(assert (=> b!1107960 m!1026725))

(declare-fun m!1026727 () Bool)

(assert (=> b!1107957 m!1026727))

(declare-fun m!1026729 () Bool)

(assert (=> b!1107957 m!1026729))

(declare-fun m!1026731 () Bool)

(assert (=> b!1107947 m!1026731))

(declare-fun m!1026733 () Bool)

(assert (=> b!1107959 m!1026733))

(declare-fun m!1026735 () Bool)

(assert (=> bm!46490 m!1026735))

(declare-fun m!1026737 () Bool)

(assert (=> bm!46489 m!1026737))

(declare-fun m!1026739 () Bool)

(assert (=> bm!46489 m!1026739))

(declare-fun m!1026741 () Bool)

(assert (=> bm!46489 m!1026741))

(declare-fun m!1026743 () Bool)

(assert (=> b!1107945 m!1026743))

(declare-fun m!1026745 () Bool)

(assert (=> b!1107958 m!1026745))

(declare-fun m!1026747 () Bool)

(assert (=> start!97330 m!1026747))

(declare-fun m!1026749 () Bool)

(assert (=> start!97330 m!1026749))

(declare-fun m!1026751 () Bool)

(assert (=> b!1107946 m!1026751))

(declare-fun m!1026753 () Bool)

(assert (=> b!1107948 m!1026753))

(declare-fun m!1026755 () Bool)

(assert (=> b!1107952 m!1026755))

(declare-fun m!1026757 () Bool)

(assert (=> b!1107952 m!1026757))

(declare-fun m!1026759 () Bool)

(assert (=> mapNonEmpty!43105 m!1026759))

(check-sat (not b!1107960) tp_is_empty!27525 (not b_next!23265) (not b!1107947) (not b!1107957) (not b!1107945) (not b!1107946) (not mapNonEmpty!43105) (not b!1107952) (not b_lambda!18313) (not bm!46489) (not bm!46490) b_and!37381 (not start!97330) (not b!1107959) (not b!1107948) (not b!1107956))
(check-sat b_and!37381 (not b_next!23265))
