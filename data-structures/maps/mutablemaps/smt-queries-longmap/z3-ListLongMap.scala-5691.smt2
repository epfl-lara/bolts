; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73960 () Bool)

(assert start!73960)

(declare-fun b_free!14847 () Bool)

(declare-fun b_next!14847 () Bool)

(assert (=> start!73960 (= b_free!14847 (not b_next!14847))))

(declare-fun tp!52046 () Bool)

(declare-fun b_and!24617 () Bool)

(assert (=> start!73960 (= tp!52046 b_and!24617)))

(declare-fun res!590467 () Bool)

(declare-fun e!483872 () Bool)

(assert (=> start!73960 (=> (not res!590467) (not e!483872))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50100 0))(
  ( (array!50101 (arr!24077 (Array (_ BitVec 32) (_ BitVec 64))) (size!24518 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50100)

(assert (=> start!73960 (= res!590467 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24518 _keys!868))))))

(assert (=> start!73960 e!483872))

(declare-fun tp_is_empty!16983 () Bool)

(assert (=> start!73960 tp_is_empty!16983))

(assert (=> start!73960 true))

(assert (=> start!73960 tp!52046))

(declare-fun array_inv!18994 (array!50100) Bool)

(assert (=> start!73960 (array_inv!18994 _keys!868)))

