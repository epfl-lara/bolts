; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73252 () Bool)

(assert start!73252)

(declare-fun b_free!14139 () Bool)

(declare-fun b_next!14139 () Bool)

(assert (=> start!73252 (= b_free!14139 (not b_next!14139))))

(declare-fun tp!49921 () Bool)

(declare-fun b_and!23455 () Bool)

(assert (=> start!73252 (= tp!49921 b_and!23455)))

(declare-fun b!853271 () Bool)

(declare-fun e!475877 () Bool)

(assert (=> b!853271 (= e!475877 true)))

(declare-datatypes ((V!26747 0))(
  ( (V!26748 (val!8185 Int)) )
))
(declare-datatypes ((tuple2!10772 0))(
  ( (tuple2!10773 (_1!5396 (_ BitVec 64)) (_2!5396 V!26747)) )
))
(declare-fun lt!384676 () tuple2!10772)

(declare-datatypes ((List!16649 0))(
  ( (Nil!16646) (Cons!16645 (h!17776 tuple2!10772) (t!23242 List!16649)) )
))
(declare-datatypes ((ListLongMap!9555 0))(
  ( (ListLongMap!9556 (toList!4793 List!16649)) )
))
(declare-fun lt!384671 () ListLongMap!9555)

(declare-fun lt!384673 () V!26747)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2132 (ListLongMap!9555 tuple2!10772) ListLongMap!9555)

(assert (=> b!853271 (= (+!2132 lt!384671 lt!384676) (+!2132 (+!2132 lt!384671 (tuple2!10773 k0!854 lt!384673)) lt!384676))))

(declare-fun lt!384678 () V!26747)

(assert (=> b!853271 (= lt!384676 (tuple2!10773 k0!854 lt!384678))))

(declare-datatypes ((Unit!29110 0))(
  ( (Unit!29111) )
))
(declare-fun lt!384675 () Unit!29110)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!312 (ListLongMap!9555 (_ BitVec 64) V!26747 V!26747) Unit!29110)

(assert (=> b!853271 (= lt!384675 (addSameAsAddTwiceSameKeyDiffValues!312 lt!384671 k0!854 lt!384673 lt!384678))))

(declare-fun lt!384672 () V!26747)

