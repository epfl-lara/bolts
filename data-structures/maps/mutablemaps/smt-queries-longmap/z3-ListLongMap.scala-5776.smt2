; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74588 () Bool)

(assert start!74588)

(declare-fun b_free!15249 () Bool)

(declare-fun b_next!15249 () Bool)

(assert (=> start!74588 (= b_free!15249 (not b_next!15249))))

(declare-fun tp!53430 () Bool)

(declare-fun b_and!25143 () Bool)

(assert (=> start!74588 (= tp!53430 b_and!25143)))

(declare-fun mapIsEmpty!27855 () Bool)

(declare-fun mapRes!27855 () Bool)

(assert (=> mapIsEmpty!27855 mapRes!27855))

(declare-fun b!878294 () Bool)

(declare-fun e!488851 () Bool)

(assert (=> b!878294 (= e!488851 false)))

(declare-datatypes ((V!28371 0))(
  ( (V!28372 (val!8794 Int)) )
))
(declare-fun v!557 () V!28371)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51092 0))(
  ( (array!51093 (arr!24568 (Array (_ BitVec 32) (_ BitVec 64))) (size!25009 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51092)

(declare-datatypes ((ValueCell!8307 0))(
  ( (ValueCellFull!8307 (v!11230 V!28371)) (EmptyCell!8307) )
))
(declare-datatypes ((array!51094 0))(
  ( (array!51095 (arr!24569 (Array (_ BitVec 32) ValueCell!8307)) (size!25010 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51094)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28371)

(declare-fun zeroValue!654 () V!28371)

(declare-datatypes ((tuple2!11644 0))(
  ( (tuple2!11645 (_1!5832 (_ BitVec 64)) (_2!5832 V!28371)) )
))
(declare-datatypes ((List!17527 0))(
  ( (Nil!17524) (Cons!17523 (h!18654 tuple2!11644) (t!24624 List!17527)) )
))
(declare-datatypes ((ListLongMap!10427 0))(
  ( (ListLongMap!10428 (toList!5229 List!17527)) )
))
(declare-fun lt!397201 () ListLongMap!10427)

(declare-fun getCurrentListMapNoExtraKeys!3191 (array!51092 array!51094 (_ BitVec 32) (_ BitVec 32) V!28371 V!28371 (_ BitVec 32) Int) ListLongMap!10427)

(assert (=> b!878294 (= lt!397201 (getCurrentListMapNoExtraKeys!3191 _keys!868 (array!51095 (store (arr!24569 _values!688) i!612 (ValueCellFull!8307 v!557)) (size!25010 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397202 () ListLongMap!10427)

(assert (=> b!878294 (= lt!397202 (getCurrentListMapNoExtraKeys!3191 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878295 () Bool)

(declare-fun res!596802 () Bool)

(assert (=> b!878295 (=> (not res!596802) (not e!488851))))

(declare-datatypes ((List!17528 0))(
  ( (Nil!17525) (Cons!17524 (h!18655 (_ BitVec 64)) (t!24625 List!17528)) )
))
(declare-fun arrayNoDuplicates!0 (array!51092 (_ BitVec 32) List!17528) Bool)

(assert (=> b!878295 (= res!596802 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17525))))

(declare-fun b!878296 () Bool)

(declare-fun res!596799 () Bool)

(assert (=> b!878296 (=> (not res!596799) (not e!488851))))

(assert (=> b!878296 (= res!596799 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25009 _keys!868))))))

(declare-fun mapNonEmpty!27855 () Bool)

(declare-fun tp!53429 () Bool)

(declare-fun e!488849 () Bool)

(assert (=> mapNonEmpty!27855 (= mapRes!27855 (and tp!53429 e!488849))))

(declare-fun mapRest!27855 () (Array (_ BitVec 32) ValueCell!8307))

(declare-fun mapKey!27855 () (_ BitVec 32))

(declare-fun mapValue!27855 () ValueCell!8307)

(assert (=> mapNonEmpty!27855 (= (arr!24569 _values!688) (store mapRest!27855 mapKey!27855 mapValue!27855))))

(declare-fun b!878297 () Bool)

(declare-fun res!596805 () Bool)

(assert (=> b!878297 (=> (not res!596805) (not e!488851))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!878297 (= res!596805 (and (= (select (arr!24568 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!596804 () Bool)

(assert (=> start!74588 (=> (not res!596804) (not e!488851))))

(assert (=> start!74588 (= res!596804 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25009 _keys!868))))))

(assert (=> start!74588 e!488851))

(declare-fun tp_is_empty!17493 () Bool)

(assert (=> start!74588 tp_is_empty!17493))

(assert (=> start!74588 true))

(assert (=> start!74588 tp!53430))

(declare-fun array_inv!19340 (array!51092) Bool)

(assert (=> start!74588 (array_inv!19340 _keys!868)))

(declare-fun e!488850 () Bool)

(declare-fun array_inv!19341 (array!51094) Bool)

(assert (=> start!74588 (and (array_inv!19341 _values!688) e!488850)))

(declare-fun b!878298 () Bool)

(declare-fun res!596800 () Bool)

(assert (=> b!878298 (=> (not res!596800) (not e!488851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878298 (= res!596800 (validMask!0 mask!1196))))

(declare-fun b!878299 () Bool)

(declare-fun res!596801 () Bool)

(assert (=> b!878299 (=> (not res!596801) (not e!488851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51092 (_ BitVec 32)) Bool)

(assert (=> b!878299 (= res!596801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878300 () Bool)

(declare-fun res!596798 () Bool)

(assert (=> b!878300 (=> (not res!596798) (not e!488851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878300 (= res!596798 (validKeyInArray!0 k0!854))))

(declare-fun b!878301 () Bool)

(declare-fun e!488852 () Bool)

(assert (=> b!878301 (= e!488852 tp_is_empty!17493)))

(declare-fun b!878302 () Bool)

(declare-fun res!596803 () Bool)

(assert (=> b!878302 (=> (not res!596803) (not e!488851))))

(assert (=> b!878302 (= res!596803 (and (= (size!25010 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25009 _keys!868) (size!25010 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878303 () Bool)

(assert (=> b!878303 (= e!488850 (and e!488852 mapRes!27855))))

(declare-fun condMapEmpty!27855 () Bool)

(declare-fun mapDefault!27855 () ValueCell!8307)

(assert (=> b!878303 (= condMapEmpty!27855 (= (arr!24569 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8307)) mapDefault!27855)))))

(declare-fun b!878304 () Bool)

(assert (=> b!878304 (= e!488849 tp_is_empty!17493)))

(assert (= (and start!74588 res!596804) b!878298))

(assert (= (and b!878298 res!596800) b!878302))

(assert (= (and b!878302 res!596803) b!878299))

(assert (= (and b!878299 res!596801) b!878295))

(assert (= (and b!878295 res!596802) b!878296))

(assert (= (and b!878296 res!596799) b!878300))

(assert (= (and b!878300 res!596798) b!878297))

(assert (= (and b!878297 res!596805) b!878294))

(assert (= (and b!878303 condMapEmpty!27855) mapIsEmpty!27855))

(assert (= (and b!878303 (not condMapEmpty!27855)) mapNonEmpty!27855))

(get-info :version)

(assert (= (and mapNonEmpty!27855 ((_ is ValueCellFull!8307) mapValue!27855)) b!878304))

(assert (= (and b!878303 ((_ is ValueCellFull!8307) mapDefault!27855)) b!878301))

(assert (= start!74588 b!878303))

(declare-fun m!818269 () Bool)

(assert (=> b!878295 m!818269))

(declare-fun m!818271 () Bool)

(assert (=> b!878299 m!818271))

(declare-fun m!818273 () Bool)

(assert (=> mapNonEmpty!27855 m!818273))

(declare-fun m!818275 () Bool)

(assert (=> b!878300 m!818275))

(declare-fun m!818277 () Bool)

(assert (=> b!878298 m!818277))

(declare-fun m!818279 () Bool)

(assert (=> start!74588 m!818279))

(declare-fun m!818281 () Bool)

(assert (=> start!74588 m!818281))

(declare-fun m!818283 () Bool)

(assert (=> b!878294 m!818283))

(declare-fun m!818285 () Bool)

(assert (=> b!878294 m!818285))

(declare-fun m!818287 () Bool)

(assert (=> b!878294 m!818287))

(declare-fun m!818289 () Bool)

(assert (=> b!878297 m!818289))

(check-sat (not b!878299) (not start!74588) (not b!878295) b_and!25143 (not b!878298) (not b!878294) (not b!878300) (not b_next!15249) (not mapNonEmpty!27855) tp_is_empty!17493)
(check-sat b_and!25143 (not b_next!15249))
