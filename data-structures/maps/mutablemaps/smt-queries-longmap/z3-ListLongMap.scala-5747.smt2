; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74340 () Bool)

(assert start!74340)

(declare-fun b_free!15075 () Bool)

(declare-fun b_next!15075 () Bool)

(assert (=> start!74340 (= b_free!15075 (not b_next!15075))))

(declare-fun tp!52900 () Bool)

(declare-fun b_and!24869 () Bool)

(assert (=> start!74340 (= tp!52900 b_and!24869)))

(declare-fun mapNonEmpty!27587 () Bool)

(declare-fun mapRes!27587 () Bool)

(declare-fun tp!52901 () Bool)

(declare-fun e!486807 () Bool)

(assert (=> mapNonEmpty!27587 (= mapRes!27587 (and tp!52901 e!486807))))

(declare-datatypes ((V!28139 0))(
  ( (V!28140 (val!8707 Int)) )
))
(declare-datatypes ((ValueCell!8220 0))(
  ( (ValueCellFull!8220 (v!11132 V!28139)) (EmptyCell!8220) )
))
(declare-fun mapRest!27587 () (Array (_ BitVec 32) ValueCell!8220))

(declare-fun mapKey!27587 () (_ BitVec 32))

(declare-fun mapValue!27587 () ValueCell!8220)

