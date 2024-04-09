; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73318 () Bool)

(assert start!73318)

(declare-fun b_free!14205 () Bool)

(declare-fun b_next!14205 () Bool)

(assert (=> start!73318 (= b_free!14205 (not b_next!14205))))

(declare-fun tp!50120 () Bool)

(declare-fun b_and!23579 () Bool)

(assert (=> start!73318 (= tp!50120 b_and!23579)))

(declare-fun b!854758 () Bool)

(declare-fun res!580587 () Bool)

(declare-fun e!476629 () Bool)

(assert (=> b!854758 (=> (not res!580587) (not e!476629))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854758 (= res!580587 (validKeyInArray!0 k0!854))))

(declare-fun b!854759 () Bool)

(declare-fun res!580583 () Bool)

(assert (=> b!854759 (=> (not res!580583) (not e!476629))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48862 0))(
  ( (array!48863 (arr!23458 (Array (_ BitVec 32) (_ BitVec 64))) (size!23899 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48862)

(declare-datatypes ((V!26835 0))(
  ( (V!26836 (val!8218 Int)) )
))
(declare-datatypes ((ValueCell!7731 0))(
  ( (ValueCellFull!7731 (v!10639 V!26835)) (EmptyCell!7731) )
))
(declare-datatypes ((array!48864 0))(
  ( (array!48865 (arr!23459 (Array (_ BitVec 32) ValueCell!7731)) (size!23900 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48864)

(assert (=> b!854759 (= res!580583 (and (= (size!23900 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23899 _keys!868) (size!23900 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!854760 () Bool)

(declare-fun res!580588 () Bool)

(assert (=> b!854760 (=> (not res!580588) (not e!476629))))

(declare-datatypes ((List!16694 0))(
  ( (Nil!16691) (Cons!16690 (h!17821 (_ BitVec 64)) (t!23343 List!16694)) )
))
(declare-fun arrayNoDuplicates!0 (array!48862 (_ BitVec 32) List!16694) Bool)

(assert (=> b!854760 (= res!580588 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16691))))

(declare-fun b!854761 () Bool)

(declare-fun e!476627 () Bool)

(declare-fun tp_is_empty!16341 () Bool)

(assert (=> b!854761 (= e!476627 tp_is_empty!16341)))

(declare-fun b!854762 () Bool)

(declare-fun res!580584 () Bool)

(assert (=> b!854762 (=> (not res!580584) (not e!476629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48862 (_ BitVec 32)) Bool)

(assert (=> b!854762 (= res!580584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26111 () Bool)

(declare-fun mapRes!26111 () Bool)

(assert (=> mapIsEmpty!26111 mapRes!26111))

(declare-fun mapNonEmpty!26111 () Bool)

(declare-fun tp!50119 () Bool)

(assert (=> mapNonEmpty!26111 (= mapRes!26111 (and tp!50119 e!476627))))

(declare-fun mapKey!26111 () (_ BitVec 32))

(declare-fun mapRest!26111 () (Array (_ BitVec 32) ValueCell!7731))

(declare-fun mapValue!26111 () ValueCell!7731)

(assert (=> mapNonEmpty!26111 (= (arr!23459 _values!688) (store mapRest!26111 mapKey!26111 mapValue!26111))))

(declare-fun b!854764 () Bool)

(declare-fun res!580589 () Bool)

(assert (=> b!854764 (=> (not res!580589) (not e!476629))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!854764 (= res!580589 (and (= (select (arr!23458 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!854765 () Bool)

(declare-fun res!580585 () Bool)

(assert (=> b!854765 (=> (not res!580585) (not e!476629))))

(assert (=> b!854765 (= res!580585 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23899 _keys!868))))))

(declare-fun b!854766 () Bool)

(declare-fun e!476630 () Bool)

(declare-fun e!476631 () Bool)

(assert (=> b!854766 (= e!476630 (and e!476631 mapRes!26111))))

(declare-fun condMapEmpty!26111 () Bool)

(declare-fun mapDefault!26111 () ValueCell!7731)

(assert (=> b!854766 (= condMapEmpty!26111 (= (arr!23459 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7731)) mapDefault!26111)))))

(declare-fun b!854767 () Bool)

(declare-fun res!580586 () Bool)

(assert (=> b!854767 (=> (not res!580586) (not e!476629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854767 (= res!580586 (validMask!0 mask!1196))))

(declare-fun b!854768 () Bool)

(assert (=> b!854768 (= e!476629 false)))

(declare-datatypes ((tuple2!10820 0))(
  ( (tuple2!10821 (_1!5420 (_ BitVec 64)) (_2!5420 V!26835)) )
))
(declare-datatypes ((List!16695 0))(
  ( (Nil!16692) (Cons!16691 (h!17822 tuple2!10820) (t!23344 List!16695)) )
))
(declare-datatypes ((ListLongMap!9603 0))(
  ( (ListLongMap!9604 (toList!4817 List!16695)) )
))
(declare-fun lt!385547 () ListLongMap!9603)

(declare-fun v!557 () V!26835)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26835)

(declare-fun zeroValue!654 () V!26835)

(declare-fun getCurrentListMapNoExtraKeys!2799 (array!48862 array!48864 (_ BitVec 32) (_ BitVec 32) V!26835 V!26835 (_ BitVec 32) Int) ListLongMap!9603)

(assert (=> b!854768 (= lt!385547 (getCurrentListMapNoExtraKeys!2799 _keys!868 (array!48865 (store (arr!23459 _values!688) i!612 (ValueCellFull!7731 v!557)) (size!23900 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385548 () ListLongMap!9603)

(assert (=> b!854768 (= lt!385548 (getCurrentListMapNoExtraKeys!2799 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854763 () Bool)

(assert (=> b!854763 (= e!476631 tp_is_empty!16341)))

(declare-fun res!580590 () Bool)

(assert (=> start!73318 (=> (not res!580590) (not e!476629))))

(assert (=> start!73318 (= res!580590 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23899 _keys!868))))))

(assert (=> start!73318 e!476629))

(assert (=> start!73318 tp_is_empty!16341))

(assert (=> start!73318 true))

(assert (=> start!73318 tp!50120))

(declare-fun array_inv!18574 (array!48862) Bool)

(assert (=> start!73318 (array_inv!18574 _keys!868)))

(declare-fun array_inv!18575 (array!48864) Bool)

(assert (=> start!73318 (and (array_inv!18575 _values!688) e!476630)))

(assert (= (and start!73318 res!580590) b!854767))

(assert (= (and b!854767 res!580586) b!854759))

(assert (= (and b!854759 res!580583) b!854762))

(assert (= (and b!854762 res!580584) b!854760))

(assert (= (and b!854760 res!580588) b!854765))

(assert (= (and b!854765 res!580585) b!854758))

(assert (= (and b!854758 res!580587) b!854764))

(assert (= (and b!854764 res!580589) b!854768))

(assert (= (and b!854766 condMapEmpty!26111) mapIsEmpty!26111))

(assert (= (and b!854766 (not condMapEmpty!26111)) mapNonEmpty!26111))

(get-info :version)

(assert (= (and mapNonEmpty!26111 ((_ is ValueCellFull!7731) mapValue!26111)) b!854761))

(assert (= (and b!854766 ((_ is ValueCellFull!7731) mapDefault!26111)) b!854763))

(assert (= start!73318 b!854766))

(declare-fun m!796241 () Bool)

(assert (=> b!854758 m!796241))

(declare-fun m!796243 () Bool)

(assert (=> b!854768 m!796243))

(declare-fun m!796245 () Bool)

(assert (=> b!854768 m!796245))

(declare-fun m!796247 () Bool)

(assert (=> b!854768 m!796247))

(declare-fun m!796249 () Bool)

(assert (=> b!854767 m!796249))

(declare-fun m!796251 () Bool)

(assert (=> b!854764 m!796251))

(declare-fun m!796253 () Bool)

(assert (=> start!73318 m!796253))

(declare-fun m!796255 () Bool)

(assert (=> start!73318 m!796255))

(declare-fun m!796257 () Bool)

(assert (=> b!854760 m!796257))

(declare-fun m!796259 () Bool)

(assert (=> b!854762 m!796259))

(declare-fun m!796261 () Bool)

(assert (=> mapNonEmpty!26111 m!796261))

(check-sat tp_is_empty!16341 (not mapNonEmpty!26111) (not b!854760) b_and!23579 (not b!854768) (not start!73318) (not b!854767) (not b!854758) (not b!854762) (not b_next!14205))
(check-sat b_and!23579 (not b_next!14205))
