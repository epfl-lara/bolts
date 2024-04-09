; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73216 () Bool)

(assert start!73216)

(declare-fun b_free!14103 () Bool)

(declare-fun b_next!14103 () Bool)

(assert (=> start!73216 (= b_free!14103 (not b_next!14103))))

(declare-fun tp!49814 () Bool)

(declare-fun b_and!23383 () Bool)

(assert (=> start!73216 (= tp!49814 b_and!23383)))

(declare-fun b!852425 () Bool)

(declare-fun res!579088 () Bool)

(declare-fun e!475450 () Bool)

(assert (=> b!852425 (=> (not res!579088) (not e!475450))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48664 0))(
  ( (array!48665 (arr!23359 (Array (_ BitVec 32) (_ BitVec 64))) (size!23800 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48664)

(assert (=> b!852425 (= res!579088 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23800 _keys!868))))))

(declare-datatypes ((V!26699 0))(
  ( (V!26700 (val!8167 Int)) )
))
(declare-datatypes ((ValueCell!7680 0))(
  ( (ValueCellFull!7680 (v!10588 V!26699)) (EmptyCell!7680) )
))
(declare-datatypes ((array!48666 0))(
  ( (array!48667 (arr!23360 (Array (_ BitVec 32) ValueCell!7680)) (size!23801 (_ BitVec 32))) )
))
(declare-fun lt!384133 () array!48666)

(declare-datatypes ((tuple2!10738 0))(
  ( (tuple2!10739 (_1!5379 (_ BitVec 64)) (_2!5379 V!26699)) )
))
(declare-datatypes ((List!16622 0))(
  ( (Nil!16619) (Cons!16618 (h!17749 tuple2!10738) (t!23179 List!16622)) )
))
(declare-datatypes ((ListLongMap!9521 0))(
  ( (ListLongMap!9522 (toList!4776 List!16622)) )
))
(declare-fun call!38164 () ListLongMap!9521)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26699)

(declare-fun zeroValue!654 () V!26699)

(declare-fun bm!38161 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2760 (array!48664 array!48666 (_ BitVec 32) (_ BitVec 32) V!26699 V!26699 (_ BitVec 32) Int) ListLongMap!9521)

