; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74606 () Bool)

(assert start!74606)

(declare-fun b_free!15267 () Bool)

(declare-fun b_next!15267 () Bool)

(assert (=> start!74606 (= b_free!15267 (not b_next!15267))))

(declare-fun tp!53483 () Bool)

(declare-fun b_and!25161 () Bool)

(assert (=> start!74606 (= tp!53483 b_and!25161)))

(declare-fun b!878596 () Bool)

(declare-fun res!597023 () Bool)

(declare-fun e!488991 () Bool)

(assert (=> b!878596 (=> (not res!597023) (not e!488991))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51128 0))(
  ( (array!51129 (arr!24586 (Array (_ BitVec 32) (_ BitVec 64))) (size!25027 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51128)

(declare-datatypes ((V!28395 0))(
  ( (V!28396 (val!8803 Int)) )
))
(declare-datatypes ((ValueCell!8316 0))(
  ( (ValueCellFull!8316 (v!11239 V!28395)) (EmptyCell!8316) )
))
(declare-datatypes ((array!51130 0))(
  ( (array!51131 (arr!24587 (Array (_ BitVec 32) ValueCell!8316)) (size!25028 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51130)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!878596 (= res!597023 (and (= (size!25028 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25027 _keys!868) (size!25028 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878597 () Bool)

(declare-fun res!597026 () Bool)

(assert (=> b!878597 (=> (not res!597026) (not e!488991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51128 (_ BitVec 32)) Bool)

(assert (=> b!878597 (= res!597026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878598 () Bool)

(declare-fun res!597019 () Bool)

(assert (=> b!878598 (=> (not res!597019) (not e!488991))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878598 (= res!597019 (and (= (select (arr!24586 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!878599 () Bool)

(declare-fun res!597020 () Bool)

(assert (=> b!878599 (=> (not res!597020) (not e!488991))))

(declare-datatypes ((List!17538 0))(
  ( (Nil!17535) (Cons!17534 (h!18665 (_ BitVec 64)) (t!24635 List!17538)) )
))
(declare-fun arrayNoDuplicates!0 (array!51128 (_ BitVec 32) List!17538) Bool)

(assert (=> b!878599 (= res!597020 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17535))))

(declare-fun b!878600 () Bool)

(declare-fun e!488989 () Bool)

(declare-fun e!488990 () Bool)

(declare-fun mapRes!27882 () Bool)

(assert (=> b!878600 (= e!488989 (and e!488990 mapRes!27882))))

(declare-fun condMapEmpty!27882 () Bool)

(declare-fun mapDefault!27882 () ValueCell!8316)

(assert (=> b!878600 (= condMapEmpty!27882 (= (arr!24587 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8316)) mapDefault!27882)))))

(declare-fun b!878601 () Bool)

(declare-fun e!488994 () Bool)

(assert (=> b!878601 (= e!488991 e!488994)))

(declare-fun res!597024 () Bool)

(assert (=> b!878601 (=> (not res!597024) (not e!488994))))

(assert (=> b!878601 (= res!597024 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11658 0))(
  ( (tuple2!11659 (_1!5839 (_ BitVec 64)) (_2!5839 V!28395)) )
))
(declare-datatypes ((List!17539 0))(
  ( (Nil!17536) (Cons!17535 (h!18666 tuple2!11658) (t!24636 List!17539)) )
))
(declare-datatypes ((ListLongMap!10441 0))(
  ( (ListLongMap!10442 (toList!5236 List!17539)) )
))
(declare-fun lt!397265 () ListLongMap!10441)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28395)

(declare-fun zeroValue!654 () V!28395)

(declare-fun lt!397266 () array!51130)

(declare-fun getCurrentListMapNoExtraKeys!3198 (array!51128 array!51130 (_ BitVec 32) (_ BitVec 32) V!28395 V!28395 (_ BitVec 32) Int) ListLongMap!10441)

(assert (=> b!878601 (= lt!397265 (getCurrentListMapNoExtraKeys!3198 _keys!868 lt!397266 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28395)

(assert (=> b!878601 (= lt!397266 (array!51131 (store (arr!24587 _values!688) i!612 (ValueCellFull!8316 v!557)) (size!25028 _values!688)))))

(declare-fun lt!397267 () ListLongMap!10441)

(assert (=> b!878601 (= lt!397267 (getCurrentListMapNoExtraKeys!3198 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878602 () Bool)

(declare-fun res!597021 () Bool)

(assert (=> b!878602 (=> (not res!597021) (not e!488991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878602 (= res!597021 (validMask!0 mask!1196))))

(declare-fun b!878603 () Bool)

(declare-fun tp_is_empty!17511 () Bool)

(assert (=> b!878603 (= e!488990 tp_is_empty!17511)))

(declare-fun mapNonEmpty!27882 () Bool)

(declare-fun tp!53484 () Bool)

(declare-fun e!488993 () Bool)

(assert (=> mapNonEmpty!27882 (= mapRes!27882 (and tp!53484 e!488993))))

(declare-fun mapValue!27882 () ValueCell!8316)

(declare-fun mapKey!27882 () (_ BitVec 32))

(declare-fun mapRest!27882 () (Array (_ BitVec 32) ValueCell!8316))

(assert (=> mapNonEmpty!27882 (= (arr!24587 _values!688) (store mapRest!27882 mapKey!27882 mapValue!27882))))

(declare-fun res!597025 () Bool)

(assert (=> start!74606 (=> (not res!597025) (not e!488991))))

(assert (=> start!74606 (= res!597025 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25027 _keys!868))))))

(assert (=> start!74606 e!488991))

(assert (=> start!74606 tp_is_empty!17511))

(assert (=> start!74606 true))

(assert (=> start!74606 tp!53483))

(declare-fun array_inv!19352 (array!51128) Bool)

(assert (=> start!74606 (array_inv!19352 _keys!868)))

(declare-fun array_inv!19353 (array!51130) Bool)

(assert (=> start!74606 (and (array_inv!19353 _values!688) e!488989)))

(declare-fun mapIsEmpty!27882 () Bool)

(assert (=> mapIsEmpty!27882 mapRes!27882))

(declare-fun b!878604 () Bool)

(assert (=> b!878604 (= e!488994 (not (bvslt from!1053 (size!25027 _keys!868))))))

(declare-fun +!2443 (ListLongMap!10441 tuple2!11658) ListLongMap!10441)

(assert (=> b!878604 (= (getCurrentListMapNoExtraKeys!3198 _keys!868 lt!397266 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2443 (getCurrentListMapNoExtraKeys!3198 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11659 k0!854 v!557)))))

(declare-datatypes ((Unit!29966 0))(
  ( (Unit!29967) )
))
(declare-fun lt!397268 () Unit!29966)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!675 (array!51128 array!51130 (_ BitVec 32) (_ BitVec 32) V!28395 V!28395 (_ BitVec 32) (_ BitVec 64) V!28395 (_ BitVec 32) Int) Unit!29966)

(assert (=> b!878604 (= lt!397268 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!675 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!878605 () Bool)

(declare-fun res!597027 () Bool)

(assert (=> b!878605 (=> (not res!597027) (not e!488991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878605 (= res!597027 (validKeyInArray!0 k0!854))))

(declare-fun b!878606 () Bool)

(assert (=> b!878606 (= e!488993 tp_is_empty!17511)))

(declare-fun b!878607 () Bool)

(declare-fun res!597022 () Bool)

(assert (=> b!878607 (=> (not res!597022) (not e!488991))))

(assert (=> b!878607 (= res!597022 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25027 _keys!868))))))

(assert (= (and start!74606 res!597025) b!878602))

(assert (= (and b!878602 res!597021) b!878596))

(assert (= (and b!878596 res!597023) b!878597))

(assert (= (and b!878597 res!597026) b!878599))

(assert (= (and b!878599 res!597020) b!878607))

(assert (= (and b!878607 res!597022) b!878605))

(assert (= (and b!878605 res!597027) b!878598))

(assert (= (and b!878598 res!597019) b!878601))

(assert (= (and b!878601 res!597024) b!878604))

(assert (= (and b!878600 condMapEmpty!27882) mapIsEmpty!27882))

(assert (= (and b!878600 (not condMapEmpty!27882)) mapNonEmpty!27882))

(get-info :version)

(assert (= (and mapNonEmpty!27882 ((_ is ValueCellFull!8316) mapValue!27882)) b!878606))

(assert (= (and b!878600 ((_ is ValueCellFull!8316) mapDefault!27882)) b!878603))

(assert (= start!74606 b!878600))

(declare-fun m!818475 () Bool)

(assert (=> mapNonEmpty!27882 m!818475))

(declare-fun m!818477 () Bool)

(assert (=> b!878602 m!818477))

(declare-fun m!818479 () Bool)

(assert (=> b!878599 m!818479))

(declare-fun m!818481 () Bool)

(assert (=> b!878605 m!818481))

(declare-fun m!818483 () Bool)

(assert (=> b!878597 m!818483))

(declare-fun m!818485 () Bool)

(assert (=> start!74606 m!818485))

(declare-fun m!818487 () Bool)

(assert (=> start!74606 m!818487))

(declare-fun m!818489 () Bool)

(assert (=> b!878604 m!818489))

(declare-fun m!818491 () Bool)

(assert (=> b!878604 m!818491))

(assert (=> b!878604 m!818491))

(declare-fun m!818493 () Bool)

(assert (=> b!878604 m!818493))

(declare-fun m!818495 () Bool)

(assert (=> b!878604 m!818495))

(declare-fun m!818497 () Bool)

(assert (=> b!878601 m!818497))

(declare-fun m!818499 () Bool)

(assert (=> b!878601 m!818499))

(declare-fun m!818501 () Bool)

(assert (=> b!878601 m!818501))

(declare-fun m!818503 () Bool)

(assert (=> b!878598 m!818503))

(check-sat tp_is_empty!17511 (not b!878604) b_and!25161 (not mapNonEmpty!27882) (not b!878599) (not b!878602) (not b!878605) (not b_next!15267) (not b!878597) (not b!878601) (not start!74606))
(check-sat b_and!25161 (not b_next!15267))
