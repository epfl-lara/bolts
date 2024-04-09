; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73888 () Bool)

(assert start!73888)

(declare-fun b_free!14775 () Bool)

(declare-fun b_next!14775 () Bool)

(assert (=> start!73888 (= b_free!14775 (not b_next!14775))))

(declare-fun tp!51830 () Bool)

(declare-fun b_and!24545 () Bool)

(assert (=> start!73888 (= tp!51830 b_and!24545)))

(declare-fun b!867453 () Bool)

(declare-fun res!589494 () Bool)

(declare-fun e!483223 () Bool)

(assert (=> b!867453 (=> (not res!589494) (not e!483223))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49960 0))(
  ( (array!49961 (arr!24007 (Array (_ BitVec 32) (_ BitVec 64))) (size!24448 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49960)

(declare-datatypes ((V!27595 0))(
  ( (V!27596 (val!8503 Int)) )
))
(declare-datatypes ((ValueCell!8016 0))(
  ( (ValueCellFull!8016 (v!10924 V!27595)) (EmptyCell!8016) )
))
(declare-datatypes ((array!49962 0))(
  ( (array!49963 (arr!24008 (Array (_ BitVec 32) ValueCell!8016)) (size!24449 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49962)

(assert (=> b!867453 (= res!589494 (and (= (size!24449 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24448 _keys!868) (size!24449 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867454 () Bool)

(declare-fun e!483222 () Bool)

(declare-fun e!483225 () Bool)

(declare-fun mapRes!26966 () Bool)

(assert (=> b!867454 (= e!483222 (and e!483225 mapRes!26966))))

(declare-fun condMapEmpty!26966 () Bool)

(declare-fun mapDefault!26966 () ValueCell!8016)

(assert (=> b!867454 (= condMapEmpty!26966 (= (arr!24008 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8016)) mapDefault!26966)))))

(declare-fun res!589497 () Bool)

(assert (=> start!73888 (=> (not res!589497) (not e!483223))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73888 (= res!589497 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24448 _keys!868))))))

(assert (=> start!73888 e!483223))

(declare-fun tp_is_empty!16911 () Bool)

(assert (=> start!73888 tp_is_empty!16911))

(assert (=> start!73888 true))

(assert (=> start!73888 tp!51830))

(declare-fun array_inv!18950 (array!49960) Bool)

(assert (=> start!73888 (array_inv!18950 _keys!868)))

(declare-fun array_inv!18951 (array!49962) Bool)

(assert (=> start!73888 (and (array_inv!18951 _values!688) e!483222)))

(declare-fun b!867455 () Bool)

(declare-fun e!483221 () Bool)

(assert (=> b!867455 (= e!483221 tp_is_empty!16911)))

(declare-fun b!867456 () Bool)

(declare-fun res!589490 () Bool)

(assert (=> b!867456 (=> (not res!589490) (not e!483223))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!867456 (= res!589490 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24448 _keys!868))))))

(declare-fun b!867457 () Bool)

(declare-fun e!483220 () Bool)

(assert (=> b!867457 (= e!483220 (not true))))

(declare-fun v!557 () V!27595)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27595)

(declare-fun zeroValue!654 () V!27595)

(declare-fun lt!394137 () array!49962)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((tuple2!11286 0))(
  ( (tuple2!11287 (_1!5653 (_ BitVec 64)) (_2!5653 V!27595)) )
))
(declare-datatypes ((List!17148 0))(
  ( (Nil!17145) (Cons!17144 (h!18275 tuple2!11286) (t!24193 List!17148)) )
))
(declare-datatypes ((ListLongMap!10069 0))(
  ( (ListLongMap!10070 (toList!5050 List!17148)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3014 (array!49960 array!49962 (_ BitVec 32) (_ BitVec 32) V!27595 V!27595 (_ BitVec 32) Int) ListLongMap!10069)

(declare-fun +!2344 (ListLongMap!10069 tuple2!11286) ListLongMap!10069)

(assert (=> b!867457 (= (getCurrentListMapNoExtraKeys!3014 _keys!868 lt!394137 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2344 (getCurrentListMapNoExtraKeys!3014 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11287 k0!854 v!557)))))

(declare-datatypes ((Unit!29738 0))(
  ( (Unit!29739) )
))
(declare-fun lt!394136 () Unit!29738)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!575 (array!49960 array!49962 (_ BitVec 32) (_ BitVec 32) V!27595 V!27595 (_ BitVec 32) (_ BitVec 64) V!27595 (_ BitVec 32) Int) Unit!29738)

(assert (=> b!867457 (= lt!394136 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!575 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867458 () Bool)

(declare-fun res!589493 () Bool)

(assert (=> b!867458 (=> (not res!589493) (not e!483223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867458 (= res!589493 (validKeyInArray!0 k0!854))))

(declare-fun b!867459 () Bool)

(assert (=> b!867459 (= e!483223 e!483220)))

(declare-fun res!589492 () Bool)

(assert (=> b!867459 (=> (not res!589492) (not e!483220))))

(assert (=> b!867459 (= res!589492 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394135 () ListLongMap!10069)

(assert (=> b!867459 (= lt!394135 (getCurrentListMapNoExtraKeys!3014 _keys!868 lt!394137 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!867459 (= lt!394137 (array!49963 (store (arr!24008 _values!688) i!612 (ValueCellFull!8016 v!557)) (size!24449 _values!688)))))

(declare-fun lt!394134 () ListLongMap!10069)

(assert (=> b!867459 (= lt!394134 (getCurrentListMapNoExtraKeys!3014 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!867460 () Bool)

(declare-fun res!589495 () Bool)

(assert (=> b!867460 (=> (not res!589495) (not e!483223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867460 (= res!589495 (validMask!0 mask!1196))))

(declare-fun b!867461 () Bool)

(assert (=> b!867461 (= e!483225 tp_is_empty!16911)))

(declare-fun b!867462 () Bool)

(declare-fun res!589491 () Bool)

(assert (=> b!867462 (=> (not res!589491) (not e!483223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49960 (_ BitVec 32)) Bool)

(assert (=> b!867462 (= res!589491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867463 () Bool)

(declare-fun res!589489 () Bool)

(assert (=> b!867463 (=> (not res!589489) (not e!483223))))

(assert (=> b!867463 (= res!589489 (and (= (select (arr!24007 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!867464 () Bool)

(declare-fun res!589496 () Bool)

(assert (=> b!867464 (=> (not res!589496) (not e!483223))))

(declare-datatypes ((List!17149 0))(
  ( (Nil!17146) (Cons!17145 (h!18276 (_ BitVec 64)) (t!24194 List!17149)) )
))
(declare-fun arrayNoDuplicates!0 (array!49960 (_ BitVec 32) List!17149) Bool)

(assert (=> b!867464 (= res!589496 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17146))))

(declare-fun mapIsEmpty!26966 () Bool)

(assert (=> mapIsEmpty!26966 mapRes!26966))

(declare-fun mapNonEmpty!26966 () Bool)

(declare-fun tp!51829 () Bool)

(assert (=> mapNonEmpty!26966 (= mapRes!26966 (and tp!51829 e!483221))))

(declare-fun mapKey!26966 () (_ BitVec 32))

(declare-fun mapRest!26966 () (Array (_ BitVec 32) ValueCell!8016))

(declare-fun mapValue!26966 () ValueCell!8016)

(assert (=> mapNonEmpty!26966 (= (arr!24008 _values!688) (store mapRest!26966 mapKey!26966 mapValue!26966))))

(assert (= (and start!73888 res!589497) b!867460))

(assert (= (and b!867460 res!589495) b!867453))

(assert (= (and b!867453 res!589494) b!867462))

(assert (= (and b!867462 res!589491) b!867464))

(assert (= (and b!867464 res!589496) b!867456))

(assert (= (and b!867456 res!589490) b!867458))

(assert (= (and b!867458 res!589493) b!867463))

(assert (= (and b!867463 res!589489) b!867459))

(assert (= (and b!867459 res!589492) b!867457))

(assert (= (and b!867454 condMapEmpty!26966) mapIsEmpty!26966))

(assert (= (and b!867454 (not condMapEmpty!26966)) mapNonEmpty!26966))

(get-info :version)

(assert (= (and mapNonEmpty!26966 ((_ is ValueCellFull!8016) mapValue!26966)) b!867455))

(assert (= (and b!867454 ((_ is ValueCellFull!8016) mapDefault!26966)) b!867461))

(assert (= start!73888 b!867454))

(declare-fun m!809401 () Bool)

(assert (=> b!867457 m!809401))

(declare-fun m!809403 () Bool)

(assert (=> b!867457 m!809403))

(assert (=> b!867457 m!809403))

(declare-fun m!809405 () Bool)

(assert (=> b!867457 m!809405))

(declare-fun m!809407 () Bool)

(assert (=> b!867457 m!809407))

(declare-fun m!809409 () Bool)

(assert (=> mapNonEmpty!26966 m!809409))

(declare-fun m!809411 () Bool)

(assert (=> b!867460 m!809411))

(declare-fun m!809413 () Bool)

(assert (=> start!73888 m!809413))

(declare-fun m!809415 () Bool)

(assert (=> start!73888 m!809415))

(declare-fun m!809417 () Bool)

(assert (=> b!867458 m!809417))

(declare-fun m!809419 () Bool)

(assert (=> b!867463 m!809419))

(declare-fun m!809421 () Bool)

(assert (=> b!867462 m!809421))

(declare-fun m!809423 () Bool)

(assert (=> b!867464 m!809423))

(declare-fun m!809425 () Bool)

(assert (=> b!867459 m!809425))

(declare-fun m!809427 () Bool)

(assert (=> b!867459 m!809427))

(declare-fun m!809429 () Bool)

(assert (=> b!867459 m!809429))

(check-sat (not start!73888) (not b!867462) (not b_next!14775) (not b!867460) b_and!24545 (not mapNonEmpty!26966) (not b!867458) (not b!867459) (not b!867464) (not b!867457) tp_is_empty!16911)
(check-sat b_and!24545 (not b_next!14775))