(assert (=> bm!38161 (= call!38164 (getCurrentListMapNoExtraKeys!2760 _keys!868 lt!384133 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852426 () Bool)

(declare-fun e!475447 () Bool)

(declare-fun tp_is_empty!16239 () Bool)

(assert (=> b!852426 (= e!475447 tp_is_empty!16239)))

(declare-fun b!852427 () Bool)

(declare-fun e!475445 () Bool)

(assert (=> b!852427 (= e!475445 tp_is_empty!16239)))

(declare-fun b!852428 () Bool)

(declare-fun e!475446 () Bool)

(declare-fun e!475451 () Bool)

(assert (=> b!852428 (= e!475446 (not e!475451))))

(declare-fun res!579087 () Bool)

(assert (=> b!852428 (=> res!579087 e!475451)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852428 (= res!579087 (not (validKeyInArray!0 (select (arr!23359 _keys!868) from!1053))))))

(declare-fun e!475452 () Bool)

(assert (=> b!852428 e!475452))

(declare-fun c!91743 () Bool)

(assert (=> b!852428 (= c!91743 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26699)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun _values!688 () array!48666)

(declare-datatypes ((Unit!29080 0))(
  ( (Unit!29081) )
))
(declare-fun lt!384137 () Unit!29080)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!382 (array!48664 array!48666 (_ BitVec 32) (_ BitVec 32) V!26699 V!26699 (_ BitVec 32) (_ BitVec 64) V!26699 (_ BitVec 32) Int) Unit!29080)

(assert (=> b!852428 (= lt!384137 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!382 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852429 () Bool)

(declare-fun call!38165 () ListLongMap!9521)

(assert (=> b!852429 (= e!475452 (= call!38164 call!38165))))

(declare-fun b!852430 () Bool)

(declare-fun res!579082 () Bool)

(assert (=> b!852430 (=> (not res!579082) (not e!475450))))

(assert (=> b!852430 (= res!579082 (and (= (select (arr!23359 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!25958 () Bool)

(declare-fun mapRes!25958 () Bool)

(assert (=> mapIsEmpty!25958 mapRes!25958))

(declare-fun b!852431 () Bool)

(declare-fun res!579083 () Bool)

(assert (=> b!852431 (=> (not res!579083) (not e!475450))))

(assert (=> b!852431 (= res!579083 (and (= (size!23801 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23800 _keys!868) (size!23801 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!852432 () Bool)

(assert (=> b!852432 (= e!475451 true)))

(declare-fun lt!384129 () tuple2!10738)

(declare-fun lt!384130 () ListLongMap!9521)

(declare-fun lt!384135 () V!26699)

(declare-fun +!2116 (ListLongMap!9521 tuple2!10738) ListLongMap!9521)

(assert (=> b!852432 (= (+!2116 lt!384130 lt!384129) (+!2116 (+!2116 lt!384130 (tuple2!10739 k0!854 lt!384135)) lt!384129))))

(declare-fun lt!384136 () V!26699)

(assert (=> b!852432 (= lt!384129 (tuple2!10739 k0!854 lt!384136))))

(declare-fun lt!384134 () Unit!29080)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!298 (ListLongMap!9521 (_ BitVec 64) V!26699 V!26699) Unit!29080)

(assert (=> b!852432 (= lt!384134 (addSameAsAddTwiceSameKeyDiffValues!298 lt!384130 k0!854 lt!384135 lt!384136))))

(declare-fun lt!384132 () V!26699)

(declare-fun get!12330 (ValueCell!7680 V!26699) V!26699)

(assert (=> b!852432 (= lt!384135 (get!12330 (select (arr!23360 _values!688) from!1053) lt!384132))))

(declare-fun lt!384138 () ListLongMap!9521)

(assert (=> b!852432 (= lt!384138 (+!2116 lt!384130 (tuple2!10739 (select (arr!23359 _keys!868) from!1053) lt!384136)))))

(assert (=> b!852432 (= lt!384136 (get!12330 (select (store (arr!23360 _values!688) i!612 (ValueCellFull!7680 v!557)) from!1053) lt!384132))))

(declare-fun dynLambda!1046 (Int (_ BitVec 64)) V!26699)

(assert (=> b!852432 (= lt!384132 (dynLambda!1046 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!852432 (= lt!384130 (getCurrentListMapNoExtraKeys!2760 _keys!868 lt!384133 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852433 () Bool)

(declare-fun res!579081 () Bool)

(assert (=> b!852433 (=> (not res!579081) (not e!475450))))

(assert (=> b!852433 (= res!579081 (validKeyInArray!0 k0!854))))

(declare-fun b!852435 () Bool)

(assert (=> b!852435 (= e!475450 e!475446)))

(declare-fun res!579085 () Bool)

(assert (=> b!852435 (=> (not res!579085) (not e!475446))))

(assert (=> b!852435 (= res!579085 (= from!1053 i!612))))

(assert (=> b!852435 (= lt!384138 (getCurrentListMapNoExtraKeys!2760 _keys!868 lt!384133 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!852435 (= lt!384133 (array!48667 (store (arr!23360 _values!688) i!612 (ValueCellFull!7680 v!557)) (size!23801 _values!688)))))

(declare-fun lt!384131 () ListLongMap!9521)

(assert (=> b!852435 (= lt!384131 (getCurrentListMapNoExtraKeys!2760 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!25958 () Bool)

(declare-fun tp!49813 () Bool)

(assert (=> mapNonEmpty!25958 (= mapRes!25958 (and tp!49813 e!475447))))

(declare-fun mapRest!25958 () (Array (_ BitVec 32) ValueCell!7680))

(declare-fun mapKey!25958 () (_ BitVec 32))

(declare-fun mapValue!25958 () ValueCell!7680)

(assert (=> mapNonEmpty!25958 (= (arr!23360 _values!688) (store mapRest!25958 mapKey!25958 mapValue!25958))))

(declare-fun b!852436 () Bool)

(declare-fun e!475448 () Bool)

(assert (=> b!852436 (= e!475448 (and e!475445 mapRes!25958))))

(declare-fun condMapEmpty!25958 () Bool)

(declare-fun mapDefault!25958 () ValueCell!7680)

(assert (=> b!852436 (= condMapEmpty!25958 (= (arr!23360 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7680)) mapDefault!25958)))))

(declare-fun b!852437 () Bool)

(declare-fun res!579086 () Bool)

(assert (=> b!852437 (=> (not res!579086) (not e!475450))))

(declare-datatypes ((List!16623 0))(
  ( (Nil!16620) (Cons!16619 (h!17750 (_ BitVec 64)) (t!23180 List!16623)) )
))
(declare-fun arrayNoDuplicates!0 (array!48664 (_ BitVec 32) List!16623) Bool)

(assert (=> b!852437 (= res!579086 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16620))))

(declare-fun b!852438 () Bool)

(declare-fun res!579090 () Bool)

(assert (=> b!852438 (=> (not res!579090) (not e!475450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48664 (_ BitVec 32)) Bool)

(assert (=> b!852438 (= res!579090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!852434 () Bool)

(declare-fun res!579089 () Bool)

(assert (=> b!852434 (=> (not res!579089) (not e!475450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852434 (= res!579089 (validMask!0 mask!1196))))

(declare-fun res!579084 () Bool)

(assert (=> start!73216 (=> (not res!579084) (not e!475450))))

(assert (=> start!73216 (= res!579084 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23800 _keys!868))))))

(assert (=> start!73216 e!475450))

(assert (=> start!73216 tp_is_empty!16239))

(assert (=> start!73216 true))

(assert (=> start!73216 tp!49814))

(declare-fun array_inv!18514 (array!48664) Bool)

(assert (=> start!73216 (array_inv!18514 _keys!868)))

(declare-fun array_inv!18515 (array!48666) Bool)

(assert (=> start!73216 (and (array_inv!18515 _values!688) e!475448)))

(declare-fun b!852439 () Bool)

(assert (=> b!852439 (= e!475452 (= call!38164 (+!2116 call!38165 (tuple2!10739 k0!854 v!557))))))

(declare-fun bm!38162 () Bool)

(assert (=> bm!38162 (= call!38165 (getCurrentListMapNoExtraKeys!2760 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73216 res!579084) b!852434))

(assert (= (and b!852434 res!579089) b!852431))

(assert (= (and b!852431 res!579083) b!852438))

(assert (= (and b!852438 res!579090) b!852437))

(assert (= (and b!852437 res!579086) b!852425))

(assert (= (and b!852425 res!579088) b!852433))

(assert (= (and b!852433 res!579081) b!852430))

(assert (= (and b!852430 res!579082) b!852435))

(assert (= (and b!852435 res!579085) b!852428))

(assert (= (and b!852428 c!91743) b!852439))

(assert (= (and b!852428 (not c!91743)) b!852429))

(assert (= (or b!852439 b!852429) bm!38161))

(assert (= (or b!852439 b!852429) bm!38162))

(assert (= (and b!852428 (not res!579087)) b!852432))

(assert (= (and b!852436 condMapEmpty!25958) mapIsEmpty!25958))

(assert (= (and b!852436 (not condMapEmpty!25958)) mapNonEmpty!25958))

(get-info :version)

(assert (= (and mapNonEmpty!25958 ((_ is ValueCellFull!7680) mapValue!25958)) b!852426))

(assert (= (and b!852436 ((_ is ValueCellFull!7680) mapDefault!25958)) b!852427))

(assert (= start!73216 b!852436))

(declare-fun b_lambda!11665 () Bool)

(assert (=> (not b_lambda!11665) (not b!852432)))

(declare-fun t!23178 () Bool)

(declare-fun tb!4413 () Bool)

(assert (=> (and start!73216 (= defaultEntry!696 defaultEntry!696) t!23178) tb!4413))

(declare-fun result!8429 () Bool)

(assert (=> tb!4413 (= result!8429 tp_is_empty!16239)))

(assert (=> b!852432 t!23178))

(declare-fun b_and!23385 () Bool)

(assert (= b_and!23383 (and (=> t!23178 result!8429) b_and!23385)))

(declare-fun m!793613 () Bool)

(assert (=> b!852437 m!793613))

(declare-fun m!793615 () Bool)

(assert (=> bm!38161 m!793615))

(declare-fun m!793617 () Bool)

(assert (=> b!852432 m!793617))

(declare-fun m!793619 () Bool)

(assert (=> b!852432 m!793619))

(declare-fun m!793621 () Bool)

(assert (=> b!852432 m!793621))

(declare-fun m!793623 () Bool)

(assert (=> b!852432 m!793623))

(declare-fun m!793625 () Bool)

(assert (=> b!852432 m!793625))

(assert (=> b!852432 m!793617))

(declare-fun m!793627 () Bool)

(assert (=> b!852432 m!793627))

(assert (=> b!852432 m!793619))

(declare-fun m!793629 () Bool)

(assert (=> b!852432 m!793629))

(declare-fun m!793631 () Bool)

(assert (=> b!852432 m!793631))

(assert (=> b!852432 m!793623))

(declare-fun m!793633 () Bool)

(assert (=> b!852432 m!793633))

(declare-fun m!793635 () Bool)

(assert (=> b!852432 m!793635))

(declare-fun m!793637 () Bool)

(assert (=> b!852432 m!793637))

(assert (=> b!852432 m!793615))

(declare-fun m!793639 () Bool)

(assert (=> b!852432 m!793639))

(declare-fun m!793641 () Bool)

(assert (=> start!73216 m!793641))

(declare-fun m!793643 () Bool)

(assert (=> start!73216 m!793643))

(declare-fun m!793645 () Bool)

(assert (=> b!852438 m!793645))

(declare-fun m!793647 () Bool)

(assert (=> b!852435 m!793647))

(assert (=> b!852435 m!793639))

(declare-fun m!793649 () Bool)

(assert (=> b!852435 m!793649))

(declare-fun m!793651 () Bool)

(assert (=> b!852439 m!793651))

(declare-fun m!793653 () Bool)

(assert (=> bm!38162 m!793653))

(declare-fun m!793655 () Bool)

(assert (=> b!852433 m!793655))

(declare-fun m!793657 () Bool)

(assert (=> b!852434 m!793657))

(declare-fun m!793659 () Bool)

(assert (=> b!852430 m!793659))

(declare-fun m!793661 () Bool)

(assert (=> mapNonEmpty!25958 m!793661))

(assert (=> b!852428 m!793635))

(assert (=> b!852428 m!793635))

(declare-fun m!793663 () Bool)

(assert (=> b!852428 m!793663))

(declare-fun m!793665 () Bool)

(assert (=> b!852428 m!793665))

(check-sat (not bm!38162) (not b!852434) (not b!852439) (not mapNonEmpty!25958) (not b_lambda!11665) (not bm!38161) (not b!852438) (not b!852435) (not b!852433) (not b!852437) (not b!852428) (not b_next!14103) (not start!73216) (not b!852432) tp_is_empty!16239 b_and!23385)
(check-sat b_and!23385 (not b_next!14103))
