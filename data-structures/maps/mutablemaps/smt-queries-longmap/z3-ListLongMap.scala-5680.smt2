; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73894 () Bool)

(assert start!73894)

(declare-fun b_free!14781 () Bool)

(declare-fun b_next!14781 () Bool)

(assert (=> start!73894 (= b_free!14781 (not b_next!14781))))

(declare-fun tp!51848 () Bool)

(declare-fun b_and!24551 () Bool)

(assert (=> start!73894 (= tp!51848 b_and!24551)))

(declare-fun b!867561 () Bool)

(declare-fun e!483274 () Bool)

(declare-fun tp_is_empty!16917 () Bool)

(assert (=> b!867561 (= e!483274 tp_is_empty!16917)))

(declare-fun mapIsEmpty!26975 () Bool)

(declare-fun mapRes!26975 () Bool)

(assert (=> mapIsEmpty!26975 mapRes!26975))

(declare-fun b!867562 () Bool)

(declare-fun res!589571 () Bool)

(declare-fun e!483276 () Bool)

(assert (=> b!867562 (=> (not res!589571) (not e!483276))))

(declare-datatypes ((array!49972 0))(
  ( (array!49973 (arr!24013 (Array (_ BitVec 32) (_ BitVec 64))) (size!24454 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49972)

(declare-datatypes ((List!17152 0))(
  ( (Nil!17149) (Cons!17148 (h!18279 (_ BitVec 64)) (t!24197 List!17152)) )
))
(declare-fun arrayNoDuplicates!0 (array!49972 (_ BitVec 32) List!17152) Bool)

(assert (=> b!867562 (= res!589571 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17149))))

(declare-fun mapNonEmpty!26975 () Bool)

(declare-fun tp!51847 () Bool)

(assert (=> mapNonEmpty!26975 (= mapRes!26975 (and tp!51847 e!483274))))

(declare-fun mapKey!26975 () (_ BitVec 32))

(declare-datatypes ((V!27603 0))(
  ( (V!27604 (val!8506 Int)) )
))
(declare-datatypes ((ValueCell!8019 0))(
  ( (ValueCellFull!8019 (v!10927 V!27603)) (EmptyCell!8019) )
))
(declare-fun mapValue!26975 () ValueCell!8019)

(declare-fun mapRest!26975 () (Array (_ BitVec 32) ValueCell!8019))

(declare-datatypes ((array!49974 0))(
  ( (array!49975 (arr!24014 (Array (_ BitVec 32) ValueCell!8019)) (size!24455 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49974)

(assert (=> mapNonEmpty!26975 (= (arr!24014 _values!688) (store mapRest!26975 mapKey!26975 mapValue!26975))))

(declare-fun b!867563 () Bool)

(declare-fun res!589577 () Bool)

(assert (=> b!867563 (=> (not res!589577) (not e!483276))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!867563 (= res!589577 (and (= (select (arr!24013 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!589576 () Bool)

(assert (=> start!73894 (=> (not res!589576) (not e!483276))))

(assert (=> start!73894 (= res!589576 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24454 _keys!868))))))

(assert (=> start!73894 e!483276))

(assert (=> start!73894 tp_is_empty!16917))

(assert (=> start!73894 true))

(assert (=> start!73894 tp!51848))

(declare-fun array_inv!18954 (array!49972) Bool)

(assert (=> start!73894 (array_inv!18954 _keys!868)))

(declare-fun e!483278 () Bool)

(declare-fun array_inv!18955 (array!49974) Bool)

(assert (=> start!73894 (and (array_inv!18955 _values!688) e!483278)))

(declare-fun b!867564 () Bool)

(declare-fun res!589575 () Bool)

(assert (=> b!867564 (=> (not res!589575) (not e!483276))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49972 (_ BitVec 32)) Bool)

(assert (=> b!867564 (= res!589575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867565 () Bool)

(declare-fun res!589572 () Bool)

(assert (=> b!867565 (=> (not res!589572) (not e!483276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867565 (= res!589572 (validMask!0 mask!1196))))

(declare-fun b!867566 () Bool)

(declare-fun res!589573 () Bool)

(assert (=> b!867566 (=> (not res!589573) (not e!483276))))

(assert (=> b!867566 (= res!589573 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24454 _keys!868))))))

(declare-fun b!867567 () Bool)

(declare-fun res!589570 () Bool)

(assert (=> b!867567 (=> (not res!589570) (not e!483276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867567 (= res!589570 (validKeyInArray!0 k0!854))))

(declare-fun b!867568 () Bool)

(declare-fun e!483277 () Bool)

(assert (=> b!867568 (= e!483277 (not true))))

(declare-fun v!557 () V!27603)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27603)

(declare-fun zeroValue!654 () V!27603)

(declare-fun lt!394170 () array!49974)

(declare-datatypes ((tuple2!11292 0))(
  ( (tuple2!11293 (_1!5656 (_ BitVec 64)) (_2!5656 V!27603)) )
))
(declare-datatypes ((List!17153 0))(
  ( (Nil!17150) (Cons!17149 (h!18280 tuple2!11292) (t!24198 List!17153)) )
))
(declare-datatypes ((ListLongMap!10075 0))(
  ( (ListLongMap!10076 (toList!5053 List!17153)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3017 (array!49972 array!49974 (_ BitVec 32) (_ BitVec 32) V!27603 V!27603 (_ BitVec 32) Int) ListLongMap!10075)

(declare-fun +!2346 (ListLongMap!10075 tuple2!11292) ListLongMap!10075)

(assert (=> b!867568 (= (getCurrentListMapNoExtraKeys!3017 _keys!868 lt!394170 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2346 (getCurrentListMapNoExtraKeys!3017 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11293 k0!854 v!557)))))

(declare-datatypes ((Unit!29742 0))(
  ( (Unit!29743) )
))
(declare-fun lt!394173 () Unit!29742)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!577 (array!49972 array!49974 (_ BitVec 32) (_ BitVec 32) V!27603 V!27603 (_ BitVec 32) (_ BitVec 64) V!27603 (_ BitVec 32) Int) Unit!29742)

(assert (=> b!867568 (= lt!394173 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!577 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867569 () Bool)

(assert (=> b!867569 (= e!483276 e!483277)))

(declare-fun res!589574 () Bool)

(assert (=> b!867569 (=> (not res!589574) (not e!483277))))

(assert (=> b!867569 (= res!589574 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394172 () ListLongMap!10075)

(assert (=> b!867569 (= lt!394172 (getCurrentListMapNoExtraKeys!3017 _keys!868 lt!394170 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!867569 (= lt!394170 (array!49975 (store (arr!24014 _values!688) i!612 (ValueCellFull!8019 v!557)) (size!24455 _values!688)))))

(declare-fun lt!394171 () ListLongMap!10075)

(assert (=> b!867569 (= lt!394171 (getCurrentListMapNoExtraKeys!3017 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!867570 () Bool)

(declare-fun e!483279 () Bool)

(assert (=> b!867570 (= e!483278 (and e!483279 mapRes!26975))))

(declare-fun condMapEmpty!26975 () Bool)

(declare-fun mapDefault!26975 () ValueCell!8019)

(assert (=> b!867570 (= condMapEmpty!26975 (= (arr!24014 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8019)) mapDefault!26975)))))

(declare-fun b!867571 () Bool)

(declare-fun res!589578 () Bool)

(assert (=> b!867571 (=> (not res!589578) (not e!483276))))

(assert (=> b!867571 (= res!589578 (and (= (size!24455 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24454 _keys!868) (size!24455 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867572 () Bool)

(assert (=> b!867572 (= e!483279 tp_is_empty!16917)))

(assert (= (and start!73894 res!589576) b!867565))

(assert (= (and b!867565 res!589572) b!867571))

(assert (= (and b!867571 res!589578) b!867564))

(assert (= (and b!867564 res!589575) b!867562))

(assert (= (and b!867562 res!589571) b!867566))

(assert (= (and b!867566 res!589573) b!867567))

(assert (= (and b!867567 res!589570) b!867563))

(assert (= (and b!867563 res!589577) b!867569))

(assert (= (and b!867569 res!589574) b!867568))

(assert (= (and b!867570 condMapEmpty!26975) mapIsEmpty!26975))

(assert (= (and b!867570 (not condMapEmpty!26975)) mapNonEmpty!26975))

(get-info :version)

(assert (= (and mapNonEmpty!26975 ((_ is ValueCellFull!8019) mapValue!26975)) b!867561))

(assert (= (and b!867570 ((_ is ValueCellFull!8019) mapDefault!26975)) b!867572))

(assert (= start!73894 b!867570))

(declare-fun m!809491 () Bool)

(assert (=> mapNonEmpty!26975 m!809491))

(declare-fun m!809493 () Bool)

(assert (=> b!867567 m!809493))

(declare-fun m!809495 () Bool)

(assert (=> start!73894 m!809495))

(declare-fun m!809497 () Bool)

(assert (=> start!73894 m!809497))

(declare-fun m!809499 () Bool)

(assert (=> b!867562 m!809499))

(declare-fun m!809501 () Bool)

(assert (=> b!867563 m!809501))

(declare-fun m!809503 () Bool)

(assert (=> b!867564 m!809503))

(declare-fun m!809505 () Bool)

(assert (=> b!867568 m!809505))

(declare-fun m!809507 () Bool)

(assert (=> b!867568 m!809507))

(assert (=> b!867568 m!809507))

(declare-fun m!809509 () Bool)

(assert (=> b!867568 m!809509))

(declare-fun m!809511 () Bool)

(assert (=> b!867568 m!809511))

(declare-fun m!809513 () Bool)

(assert (=> b!867569 m!809513))

(declare-fun m!809515 () Bool)

(assert (=> b!867569 m!809515))

(declare-fun m!809517 () Bool)

(assert (=> b!867569 m!809517))

(declare-fun m!809519 () Bool)

(assert (=> b!867565 m!809519))

(check-sat (not b_next!14781) (not b!867568) (not mapNonEmpty!26975) (not start!73894) (not b!867562) (not b!867567) b_and!24551 (not b!867569) tp_is_empty!16917 (not b!867564) (not b!867565))
(check-sat b_and!24551 (not b_next!14781))