(declare-datatypes ((array!50750 0))(
  ( (array!50751 (arr!24399 (Array (_ BitVec 32) ValueCell!8220)) (size!24840 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50750)

(assert (=> mapNonEmpty!27587 (= (arr!24399 _values!688) (store mapRest!27587 mapKey!27587 mapValue!27587))))

(declare-fun b!874263 () Bool)

(declare-fun res!594241 () Bool)

(declare-fun e!486804 () Bool)

(assert (=> b!874263 (=> (not res!594241) (not e!486804))))

(declare-datatypes ((array!50752 0))(
  ( (array!50753 (arr!24400 (Array (_ BitVec 32) (_ BitVec 64))) (size!24841 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50752)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50752 (_ BitVec 32)) Bool)

(assert (=> b!874263 (= res!594241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874264 () Bool)

(declare-fun e!486805 () Bool)

(declare-fun tp_is_empty!17319 () Bool)

(assert (=> b!874264 (= e!486805 tp_is_empty!17319)))

(declare-fun b!874265 () Bool)

(declare-fun e!486808 () Bool)

(assert (=> b!874265 (= e!486808 (and e!486805 mapRes!27587))))

(declare-fun condMapEmpty!27587 () Bool)

(declare-fun mapDefault!27587 () ValueCell!8220)

(assert (=> b!874265 (= condMapEmpty!27587 (= (arr!24399 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8220)) mapDefault!27587)))))

(declare-fun b!874266 () Bool)

(declare-fun res!594245 () Bool)

(assert (=> b!874266 (=> (not res!594245) (not e!486804))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!874266 (= res!594245 (and (= (select (arr!24400 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!874267 () Bool)

(assert (=> b!874267 (= e!486804 false)))

(declare-fun v!557 () V!28139)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28139)

(declare-fun zeroValue!654 () V!28139)

(declare-datatypes ((tuple2!11500 0))(
  ( (tuple2!11501 (_1!5760 (_ BitVec 64)) (_2!5760 V!28139)) )
))
(declare-datatypes ((List!17389 0))(
  ( (Nil!17386) (Cons!17385 (h!18516 tuple2!11500) (t!24438 List!17389)) )
))
(declare-datatypes ((ListLongMap!10283 0))(
  ( (ListLongMap!10284 (toList!5157 List!17389)) )
))
(declare-fun lt!395883 () ListLongMap!10283)

(declare-fun getCurrentListMapNoExtraKeys!3121 (array!50752 array!50750 (_ BitVec 32) (_ BitVec 32) V!28139 V!28139 (_ BitVec 32) Int) ListLongMap!10283)

(assert (=> b!874267 (= lt!395883 (getCurrentListMapNoExtraKeys!3121 _keys!868 (array!50751 (store (arr!24399 _values!688) i!612 (ValueCellFull!8220 v!557)) (size!24840 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395884 () ListLongMap!10283)

(assert (=> b!874267 (= lt!395884 (getCurrentListMapNoExtraKeys!3121 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874268 () Bool)

(declare-fun res!594240 () Bool)

(assert (=> b!874268 (=> (not res!594240) (not e!486804))))

(declare-datatypes ((List!17390 0))(
  ( (Nil!17387) (Cons!17386 (h!18517 (_ BitVec 64)) (t!24439 List!17390)) )
))
(declare-fun arrayNoDuplicates!0 (array!50752 (_ BitVec 32) List!17390) Bool)

(assert (=> b!874268 (= res!594240 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17387))))

(declare-fun mapIsEmpty!27587 () Bool)

(assert (=> mapIsEmpty!27587 mapRes!27587))

(declare-fun b!874269 () Bool)

(declare-fun res!594244 () Bool)

(assert (=> b!874269 (=> (not res!594244) (not e!486804))))

(assert (=> b!874269 (= res!594244 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24841 _keys!868))))))

(declare-fun b!874270 () Bool)

(declare-fun res!594247 () Bool)

(assert (=> b!874270 (=> (not res!594247) (not e!486804))))

(assert (=> b!874270 (= res!594247 (and (= (size!24840 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24841 _keys!868) (size!24840 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874262 () Bool)

(declare-fun res!594242 () Bool)

(assert (=> b!874262 (=> (not res!594242) (not e!486804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874262 (= res!594242 (validMask!0 mask!1196))))

(declare-fun res!594243 () Bool)

(assert (=> start!74340 (=> (not res!594243) (not e!486804))))

(assert (=> start!74340 (= res!594243 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24841 _keys!868))))))

(assert (=> start!74340 e!486804))

(assert (=> start!74340 tp_is_empty!17319))

(assert (=> start!74340 true))

(assert (=> start!74340 tp!52900))

(declare-fun array_inv!19222 (array!50752) Bool)

(assert (=> start!74340 (array_inv!19222 _keys!868)))

(declare-fun array_inv!19223 (array!50750) Bool)

(assert (=> start!74340 (and (array_inv!19223 _values!688) e!486808)))

(declare-fun b!874271 () Bool)

(declare-fun res!594246 () Bool)

(assert (=> b!874271 (=> (not res!594246) (not e!486804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874271 (= res!594246 (validKeyInArray!0 k0!854))))

(declare-fun b!874272 () Bool)

(assert (=> b!874272 (= e!486807 tp_is_empty!17319)))

(assert (= (and start!74340 res!594243) b!874262))

(assert (= (and b!874262 res!594242) b!874270))

(assert (= (and b!874270 res!594247) b!874263))

(assert (= (and b!874263 res!594241) b!874268))

(assert (= (and b!874268 res!594240) b!874269))

(assert (= (and b!874269 res!594244) b!874271))

(assert (= (and b!874271 res!594246) b!874266))

(assert (= (and b!874266 res!594245) b!874267))

(assert (= (and b!874265 condMapEmpty!27587) mapIsEmpty!27587))

(assert (= (and b!874265 (not condMapEmpty!27587)) mapNonEmpty!27587))

(get-info :version)

(assert (= (and mapNonEmpty!27587 ((_ is ValueCellFull!8220) mapValue!27587)) b!874272))

(assert (= (and b!874265 ((_ is ValueCellFull!8220) mapDefault!27587)) b!874264))

(assert (= start!74340 b!874265))

(declare-fun m!814543 () Bool)

(assert (=> b!874262 m!814543))

(declare-fun m!814545 () Bool)

(assert (=> b!874268 m!814545))

(declare-fun m!814547 () Bool)

(assert (=> b!874271 m!814547))

(declare-fun m!814549 () Bool)

(assert (=> mapNonEmpty!27587 m!814549))

(declare-fun m!814551 () Bool)

(assert (=> b!874263 m!814551))

(declare-fun m!814553 () Bool)

(assert (=> b!874266 m!814553))

(declare-fun m!814555 () Bool)

(assert (=> start!74340 m!814555))

(declare-fun m!814557 () Bool)

(assert (=> start!74340 m!814557))

(declare-fun m!814559 () Bool)

(assert (=> b!874267 m!814559))

(declare-fun m!814561 () Bool)

(assert (=> b!874267 m!814561))

(declare-fun m!814563 () Bool)

(assert (=> b!874267 m!814563))

(check-sat (not b!874262) (not b!874271) (not b!874268) (not b!874267) (not start!74340) (not mapNonEmpty!27587) tp_is_empty!17319 (not b!874263) (not b_next!15075) b_and!24869)
(check-sat b_and!24869 (not b_next!15075))
