; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74582 () Bool)

(assert start!74582)

(declare-fun b_free!15243 () Bool)

(declare-fun b_next!15243 () Bool)

(assert (=> start!74582 (= b_free!15243 (not b_next!15243))))

(declare-fun tp!53411 () Bool)

(declare-fun b_and!25137 () Bool)

(assert (=> start!74582 (= tp!53411 b_and!25137)))

(declare-fun b!878195 () Bool)

(declare-fun res!596727 () Bool)

(declare-fun e!488804 () Bool)

(assert (=> b!878195 (=> (not res!596727) (not e!488804))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51080 0))(
  ( (array!51081 (arr!24562 (Array (_ BitVec 32) (_ BitVec 64))) (size!25003 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51080)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878195 (= res!596727 (and (= (select (arr!24562 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!878196 () Bool)

(declare-fun e!488807 () Bool)

(declare-fun tp_is_empty!17487 () Bool)

(assert (=> b!878196 (= e!488807 tp_is_empty!17487)))

(declare-fun mapNonEmpty!27846 () Bool)

(declare-fun mapRes!27846 () Bool)

(declare-fun tp!53412 () Bool)

(declare-fun e!488808 () Bool)

(assert (=> mapNonEmpty!27846 (= mapRes!27846 (and tp!53412 e!488808))))

(declare-datatypes ((V!28363 0))(
  ( (V!28364 (val!8791 Int)) )
))
(declare-datatypes ((ValueCell!8304 0))(
  ( (ValueCellFull!8304 (v!11227 V!28363)) (EmptyCell!8304) )
))
(declare-fun mapRest!27846 () (Array (_ BitVec 32) ValueCell!8304))

(declare-fun mapValue!27846 () ValueCell!8304)

(declare-fun mapKey!27846 () (_ BitVec 32))

(declare-datatypes ((array!51082 0))(
  ( (array!51083 (arr!24563 (Array (_ BitVec 32) ValueCell!8304)) (size!25004 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51082)

(assert (=> mapNonEmpty!27846 (= (arr!24563 _values!688) (store mapRest!27846 mapKey!27846 mapValue!27846))))

(declare-fun b!878197 () Bool)

(declare-fun res!596726 () Bool)

(assert (=> b!878197 (=> (not res!596726) (not e!488804))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!878197 (= res!596726 (and (= (size!25004 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25003 _keys!868) (size!25004 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878198 () Bool)

(declare-fun res!596729 () Bool)

(assert (=> b!878198 (=> (not res!596729) (not e!488804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878198 (= res!596729 (validMask!0 mask!1196))))

(declare-fun res!596728 () Bool)

(assert (=> start!74582 (=> (not res!596728) (not e!488804))))

(assert (=> start!74582 (= res!596728 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25003 _keys!868))))))

(assert (=> start!74582 e!488804))

(assert (=> start!74582 tp_is_empty!17487))

(assert (=> start!74582 true))

(assert (=> start!74582 tp!53411))

(declare-fun array_inv!19336 (array!51080) Bool)

(assert (=> start!74582 (array_inv!19336 _keys!868)))

(declare-fun e!488805 () Bool)

(declare-fun array_inv!19337 (array!51082) Bool)

(assert (=> start!74582 (and (array_inv!19337 _values!688) e!488805)))

(declare-fun b!878199 () Bool)

(assert (=> b!878199 (= e!488808 tp_is_empty!17487)))

(declare-fun mapIsEmpty!27846 () Bool)

(assert (=> mapIsEmpty!27846 mapRes!27846))

(declare-fun b!878200 () Bool)

(declare-fun res!596733 () Bool)

(assert (=> b!878200 (=> (not res!596733) (not e!488804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878200 (= res!596733 (validKeyInArray!0 k0!854))))

(declare-fun b!878201 () Bool)

(declare-fun res!596731 () Bool)

(assert (=> b!878201 (=> (not res!596731) (not e!488804))))

(assert (=> b!878201 (= res!596731 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25003 _keys!868))))))

(declare-fun b!878202 () Bool)

(declare-fun res!596730 () Bool)

(assert (=> b!878202 (=> (not res!596730) (not e!488804))))

(declare-datatypes ((List!17523 0))(
  ( (Nil!17520) (Cons!17519 (h!18650 (_ BitVec 64)) (t!24620 List!17523)) )
))
(declare-fun arrayNoDuplicates!0 (array!51080 (_ BitVec 32) List!17523) Bool)

(assert (=> b!878202 (= res!596730 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17520))))

(declare-fun b!878203 () Bool)

(assert (=> b!878203 (= e!488805 (and e!488807 mapRes!27846))))

(declare-fun condMapEmpty!27846 () Bool)

(declare-fun mapDefault!27846 () ValueCell!8304)

(assert (=> b!878203 (= condMapEmpty!27846 (= (arr!24563 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8304)) mapDefault!27846)))))

(declare-fun b!878204 () Bool)

(declare-fun res!596732 () Bool)

(assert (=> b!878204 (=> (not res!596732) (not e!488804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51080 (_ BitVec 32)) Bool)

(assert (=> b!878204 (= res!596732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878205 () Bool)

(assert (=> b!878205 (= e!488804 false)))

(declare-fun v!557 () V!28363)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11640 0))(
  ( (tuple2!11641 (_1!5830 (_ BitVec 64)) (_2!5830 V!28363)) )
))
(declare-datatypes ((List!17524 0))(
  ( (Nil!17521) (Cons!17520 (h!18651 tuple2!11640) (t!24621 List!17524)) )
))
(declare-datatypes ((ListLongMap!10423 0))(
  ( (ListLongMap!10424 (toList!5227 List!17524)) )
))
(declare-fun lt!397183 () ListLongMap!10423)

(declare-fun minValue!654 () V!28363)

(declare-fun zeroValue!654 () V!28363)

(declare-fun getCurrentListMapNoExtraKeys!3189 (array!51080 array!51082 (_ BitVec 32) (_ BitVec 32) V!28363 V!28363 (_ BitVec 32) Int) ListLongMap!10423)

(assert (=> b!878205 (= lt!397183 (getCurrentListMapNoExtraKeys!3189 _keys!868 (array!51083 (store (arr!24563 _values!688) i!612 (ValueCellFull!8304 v!557)) (size!25004 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397184 () ListLongMap!10423)

(assert (=> b!878205 (= lt!397184 (getCurrentListMapNoExtraKeys!3189 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!74582 res!596728) b!878198))

(assert (= (and b!878198 res!596729) b!878197))

(assert (= (and b!878197 res!596726) b!878204))

(assert (= (and b!878204 res!596732) b!878202))

(assert (= (and b!878202 res!596730) b!878201))

(assert (= (and b!878201 res!596731) b!878200))

(assert (= (and b!878200 res!596733) b!878195))

(assert (= (and b!878195 res!596727) b!878205))

(assert (= (and b!878203 condMapEmpty!27846) mapIsEmpty!27846))

(assert (= (and b!878203 (not condMapEmpty!27846)) mapNonEmpty!27846))

(get-info :version)

(assert (= (and mapNonEmpty!27846 ((_ is ValueCellFull!8304) mapValue!27846)) b!878199))

(assert (= (and b!878203 ((_ is ValueCellFull!8304) mapDefault!27846)) b!878196))

(assert (= start!74582 b!878203))

(declare-fun m!818203 () Bool)

(assert (=> mapNonEmpty!27846 m!818203))

(declare-fun m!818205 () Bool)

(assert (=> b!878200 m!818205))

(declare-fun m!818207 () Bool)

(assert (=> start!74582 m!818207))

(declare-fun m!818209 () Bool)

(assert (=> start!74582 m!818209))

(declare-fun m!818211 () Bool)

(assert (=> b!878204 m!818211))

(declare-fun m!818213 () Bool)

(assert (=> b!878198 m!818213))

(declare-fun m!818215 () Bool)

(assert (=> b!878195 m!818215))

(declare-fun m!818217 () Bool)

(assert (=> b!878202 m!818217))

(declare-fun m!818219 () Bool)

(assert (=> b!878205 m!818219))

(declare-fun m!818221 () Bool)

(assert (=> b!878205 m!818221))

(declare-fun m!818223 () Bool)

(assert (=> b!878205 m!818223))

(check-sat (not mapNonEmpty!27846) b_and!25137 (not b!878204) (not b!878200) (not b_next!15243) tp_is_empty!17487 (not start!74582) (not b!878205) (not b!878198) (not b!878202))
(check-sat b_and!25137 (not b_next!15243))