(declare-datatypes ((V!27691 0))(
  ( (V!27692 (val!8539 Int)) )
))
(declare-datatypes ((ValueCell!8052 0))(
  ( (ValueCellFull!8052 (v!10960 V!27691)) (EmptyCell!8052) )
))
(declare-datatypes ((array!50102 0))(
  ( (array!50103 (arr!24078 (Array (_ BitVec 32) ValueCell!8052)) (size!24519 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50102)

(declare-fun e!483870 () Bool)

(declare-fun array_inv!18995 (array!50102) Bool)

(assert (=> start!73960 (and (array_inv!18995 _values!688) e!483870)))

(declare-fun b!868749 () Bool)

(declare-fun e!483868 () Bool)

(assert (=> b!868749 (= e!483868 (not true))))

(declare-fun v!557 () V!27691)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!394566 () array!50102)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!27691)

(declare-fun zeroValue!654 () V!27691)

(declare-datatypes ((tuple2!11338 0))(
  ( (tuple2!11339 (_1!5679 (_ BitVec 64)) (_2!5679 V!27691)) )
))
(declare-datatypes ((List!17196 0))(
  ( (Nil!17193) (Cons!17192 (h!18323 tuple2!11338) (t!24241 List!17196)) )
))
(declare-datatypes ((ListLongMap!10121 0))(
  ( (ListLongMap!10122 (toList!5076 List!17196)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3040 (array!50100 array!50102 (_ BitVec 32) (_ BitVec 32) V!27691 V!27691 (_ BitVec 32) Int) ListLongMap!10121)

(declare-fun +!2364 (ListLongMap!10121 tuple2!11338) ListLongMap!10121)

(assert (=> b!868749 (= (getCurrentListMapNoExtraKeys!3040 _keys!868 lt!394566 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2364 (getCurrentListMapNoExtraKeys!3040 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11339 k0!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29778 0))(
  ( (Unit!29779) )
))
(declare-fun lt!394568 () Unit!29778)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!595 (array!50100 array!50102 (_ BitVec 32) (_ BitVec 32) V!27691 V!27691 (_ BitVec 32) (_ BitVec 64) V!27691 (_ BitVec 32) Int) Unit!29778)

(assert (=> b!868749 (= lt!394568 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!595 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27074 () Bool)

(declare-fun mapRes!27074 () Bool)

(assert (=> mapIsEmpty!27074 mapRes!27074))

(declare-fun b!868750 () Bool)

(declare-fun res!590468 () Bool)

(assert (=> b!868750 (=> (not res!590468) (not e!483872))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868750 (= res!590468 (validKeyInArray!0 k0!854))))

(declare-fun b!868751 () Bool)

(assert (=> b!868751 (= e!483872 e!483868)))

(declare-fun res!590462 () Bool)

(assert (=> b!868751 (=> (not res!590462) (not e!483868))))

(assert (=> b!868751 (= res!590462 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394567 () ListLongMap!10121)

(assert (=> b!868751 (= lt!394567 (getCurrentListMapNoExtraKeys!3040 _keys!868 lt!394566 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!868751 (= lt!394566 (array!50103 (store (arr!24078 _values!688) i!612 (ValueCellFull!8052 v!557)) (size!24519 _values!688)))))

(declare-fun lt!394569 () ListLongMap!10121)

(assert (=> b!868751 (= lt!394569 (getCurrentListMapNoExtraKeys!3040 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868752 () Bool)

(declare-fun res!590465 () Bool)

(assert (=> b!868752 (=> (not res!590465) (not e!483872))))

(assert (=> b!868752 (= res!590465 (and (= (size!24519 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24518 _keys!868) (size!24519 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!868753 () Bool)

(declare-fun e!483871 () Bool)

(assert (=> b!868753 (= e!483870 (and e!483871 mapRes!27074))))

(declare-fun condMapEmpty!27074 () Bool)

(declare-fun mapDefault!27074 () ValueCell!8052)

(assert (=> b!868753 (= condMapEmpty!27074 (= (arr!24078 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8052)) mapDefault!27074)))))

(declare-fun b!868754 () Bool)

(declare-fun res!590464 () Bool)

(assert (=> b!868754 (=> (not res!590464) (not e!483872))))

(declare-datatypes ((List!17197 0))(
  ( (Nil!17194) (Cons!17193 (h!18324 (_ BitVec 64)) (t!24242 List!17197)) )
))
(declare-fun arrayNoDuplicates!0 (array!50100 (_ BitVec 32) List!17197) Bool)

(assert (=> b!868754 (= res!590464 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17194))))

(declare-fun b!868755 () Bool)

(declare-fun res!590463 () Bool)

(assert (=> b!868755 (=> (not res!590463) (not e!483872))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50100 (_ BitVec 32)) Bool)

(assert (=> b!868755 (= res!590463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868756 () Bool)

(declare-fun res!590469 () Bool)

(assert (=> b!868756 (=> (not res!590469) (not e!483872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868756 (= res!590469 (validMask!0 mask!1196))))

(declare-fun b!868757 () Bool)

(assert (=> b!868757 (= e!483871 tp_is_empty!16983)))

(declare-fun b!868758 () Bool)

(declare-fun e!483873 () Bool)

(assert (=> b!868758 (= e!483873 tp_is_empty!16983)))

(declare-fun mapNonEmpty!27074 () Bool)

(declare-fun tp!52045 () Bool)

(assert (=> mapNonEmpty!27074 (= mapRes!27074 (and tp!52045 e!483873))))

(declare-fun mapValue!27074 () ValueCell!8052)

(declare-fun mapRest!27074 () (Array (_ BitVec 32) ValueCell!8052))

(declare-fun mapKey!27074 () (_ BitVec 32))

(assert (=> mapNonEmpty!27074 (= (arr!24078 _values!688) (store mapRest!27074 mapKey!27074 mapValue!27074))))

(declare-fun b!868759 () Bool)

(declare-fun res!590461 () Bool)

(assert (=> b!868759 (=> (not res!590461) (not e!483872))))

(assert (=> b!868759 (= res!590461 (and (= (select (arr!24077 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!868760 () Bool)

(declare-fun res!590466 () Bool)

(assert (=> b!868760 (=> (not res!590466) (not e!483872))))

(assert (=> b!868760 (= res!590466 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24518 _keys!868))))))

(assert (= (and start!73960 res!590467) b!868756))

(assert (= (and b!868756 res!590469) b!868752))

(assert (= (and b!868752 res!590465) b!868755))

(assert (= (and b!868755 res!590463) b!868754))

(assert (= (and b!868754 res!590464) b!868760))

(assert (= (and b!868760 res!590466) b!868750))

(assert (= (and b!868750 res!590468) b!868759))

(assert (= (and b!868759 res!590461) b!868751))

(assert (= (and b!868751 res!590462) b!868749))

(assert (= (and b!868753 condMapEmpty!27074) mapIsEmpty!27074))

(assert (= (and b!868753 (not condMapEmpty!27074)) mapNonEmpty!27074))

(get-info :version)

(assert (= (and mapNonEmpty!27074 ((_ is ValueCellFull!8052) mapValue!27074)) b!868758))

(assert (= (and b!868753 ((_ is ValueCellFull!8052) mapDefault!27074)) b!868757))

(assert (= start!73960 b!868753))

(declare-fun m!810481 () Bool)

(assert (=> mapNonEmpty!27074 m!810481))

(declare-fun m!810483 () Bool)

(assert (=> b!868756 m!810483))

(declare-fun m!810485 () Bool)

(assert (=> b!868754 m!810485))

(declare-fun m!810487 () Bool)

(assert (=> b!868759 m!810487))

(declare-fun m!810489 () Bool)

(assert (=> start!73960 m!810489))

(declare-fun m!810491 () Bool)

(assert (=> start!73960 m!810491))

(declare-fun m!810493 () Bool)

(assert (=> b!868749 m!810493))

(declare-fun m!810495 () Bool)

(assert (=> b!868749 m!810495))

(assert (=> b!868749 m!810495))

(declare-fun m!810497 () Bool)

(assert (=> b!868749 m!810497))

(declare-fun m!810499 () Bool)

(assert (=> b!868749 m!810499))

(declare-fun m!810501 () Bool)

(assert (=> b!868750 m!810501))

(declare-fun m!810503 () Bool)

(assert (=> b!868751 m!810503))

(declare-fun m!810505 () Bool)

(assert (=> b!868751 m!810505))

(declare-fun m!810507 () Bool)

(assert (=> b!868751 m!810507))

(declare-fun m!810509 () Bool)

(assert (=> b!868755 m!810509))

(check-sat (not b!868754) (not b!868750) tp_is_empty!16983 (not b_next!14847) (not b!868755) (not mapNonEmpty!27074) (not b!868756) (not b!868749) b_and!24617 (not b!868751) (not start!73960))
(check-sat b_and!24617 (not b_next!14847))
