; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73528 () Bool)

(assert start!73528)

(declare-fun b_free!14415 () Bool)

(declare-fun b_next!14415 () Bool)

(assert (=> start!73528 (= b_free!14415 (not b_next!14415))))

(declare-fun tp!50749 () Bool)

(declare-fun b_and!23827 () Bool)

(assert (=> start!73528 (= tp!50749 b_and!23827)))

(declare-fun b!858564 () Bool)

(declare-fun e!478511 () Bool)

(declare-fun e!478512 () Bool)

(assert (=> b!858564 (= e!478511 (not e!478512))))

(declare-fun res!583411 () Bool)

(assert (=> b!858564 (=> res!583411 e!478512)))

(declare-datatypes ((array!49260 0))(
  ( (array!49261 (arr!23657 (Array (_ BitVec 32) (_ BitVec 64))) (size!24098 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49260)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858564 (= res!583411 (not (validKeyInArray!0 (select (arr!23657 _keys!868) from!1053))))))

(declare-datatypes ((V!27115 0))(
  ( (V!27116 (val!8323 Int)) )
))
(declare-datatypes ((tuple2!10970 0))(
  ( (tuple2!10971 (_1!5495 (_ BitVec 64)) (_2!5495 V!27115)) )
))
(declare-datatypes ((List!16842 0))(
  ( (Nil!16839) (Cons!16838 (h!17969 tuple2!10970) (t!23531 List!16842)) )
))
(declare-datatypes ((ListLongMap!9753 0))(
  ( (ListLongMap!9754 (toList!4892 List!16842)) )
))
(declare-fun lt!386811 () ListLongMap!9753)

(declare-fun lt!386812 () ListLongMap!9753)

(assert (=> b!858564 (= lt!386811 lt!386812)))

(declare-fun v!557 () V!27115)

(declare-fun lt!386813 () ListLongMap!9753)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2196 (ListLongMap!9753 tuple2!10970) ListLongMap!9753)

(assert (=> b!858564 (= lt!386812 (+!2196 lt!386813 (tuple2!10971 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7836 0))(
  ( (ValueCellFull!7836 (v!10744 V!27115)) (EmptyCell!7836) )
))
(declare-datatypes ((array!49262 0))(
  ( (array!49263 (arr!23658 (Array (_ BitVec 32) ValueCell!7836)) (size!24099 (_ BitVec 32))) )
))
(declare-fun lt!386810 () array!49262)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27115)

(declare-fun zeroValue!654 () V!27115)

(declare-fun getCurrentListMapNoExtraKeys!2874 (array!49260 array!49262 (_ BitVec 32) (_ BitVec 32) V!27115 V!27115 (_ BitVec 32) Int) ListLongMap!9753)

(assert (=> b!858564 (= lt!386811 (getCurrentListMapNoExtraKeys!2874 _keys!868 lt!386810 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!49262)

(assert (=> b!858564 (= lt!386813 (getCurrentListMapNoExtraKeys!2874 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29236 0))(
  ( (Unit!29237) )
))
(declare-fun lt!386817 () Unit!29236)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!456 (array!49260 array!49262 (_ BitVec 32) (_ BitVec 32) V!27115 V!27115 (_ BitVec 32) (_ BitVec 64) V!27115 (_ BitVec 32) Int) Unit!29236)

(assert (=> b!858564 (= lt!386817 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!456 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26426 () Bool)

(declare-fun mapRes!26426 () Bool)

(assert (=> mapIsEmpty!26426 mapRes!26426))

(declare-fun b!858565 () Bool)

(declare-fun res!583409 () Bool)

(declare-fun e!478506 () Bool)

(assert (=> b!858565 (=> (not res!583409) (not e!478506))))

(assert (=> b!858565 (= res!583409 (validKeyInArray!0 k0!854))))

(declare-fun b!858566 () Bool)

(declare-fun e!478509 () Bool)

(assert (=> b!858566 (= e!478509 true)))

(declare-datatypes ((List!16843 0))(
  ( (Nil!16840) (Cons!16839 (h!17970 (_ BitVec 64)) (t!23532 List!16843)) )
))
(declare-fun arrayNoDuplicates!0 (array!49260 (_ BitVec 32) List!16843) Bool)

(assert (=> b!858566 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16840)))

(declare-fun lt!386815 () Unit!29236)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49260 (_ BitVec 32) (_ BitVec 32)) Unit!29236)

(assert (=> b!858566 (= lt!386815 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!858567 () Bool)

(declare-fun res!583408 () Bool)

(assert (=> b!858567 (=> (not res!583408) (not e!478506))))

(assert (=> b!858567 (= res!583408 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24098 _keys!868))))))

(declare-fun b!858569 () Bool)

(assert (=> b!858569 (= e!478506 e!478511)))

(declare-fun res!583414 () Bool)

(assert (=> b!858569 (=> (not res!583414) (not e!478511))))

(assert (=> b!858569 (= res!583414 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386814 () ListLongMap!9753)

(assert (=> b!858569 (= lt!386814 (getCurrentListMapNoExtraKeys!2874 _keys!868 lt!386810 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!858569 (= lt!386810 (array!49263 (store (arr!23658 _values!688) i!612 (ValueCellFull!7836 v!557)) (size!24099 _values!688)))))

(declare-fun lt!386816 () ListLongMap!9753)

(assert (=> b!858569 (= lt!386816 (getCurrentListMapNoExtraKeys!2874 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858570 () Bool)

(declare-fun res!583407 () Bool)

(assert (=> b!858570 (=> (not res!583407) (not e!478506))))

(assert (=> b!858570 (= res!583407 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16840))))

(declare-fun b!858571 () Bool)

(declare-fun res!583416 () Bool)

(assert (=> b!858571 (=> (not res!583416) (not e!478506))))

(assert (=> b!858571 (= res!583416 (and (= (select (arr!23657 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26426 () Bool)

(declare-fun tp!50750 () Bool)

(declare-fun e!478508 () Bool)

(assert (=> mapNonEmpty!26426 (= mapRes!26426 (and tp!50750 e!478508))))

(declare-fun mapValue!26426 () ValueCell!7836)

(declare-fun mapKey!26426 () (_ BitVec 32))

(declare-fun mapRest!26426 () (Array (_ BitVec 32) ValueCell!7836))

(assert (=> mapNonEmpty!26426 (= (arr!23658 _values!688) (store mapRest!26426 mapKey!26426 mapValue!26426))))

(declare-fun b!858572 () Bool)

(declare-fun e!478507 () Bool)

(declare-fun e!478510 () Bool)

(assert (=> b!858572 (= e!478507 (and e!478510 mapRes!26426))))

(declare-fun condMapEmpty!26426 () Bool)

(declare-fun mapDefault!26426 () ValueCell!7836)

(assert (=> b!858572 (= condMapEmpty!26426 (= (arr!23658 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7836)) mapDefault!26426)))))

(declare-fun b!858573 () Bool)

(declare-fun res!583406 () Bool)

(assert (=> b!858573 (=> (not res!583406) (not e!478506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49260 (_ BitVec 32)) Bool)

(assert (=> b!858573 (= res!583406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858574 () Bool)

(declare-fun tp_is_empty!16551 () Bool)

(assert (=> b!858574 (= e!478508 tp_is_empty!16551)))

(declare-fun b!858575 () Bool)

(declare-fun res!583415 () Bool)

(assert (=> b!858575 (=> (not res!583415) (not e!478506))))

(assert (=> b!858575 (= res!583415 (and (= (size!24099 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24098 _keys!868) (size!24099 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!583410 () Bool)

(assert (=> start!73528 (=> (not res!583410) (not e!478506))))

(assert (=> start!73528 (= res!583410 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24098 _keys!868))))))

(assert (=> start!73528 e!478506))

(assert (=> start!73528 tp_is_empty!16551))

(assert (=> start!73528 true))

(assert (=> start!73528 tp!50749))

(declare-fun array_inv!18714 (array!49260) Bool)

(assert (=> start!73528 (array_inv!18714 _keys!868)))

(declare-fun array_inv!18715 (array!49262) Bool)

(assert (=> start!73528 (and (array_inv!18715 _values!688) e!478507)))

(declare-fun b!858568 () Bool)

(assert (=> b!858568 (= e!478510 tp_is_empty!16551)))

(declare-fun b!858576 () Bool)

(assert (=> b!858576 (= e!478512 e!478509)))

(declare-fun res!583413 () Bool)

(assert (=> b!858576 (=> res!583413 e!478509)))

(assert (=> b!858576 (= res!583413 (not (= (select (arr!23657 _keys!868) from!1053) k0!854)))))

(declare-fun get!12474 (ValueCell!7836 V!27115) V!27115)

(declare-fun dynLambda!1086 (Int (_ BitVec 64)) V!27115)

(assert (=> b!858576 (= lt!386814 (+!2196 lt!386812 (tuple2!10971 (select (arr!23657 _keys!868) from!1053) (get!12474 (select (arr!23658 _values!688) from!1053) (dynLambda!1086 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858577 () Bool)

(declare-fun res!583412 () Bool)

(assert (=> b!858577 (=> (not res!583412) (not e!478506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858577 (= res!583412 (validMask!0 mask!1196))))

(assert (= (and start!73528 res!583410) b!858577))

(assert (= (and b!858577 res!583412) b!858575))

(assert (= (and b!858575 res!583415) b!858573))

(assert (= (and b!858573 res!583406) b!858570))

(assert (= (and b!858570 res!583407) b!858567))

(assert (= (and b!858567 res!583408) b!858565))

(assert (= (and b!858565 res!583409) b!858571))

(assert (= (and b!858571 res!583416) b!858569))

(assert (= (and b!858569 res!583414) b!858564))

(assert (= (and b!858564 (not res!583411)) b!858576))

(assert (= (and b!858576 (not res!583413)) b!858566))

(assert (= (and b!858572 condMapEmpty!26426) mapIsEmpty!26426))

(assert (= (and b!858572 (not condMapEmpty!26426)) mapNonEmpty!26426))

(get-info :version)

(assert (= (and mapNonEmpty!26426 ((_ is ValueCellFull!7836) mapValue!26426)) b!858574))

(assert (= (and b!858572 ((_ is ValueCellFull!7836) mapDefault!26426)) b!858568))

(assert (= start!73528 b!858572))

(declare-fun b_lambda!11797 () Bool)

(assert (=> (not b_lambda!11797) (not b!858576)))

(declare-fun t!23530 () Bool)

(declare-fun tb!4545 () Bool)

(assert (=> (and start!73528 (= defaultEntry!696 defaultEntry!696) t!23530) tb!4545))

(declare-fun result!8693 () Bool)

(assert (=> tb!4545 (= result!8693 tp_is_empty!16551)))

(assert (=> b!858576 t!23530))

(declare-fun b_and!23829 () Bool)

(assert (= b_and!23827 (and (=> t!23530 result!8693) b_and!23829)))

(declare-fun m!799391 () Bool)

(assert (=> b!858577 m!799391))

(declare-fun m!799393 () Bool)

(assert (=> b!858564 m!799393))

(declare-fun m!799395 () Bool)

(assert (=> b!858564 m!799395))

(declare-fun m!799397 () Bool)

(assert (=> b!858564 m!799397))

(assert (=> b!858564 m!799395))

(declare-fun m!799399 () Bool)

(assert (=> b!858564 m!799399))

(declare-fun m!799401 () Bool)

(assert (=> b!858564 m!799401))

(declare-fun m!799403 () Bool)

(assert (=> b!858564 m!799403))

(declare-fun m!799405 () Bool)

(assert (=> b!858566 m!799405))

(declare-fun m!799407 () Bool)

(assert (=> b!858566 m!799407))

(declare-fun m!799409 () Bool)

(assert (=> b!858569 m!799409))

(declare-fun m!799411 () Bool)

(assert (=> b!858569 m!799411))

(declare-fun m!799413 () Bool)

(assert (=> b!858569 m!799413))

(declare-fun m!799415 () Bool)

(assert (=> b!858570 m!799415))

(declare-fun m!799417 () Bool)

(assert (=> b!858565 m!799417))

(declare-fun m!799419 () Bool)

(assert (=> start!73528 m!799419))

(declare-fun m!799421 () Bool)

(assert (=> start!73528 m!799421))

(declare-fun m!799423 () Bool)

(assert (=> b!858576 m!799423))

(declare-fun m!799425 () Bool)

(assert (=> b!858576 m!799425))

(declare-fun m!799427 () Bool)

(assert (=> b!858576 m!799427))

(declare-fun m!799429 () Bool)

(assert (=> b!858576 m!799429))

(assert (=> b!858576 m!799425))

(assert (=> b!858576 m!799395))

(assert (=> b!858576 m!799427))

(declare-fun m!799431 () Bool)

(assert (=> b!858573 m!799431))

(declare-fun m!799433 () Bool)

(assert (=> mapNonEmpty!26426 m!799433))

(declare-fun m!799435 () Bool)

(assert (=> b!858571 m!799435))

(check-sat (not b!858566) (not b!858569) (not b!858573) (not b_next!14415) (not b!858570) (not b_lambda!11797) (not b!858577) (not mapNonEmpty!26426) tp_is_empty!16551 (not start!73528) (not b!858576) b_and!23829 (not b!858564) (not b!858565))
(check-sat b_and!23829 (not b_next!14415))
