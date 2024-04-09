; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74304 () Bool)

(assert start!74304)

(declare-fun b_free!15039 () Bool)

(declare-fun b_next!15039 () Bool)

(assert (=> start!74304 (= b_free!15039 (not b_next!15039))))

(declare-fun tp!52792 () Bool)

(declare-fun b_and!24833 () Bool)

(assert (=> start!74304 (= tp!52792 b_and!24833)))

(declare-fun b!873668 () Bool)

(declare-fun res!593809 () Bool)

(declare-fun e!486537 () Bool)

(assert (=> b!873668 (=> (not res!593809) (not e!486537))))

(declare-datatypes ((array!50682 0))(
  ( (array!50683 (arr!24365 (Array (_ BitVec 32) (_ BitVec 64))) (size!24806 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50682)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50682 (_ BitVec 32)) Bool)

(assert (=> b!873668 (= res!593809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!593815 () Bool)

(assert (=> start!74304 (=> (not res!593815) (not e!486537))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74304 (= res!593815 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24806 _keys!868))))))

(assert (=> start!74304 e!486537))

(declare-fun tp_is_empty!17283 () Bool)

(assert (=> start!74304 tp_is_empty!17283))

(assert (=> start!74304 true))

(assert (=> start!74304 tp!52792))

(declare-fun array_inv!19200 (array!50682) Bool)

(assert (=> start!74304 (array_inv!19200 _keys!868)))

(declare-datatypes ((V!28091 0))(
  ( (V!28092 (val!8689 Int)) )
))
(declare-datatypes ((ValueCell!8202 0))(
  ( (ValueCellFull!8202 (v!11114 V!28091)) (EmptyCell!8202) )
))
(declare-datatypes ((array!50684 0))(
  ( (array!50685 (arr!24366 (Array (_ BitVec 32) ValueCell!8202)) (size!24807 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50684)

(declare-fun e!486534 () Bool)

(declare-fun array_inv!19201 (array!50684) Bool)

(assert (=> start!74304 (and (array_inv!19201 _values!688) e!486534)))

(declare-fun b!873669 () Bool)

(declare-fun res!593813 () Bool)

(assert (=> b!873669 (=> (not res!593813) (not e!486537))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!873669 (= res!593813 (and (= (size!24807 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24806 _keys!868) (size!24807 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873670 () Bool)

(declare-fun res!593814 () Bool)

(assert (=> b!873670 (=> (not res!593814) (not e!486537))))

(declare-datatypes ((List!17366 0))(
  ( (Nil!17363) (Cons!17362 (h!18493 (_ BitVec 64)) (t!24415 List!17366)) )
))
(declare-fun arrayNoDuplicates!0 (array!50682 (_ BitVec 32) List!17366) Bool)

(assert (=> b!873670 (= res!593814 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17363))))

(declare-fun mapNonEmpty!27533 () Bool)

(declare-fun mapRes!27533 () Bool)

(declare-fun tp!52793 () Bool)

(declare-fun e!486535 () Bool)

(assert (=> mapNonEmpty!27533 (= mapRes!27533 (and tp!52793 e!486535))))

(declare-fun mapRest!27533 () (Array (_ BitVec 32) ValueCell!8202))

(declare-fun mapValue!27533 () ValueCell!8202)

(declare-fun mapKey!27533 () (_ BitVec 32))

(assert (=> mapNonEmpty!27533 (= (arr!24366 _values!688) (store mapRest!27533 mapKey!27533 mapValue!27533))))

(declare-fun b!873671 () Bool)

(assert (=> b!873671 (= e!486535 tp_is_empty!17283)))

(declare-fun b!873672 () Bool)

(declare-fun e!486536 () Bool)

(assert (=> b!873672 (= e!486536 tp_is_empty!17283)))

(declare-fun b!873673 () Bool)

(declare-fun res!593812 () Bool)

(assert (=> b!873673 (=> (not res!593812) (not e!486537))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!873673 (= res!593812 (and (= (select (arr!24365 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!873674 () Bool)

(declare-fun res!593811 () Bool)

(assert (=> b!873674 (=> (not res!593811) (not e!486537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873674 (= res!593811 (validKeyInArray!0 k0!854))))

(declare-fun b!873675 () Bool)

(assert (=> b!873675 (= e!486537 false)))

(declare-fun v!557 () V!28091)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28091)

(declare-fun zeroValue!654 () V!28091)

(declare-datatypes ((tuple2!11478 0))(
  ( (tuple2!11479 (_1!5749 (_ BitVec 64)) (_2!5749 V!28091)) )
))
(declare-datatypes ((List!17367 0))(
  ( (Nil!17364) (Cons!17363 (h!18494 tuple2!11478) (t!24416 List!17367)) )
))
(declare-datatypes ((ListLongMap!10261 0))(
  ( (ListLongMap!10262 (toList!5146 List!17367)) )
))
(declare-fun lt!395775 () ListLongMap!10261)

(declare-fun getCurrentListMapNoExtraKeys!3110 (array!50682 array!50684 (_ BitVec 32) (_ BitVec 32) V!28091 V!28091 (_ BitVec 32) Int) ListLongMap!10261)

(assert (=> b!873675 (= lt!395775 (getCurrentListMapNoExtraKeys!3110 _keys!868 (array!50685 (store (arr!24366 _values!688) i!612 (ValueCellFull!8202 v!557)) (size!24807 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395776 () ListLongMap!10261)

(assert (=> b!873675 (= lt!395776 (getCurrentListMapNoExtraKeys!3110 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!873676 () Bool)

(assert (=> b!873676 (= e!486534 (and e!486536 mapRes!27533))))

(declare-fun condMapEmpty!27533 () Bool)

(declare-fun mapDefault!27533 () ValueCell!8202)

(assert (=> b!873676 (= condMapEmpty!27533 (= (arr!24366 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8202)) mapDefault!27533)))))

(declare-fun b!873677 () Bool)

(declare-fun res!593808 () Bool)

(assert (=> b!873677 (=> (not res!593808) (not e!486537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873677 (= res!593808 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27533 () Bool)

(assert (=> mapIsEmpty!27533 mapRes!27533))

(declare-fun b!873678 () Bool)

(declare-fun res!593810 () Bool)

(assert (=> b!873678 (=> (not res!593810) (not e!486537))))

(assert (=> b!873678 (= res!593810 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24806 _keys!868))))))

(assert (= (and start!74304 res!593815) b!873677))

(assert (= (and b!873677 res!593808) b!873669))

(assert (= (and b!873669 res!593813) b!873668))

(assert (= (and b!873668 res!593809) b!873670))

(assert (= (and b!873670 res!593814) b!873678))

(assert (= (and b!873678 res!593810) b!873674))

(assert (= (and b!873674 res!593811) b!873673))

(assert (= (and b!873673 res!593812) b!873675))

(assert (= (and b!873676 condMapEmpty!27533) mapIsEmpty!27533))

(assert (= (and b!873676 (not condMapEmpty!27533)) mapNonEmpty!27533))

(get-info :version)

(assert (= (and mapNonEmpty!27533 ((_ is ValueCellFull!8202) mapValue!27533)) b!873671))

(assert (= (and b!873676 ((_ is ValueCellFull!8202) mapDefault!27533)) b!873672))

(assert (= start!74304 b!873676))

(declare-fun m!814147 () Bool)

(assert (=> b!873675 m!814147))

(declare-fun m!814149 () Bool)

(assert (=> b!873675 m!814149))

(declare-fun m!814151 () Bool)

(assert (=> b!873675 m!814151))

(declare-fun m!814153 () Bool)

(assert (=> start!74304 m!814153))

(declare-fun m!814155 () Bool)

(assert (=> start!74304 m!814155))

(declare-fun m!814157 () Bool)

(assert (=> b!873670 m!814157))

(declare-fun m!814159 () Bool)

(assert (=> b!873673 m!814159))

(declare-fun m!814161 () Bool)

(assert (=> b!873668 m!814161))

(declare-fun m!814163 () Bool)

(assert (=> b!873677 m!814163))

(declare-fun m!814165 () Bool)

(assert (=> b!873674 m!814165))

(declare-fun m!814167 () Bool)

(assert (=> mapNonEmpty!27533 m!814167))

(check-sat (not b!873668) (not b_next!15039) (not b!873670) (not start!74304) (not b!873675) (not b!873677) (not mapNonEmpty!27533) (not b!873674) tp_is_empty!17283 b_and!24833)
(check-sat b_and!24833 (not b_next!15039))