(declare-datatypes ((ValueCell!7698 0))(
  ( (ValueCellFull!7698 (v!10606 V!26747)) (EmptyCell!7698) )
))
(declare-datatypes ((array!48734 0))(
  ( (array!48735 (arr!23394 (Array (_ BitVec 32) ValueCell!7698)) (size!23835 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48734)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12356 (ValueCell!7698 V!26747) V!26747)

(assert (=> b!853271 (= lt!384673 (get!12356 (select (arr!23394 _values!688) from!1053) lt!384672))))

(declare-fun lt!384677 () ListLongMap!9555)

(declare-datatypes ((array!48736 0))(
  ( (array!48737 (arr!23395 (Array (_ BitVec 32) (_ BitVec 64))) (size!23836 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48736)

(assert (=> b!853271 (= lt!384677 (+!2132 lt!384671 (tuple2!10773 (select (arr!23395 _keys!868) from!1053) lt!384678)))))

(declare-fun v!557 () V!26747)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!853271 (= lt!384678 (get!12356 (select (store (arr!23394 _values!688) i!612 (ValueCellFull!7698 v!557)) from!1053) lt!384672))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1060 (Int (_ BitVec 64)) V!26747)

(assert (=> b!853271 (= lt!384672 (dynLambda!1060 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!384670 () array!48734)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26747)

(declare-fun zeroValue!654 () V!26747)

(declare-fun getCurrentListMapNoExtraKeys!2776 (array!48736 array!48734 (_ BitVec 32) (_ BitVec 32) V!26747 V!26747 (_ BitVec 32) Int) ListLongMap!9555)

(assert (=> b!853271 (= lt!384671 (getCurrentListMapNoExtraKeys!2776 _keys!868 lt!384670 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853272 () Bool)

(declare-fun res!579627 () Bool)

(declare-fun e!475882 () Bool)

(assert (=> b!853272 (=> (not res!579627) (not e!475882))))

(assert (=> b!853272 (= res!579627 (and (= (select (arr!23395 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!853273 () Bool)

(declare-fun e!475879 () Bool)

(declare-fun tp_is_empty!16275 () Bool)

(assert (=> b!853273 (= e!475879 tp_is_empty!16275)))

(declare-fun b!853274 () Bool)

(declare-fun res!579630 () Bool)

(assert (=> b!853274 (=> (not res!579630) (not e!475882))))

(assert (=> b!853274 (= res!579630 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23836 _keys!868))))))

(declare-fun b!853276 () Bool)

(declare-fun e!475883 () Bool)

(declare-fun call!38272 () ListLongMap!9555)

(declare-fun call!38273 () ListLongMap!9555)

(assert (=> b!853276 (= e!475883 (= call!38272 call!38273))))

(declare-fun mapNonEmpty!26012 () Bool)

(declare-fun mapRes!26012 () Bool)

(declare-fun tp!49922 () Bool)

(declare-fun e!475878 () Bool)

(assert (=> mapNonEmpty!26012 (= mapRes!26012 (and tp!49922 e!475878))))

(declare-fun mapValue!26012 () ValueCell!7698)

(declare-fun mapRest!26012 () (Array (_ BitVec 32) ValueCell!7698))

(declare-fun mapKey!26012 () (_ BitVec 32))

(assert (=> mapNonEmpty!26012 (= (arr!23394 _values!688) (store mapRest!26012 mapKey!26012 mapValue!26012))))

(declare-fun b!853277 () Bool)

(declare-fun res!579625 () Bool)

(assert (=> b!853277 (=> (not res!579625) (not e!475882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853277 (= res!579625 (validKeyInArray!0 k0!854))))

(declare-fun b!853278 () Bool)

(assert (=> b!853278 (= e!475878 tp_is_empty!16275)))

(declare-fun res!579622 () Bool)

(assert (=> start!73252 (=> (not res!579622) (not e!475882))))

(assert (=> start!73252 (= res!579622 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23836 _keys!868))))))

(assert (=> start!73252 e!475882))

(assert (=> start!73252 tp_is_empty!16275))

(assert (=> start!73252 true))

(assert (=> start!73252 tp!49921))

(declare-fun array_inv!18532 (array!48736) Bool)

(assert (=> start!73252 (array_inv!18532 _keys!868)))

(declare-fun e!475884 () Bool)

(declare-fun array_inv!18533 (array!48734) Bool)

(assert (=> start!73252 (and (array_inv!18533 _values!688) e!475884)))

(declare-fun b!853275 () Bool)

(declare-fun res!579629 () Bool)

(assert (=> b!853275 (=> (not res!579629) (not e!475882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853275 (= res!579629 (validMask!0 mask!1196))))

(declare-fun b!853279 () Bool)

(assert (=> b!853279 (= e!475884 (and e!475879 mapRes!26012))))

(declare-fun condMapEmpty!26012 () Bool)

(declare-fun mapDefault!26012 () ValueCell!7698)

(assert (=> b!853279 (= condMapEmpty!26012 (= (arr!23394 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7698)) mapDefault!26012)))))

(declare-fun b!853280 () Bool)

(declare-fun e!475880 () Bool)

(assert (=> b!853280 (= e!475880 (not e!475877))))

(declare-fun res!579628 () Bool)

(assert (=> b!853280 (=> res!579628 e!475877)))

(assert (=> b!853280 (= res!579628 (not (validKeyInArray!0 (select (arr!23395 _keys!868) from!1053))))))

(assert (=> b!853280 e!475883))

(declare-fun c!91797 () Bool)

(assert (=> b!853280 (= c!91797 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384669 () Unit!29110)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!395 (array!48736 array!48734 (_ BitVec 32) (_ BitVec 32) V!26747 V!26747 (_ BitVec 32) (_ BitVec 64) V!26747 (_ BitVec 32) Int) Unit!29110)

(assert (=> b!853280 (= lt!384669 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!395 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26012 () Bool)

(assert (=> mapIsEmpty!26012 mapRes!26012))

(declare-fun bm!38269 () Bool)

(assert (=> bm!38269 (= call!38273 (getCurrentListMapNoExtraKeys!2776 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853281 () Bool)

(declare-fun res!579626 () Bool)

(assert (=> b!853281 (=> (not res!579626) (not e!475882))))

(declare-datatypes ((List!16650 0))(
  ( (Nil!16647) (Cons!16646 (h!17777 (_ BitVec 64)) (t!23243 List!16650)) )
))
(declare-fun arrayNoDuplicates!0 (array!48736 (_ BitVec 32) List!16650) Bool)

(assert (=> b!853281 (= res!579626 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16647))))

(declare-fun bm!38270 () Bool)

(assert (=> bm!38270 (= call!38272 (getCurrentListMapNoExtraKeys!2776 _keys!868 lt!384670 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853282 () Bool)

(declare-fun res!579621 () Bool)

(assert (=> b!853282 (=> (not res!579621) (not e!475882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48736 (_ BitVec 32)) Bool)

(assert (=> b!853282 (= res!579621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!853283 () Bool)

(assert (=> b!853283 (= e!475883 (= call!38272 (+!2132 call!38273 (tuple2!10773 k0!854 v!557))))))

(declare-fun b!853284 () Bool)

(declare-fun res!579624 () Bool)

(assert (=> b!853284 (=> (not res!579624) (not e!475882))))

(assert (=> b!853284 (= res!579624 (and (= (size!23835 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23836 _keys!868) (size!23835 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!853285 () Bool)

(assert (=> b!853285 (= e!475882 e!475880)))

(declare-fun res!579623 () Bool)

(assert (=> b!853285 (=> (not res!579623) (not e!475880))))

(assert (=> b!853285 (= res!579623 (= from!1053 i!612))))

(assert (=> b!853285 (= lt!384677 (getCurrentListMapNoExtraKeys!2776 _keys!868 lt!384670 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!853285 (= lt!384670 (array!48735 (store (arr!23394 _values!688) i!612 (ValueCellFull!7698 v!557)) (size!23835 _values!688)))))

(declare-fun lt!384674 () ListLongMap!9555)

(assert (=> b!853285 (= lt!384674 (getCurrentListMapNoExtraKeys!2776 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73252 res!579622) b!853275))

(assert (= (and b!853275 res!579629) b!853284))

(assert (= (and b!853284 res!579624) b!853282))

(assert (= (and b!853282 res!579621) b!853281))

(assert (= (and b!853281 res!579626) b!853274))

(assert (= (and b!853274 res!579630) b!853277))

(assert (= (and b!853277 res!579625) b!853272))

(assert (= (and b!853272 res!579627) b!853285))

(assert (= (and b!853285 res!579623) b!853280))

(assert (= (and b!853280 c!91797) b!853283))

(assert (= (and b!853280 (not c!91797)) b!853276))

(assert (= (or b!853283 b!853276) bm!38270))

(assert (= (or b!853283 b!853276) bm!38269))

(assert (= (and b!853280 (not res!579628)) b!853271))

(assert (= (and b!853279 condMapEmpty!26012) mapIsEmpty!26012))

(assert (= (and b!853279 (not condMapEmpty!26012)) mapNonEmpty!26012))

(get-info :version)

(assert (= (and mapNonEmpty!26012 ((_ is ValueCellFull!7698) mapValue!26012)) b!853278))

(assert (= (and b!853279 ((_ is ValueCellFull!7698) mapDefault!26012)) b!853273))

(assert (= start!73252 b!853279))

(declare-fun b_lambda!11701 () Bool)

(assert (=> (not b_lambda!11701) (not b!853271)))

(declare-fun t!23241 () Bool)

(declare-fun tb!4449 () Bool)

(assert (=> (and start!73252 (= defaultEntry!696 defaultEntry!696) t!23241) tb!4449))

(declare-fun result!8501 () Bool)

(assert (=> tb!4449 (= result!8501 tp_is_empty!16275)))

(assert (=> b!853271 t!23241))

(declare-fun b_and!23457 () Bool)

(assert (= b_and!23455 (and (=> t!23241 result!8501) b_and!23457)))

(declare-fun m!794587 () Bool)

(assert (=> b!853283 m!794587))

(declare-fun m!794589 () Bool)

(assert (=> b!853277 m!794589))

(declare-fun m!794591 () Bool)

(assert (=> b!853281 m!794591))

(declare-fun m!794593 () Bool)

(assert (=> mapNonEmpty!26012 m!794593))

(declare-fun m!794595 () Bool)

(assert (=> start!73252 m!794595))

(declare-fun m!794597 () Bool)

(assert (=> start!73252 m!794597))

(declare-fun m!794599 () Bool)

(assert (=> b!853271 m!794599))

(declare-fun m!794601 () Bool)

(assert (=> b!853271 m!794601))

(declare-fun m!794603 () Bool)

(assert (=> b!853271 m!794603))

(declare-fun m!794605 () Bool)

(assert (=> b!853271 m!794605))

(declare-fun m!794607 () Bool)

(assert (=> b!853271 m!794607))

(declare-fun m!794609 () Bool)

(assert (=> b!853271 m!794609))

(assert (=> b!853271 m!794607))

(declare-fun m!794611 () Bool)

(assert (=> b!853271 m!794611))

(declare-fun m!794613 () Bool)

(assert (=> b!853271 m!794613))

(assert (=> b!853271 m!794613))

(declare-fun m!794615 () Bool)

(assert (=> b!853271 m!794615))

(declare-fun m!794617 () Bool)

(assert (=> b!853271 m!794617))

(declare-fun m!794619 () Bool)

(assert (=> b!853271 m!794619))

(assert (=> b!853271 m!794599))

(declare-fun m!794621 () Bool)

(assert (=> b!853271 m!794621))

(declare-fun m!794623 () Bool)

(assert (=> b!853271 m!794623))

(declare-fun m!794625 () Bool)

(assert (=> b!853285 m!794625))

(assert (=> b!853285 m!794617))

(declare-fun m!794627 () Bool)

(assert (=> b!853285 m!794627))

(declare-fun m!794629 () Bool)

(assert (=> bm!38269 m!794629))

(assert (=> bm!38270 m!794603))

(declare-fun m!794631 () Bool)

(assert (=> b!853272 m!794631))

(declare-fun m!794633 () Bool)

(assert (=> b!853282 m!794633))

(declare-fun m!794635 () Bool)

(assert (=> b!853275 m!794635))

(assert (=> b!853280 m!794621))

(assert (=> b!853280 m!794621))

(declare-fun m!794637 () Bool)

(assert (=> b!853280 m!794637))

(declare-fun m!794639 () Bool)

(assert (=> b!853280 m!794639))

(check-sat (not b!853280) (not b_next!14139) (not bm!38270) (not bm!38269) (not b!853281) (not b!853271) (not b!853275) (not mapNonEmpty!26012) (not b!853285) (not b!853283) (not start!73252) (not b_lambda!11701) tp_is_empty!16275 (not b!853282) (not b!853277) b_and!23457)
(check-sat b_and!23457 (not b_next!14139))
