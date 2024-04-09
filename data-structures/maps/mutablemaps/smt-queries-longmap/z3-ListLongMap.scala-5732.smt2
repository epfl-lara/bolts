; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74218 () Bool)

(assert start!74218)

(declare-fun b!872563 () Bool)

(declare-fun e!485971 () Bool)

(declare-fun e!485972 () Bool)

(declare-fun mapRes!27446 () Bool)

(assert (=> b!872563 (= e!485971 (and e!485972 mapRes!27446))))

(declare-fun condMapEmpty!27446 () Bool)

(declare-datatypes ((V!28019 0))(
  ( (V!28020 (val!8662 Int)) )
))
(declare-datatypes ((ValueCell!8175 0))(
  ( (ValueCellFull!8175 (v!11083 V!28019)) (EmptyCell!8175) )
))
(declare-datatypes ((array!50578 0))(
  ( (array!50579 (arr!24315 (Array (_ BitVec 32) ValueCell!8175)) (size!24756 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50578)

(declare-fun mapDefault!27446 () ValueCell!8175)

(assert (=> b!872563 (= condMapEmpty!27446 (= (arr!24315 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8175)) mapDefault!27446)))))

(declare-fun e!485969 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun b!872564 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!50580 0))(
  ( (array!50581 (arr!24316 (Array (_ BitVec 32) (_ BitVec 64))) (size!24757 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50580)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!872564 (= e!485969 (and (= (select (arr!24316 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24757 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsge (bvsub (size!24757 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (bvsub (size!24757 _keys!868) from!1053))))))

(declare-fun b!872565 () Bool)

(declare-fun res!593135 () Bool)

(assert (=> b!872565 (=> (not res!593135) (not e!485969))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!872565 (= res!593135 (and (= (size!24756 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24757 _keys!868) (size!24756 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27446 () Bool)

(declare-fun tp!52646 () Bool)

(declare-fun e!485970 () Bool)

(assert (=> mapNonEmpty!27446 (= mapRes!27446 (and tp!52646 e!485970))))

(declare-fun mapRest!27446 () (Array (_ BitVec 32) ValueCell!8175))

(declare-fun mapKey!27446 () (_ BitVec 32))

(declare-fun mapValue!27446 () ValueCell!8175)

(assert (=> mapNonEmpty!27446 (= (arr!24315 _values!688) (store mapRest!27446 mapKey!27446 mapValue!27446))))

(declare-fun b!872566 () Bool)

(declare-fun res!593131 () Bool)

(assert (=> b!872566 (=> (not res!593131) (not e!485969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872566 (= res!593131 (validMask!0 mask!1196))))

(declare-fun b!872567 () Bool)

(declare-fun res!593136 () Bool)

(assert (=> b!872567 (=> (not res!593136) (not e!485969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50580 (_ BitVec 32)) Bool)

(assert (=> b!872567 (= res!593136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872569 () Bool)

(declare-fun res!593134 () Bool)

(assert (=> b!872569 (=> (not res!593134) (not e!485969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!872569 (= res!593134 (validKeyInArray!0 k0!854))))

(declare-fun b!872570 () Bool)

(declare-fun res!593132 () Bool)

(assert (=> b!872570 (=> (not res!593132) (not e!485969))))

(declare-datatypes ((List!17334 0))(
  ( (Nil!17331) (Cons!17330 (h!18461 (_ BitVec 64)) (t!24379 List!17334)) )
))
(declare-fun arrayNoDuplicates!0 (array!50580 (_ BitVec 32) List!17334) Bool)

(assert (=> b!872570 (= res!593132 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17331))))

(declare-fun b!872571 () Bool)

(declare-fun res!593130 () Bool)

(assert (=> b!872571 (=> (not res!593130) (not e!485969))))

(assert (=> b!872571 (= res!593130 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24757 _keys!868))))))

(declare-fun mapIsEmpty!27446 () Bool)

(assert (=> mapIsEmpty!27446 mapRes!27446))

(declare-fun b!872572 () Bool)

(declare-fun tp_is_empty!17229 () Bool)

(assert (=> b!872572 (= e!485972 tp_is_empty!17229)))

(declare-fun res!593133 () Bool)

(assert (=> start!74218 (=> (not res!593133) (not e!485969))))

(assert (=> start!74218 (= res!593133 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24757 _keys!868))))))

(assert (=> start!74218 e!485969))

(assert (=> start!74218 true))

(declare-fun array_inv!19168 (array!50580) Bool)

(assert (=> start!74218 (array_inv!19168 _keys!868)))

(declare-fun array_inv!19169 (array!50578) Bool)

(assert (=> start!74218 (and (array_inv!19169 _values!688) e!485971)))

(declare-fun b!872568 () Bool)

(assert (=> b!872568 (= e!485970 tp_is_empty!17229)))

(assert (= (and start!74218 res!593133) b!872566))

(assert (= (and b!872566 res!593131) b!872565))

(assert (= (and b!872565 res!593135) b!872567))

(assert (= (and b!872567 res!593136) b!872570))

(assert (= (and b!872570 res!593132) b!872571))

(assert (= (and b!872571 res!593130) b!872569))

(assert (= (and b!872569 res!593134) b!872564))

(assert (= (and b!872563 condMapEmpty!27446) mapIsEmpty!27446))

(assert (= (and b!872563 (not condMapEmpty!27446)) mapNonEmpty!27446))

(get-info :version)

(assert (= (and mapNonEmpty!27446 ((_ is ValueCellFull!8175) mapValue!27446)) b!872568))

(assert (= (and b!872563 ((_ is ValueCellFull!8175) mapDefault!27446)) b!872572))

(assert (= start!74218 b!872563))

(declare-fun m!813365 () Bool)

(assert (=> b!872570 m!813365))

(declare-fun m!813367 () Bool)

(assert (=> b!872569 m!813367))

(declare-fun m!813369 () Bool)

(assert (=> b!872567 m!813369))

(declare-fun m!813371 () Bool)

(assert (=> b!872566 m!813371))

(declare-fun m!813373 () Bool)

(assert (=> mapNonEmpty!27446 m!813373))

(declare-fun m!813375 () Bool)

(assert (=> start!74218 m!813375))

(declare-fun m!813377 () Bool)

(assert (=> start!74218 m!813377))

(declare-fun m!813379 () Bool)

(assert (=> b!872564 m!813379))

(check-sat (not b!872569) (not start!74218) tp_is_empty!17229 (not mapNonEmpty!27446) (not b!872567) (not b!872566) (not b!872570))
(check-sat)
