; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74310 () Bool)

(assert start!74310)

(declare-fun b_free!15045 () Bool)

(declare-fun b_next!15045 () Bool)

(assert (=> start!74310 (= b_free!15045 (not b_next!15045))))

(declare-fun tp!52811 () Bool)

(declare-fun b_and!24839 () Bool)

(assert (=> start!74310 (= tp!52811 b_and!24839)))

(declare-fun b!873767 () Bool)

(declare-fun res!593886 () Bool)

(declare-fun e!486582 () Bool)

(assert (=> b!873767 (=> (not res!593886) (not e!486582))))

(declare-datatypes ((array!50694 0))(
  ( (array!50695 (arr!24371 (Array (_ BitVec 32) (_ BitVec 64))) (size!24812 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50694)

(declare-datatypes ((List!17370 0))(
  ( (Nil!17367) (Cons!17366 (h!18497 (_ BitVec 64)) (t!24419 List!17370)) )
))
(declare-fun arrayNoDuplicates!0 (array!50694 (_ BitVec 32) List!17370) Bool)

(assert (=> b!873767 (= res!593886 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17367))))

(declare-fun b!873768 () Bool)

(assert (=> b!873768 (= e!486582 false)))

(declare-datatypes ((V!28099 0))(
  ( (V!28100 (val!8692 Int)) )
))
(declare-fun v!557 () V!28099)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11482 0))(
  ( (tuple2!11483 (_1!5751 (_ BitVec 64)) (_2!5751 V!28099)) )
))
(declare-datatypes ((List!17371 0))(
  ( (Nil!17368) (Cons!17367 (h!18498 tuple2!11482) (t!24420 List!17371)) )
))
(declare-datatypes ((ListLongMap!10265 0))(
  ( (ListLongMap!10266 (toList!5148 List!17371)) )
))
(declare-fun lt!395794 () ListLongMap!10265)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8205 0))(
  ( (ValueCellFull!8205 (v!11117 V!28099)) (EmptyCell!8205) )
))
(declare-datatypes ((array!50696 0))(
  ( (array!50697 (arr!24372 (Array (_ BitVec 32) ValueCell!8205)) (size!24813 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50696)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28099)

(declare-fun zeroValue!654 () V!28099)

(declare-fun getCurrentListMapNoExtraKeys!3112 (array!50694 array!50696 (_ BitVec 32) (_ BitVec 32) V!28099 V!28099 (_ BitVec 32) Int) ListLongMap!10265)

(assert (=> b!873768 (= lt!395794 (getCurrentListMapNoExtraKeys!3112 _keys!868 (array!50697 (store (arr!24372 _values!688) i!612 (ValueCellFull!8205 v!557)) (size!24813 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395793 () ListLongMap!10265)

(assert (=> b!873768 (= lt!395793 (getCurrentListMapNoExtraKeys!3112 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!873769 () Bool)

(declare-fun res!593884 () Bool)

(assert (=> b!873769 (=> (not res!593884) (not e!486582))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50694 (_ BitVec 32)) Bool)

(assert (=> b!873769 (= res!593884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873770 () Bool)

(declare-fun res!593882 () Bool)

(assert (=> b!873770 (=> (not res!593882) (not e!486582))))

(assert (=> b!873770 (= res!593882 (and (= (size!24813 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24812 _keys!868) (size!24813 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873771 () Bool)

(declare-fun res!593881 () Bool)

(assert (=> b!873771 (=> (not res!593881) (not e!486582))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!873771 (= res!593881 (and (= (select (arr!24371 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!27542 () Bool)

(declare-fun mapRes!27542 () Bool)

(declare-fun tp!52810 () Bool)

(declare-fun e!486583 () Bool)

(assert (=> mapNonEmpty!27542 (= mapRes!27542 (and tp!52810 e!486583))))

(declare-fun mapValue!27542 () ValueCell!8205)

(declare-fun mapKey!27542 () (_ BitVec 32))

(declare-fun mapRest!27542 () (Array (_ BitVec 32) ValueCell!8205))

(assert (=> mapNonEmpty!27542 (= (arr!24372 _values!688) (store mapRest!27542 mapKey!27542 mapValue!27542))))

(declare-fun b!873773 () Bool)

(declare-fun tp_is_empty!17289 () Bool)

(assert (=> b!873773 (= e!486583 tp_is_empty!17289)))

(declare-fun b!873774 () Bool)

(declare-fun e!486580 () Bool)

(declare-fun e!486579 () Bool)

(assert (=> b!873774 (= e!486580 (and e!486579 mapRes!27542))))

(declare-fun condMapEmpty!27542 () Bool)

(declare-fun mapDefault!27542 () ValueCell!8205)

(assert (=> b!873774 (= condMapEmpty!27542 (= (arr!24372 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8205)) mapDefault!27542)))))

(declare-fun mapIsEmpty!27542 () Bool)

(assert (=> mapIsEmpty!27542 mapRes!27542))

(declare-fun b!873775 () Bool)

(assert (=> b!873775 (= e!486579 tp_is_empty!17289)))

(declare-fun b!873776 () Bool)

(declare-fun res!593887 () Bool)

(assert (=> b!873776 (=> (not res!593887) (not e!486582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873776 (= res!593887 (validMask!0 mask!1196))))

(declare-fun b!873777 () Bool)

(declare-fun res!593883 () Bool)

(assert (=> b!873777 (=> (not res!593883) (not e!486582))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873777 (= res!593883 (validKeyInArray!0 k0!854))))

(declare-fun b!873772 () Bool)

(declare-fun res!593885 () Bool)

(assert (=> b!873772 (=> (not res!593885) (not e!486582))))

(assert (=> b!873772 (= res!593885 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24812 _keys!868))))))

(declare-fun res!593880 () Bool)

(assert (=> start!74310 (=> (not res!593880) (not e!486582))))

(assert (=> start!74310 (= res!593880 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24812 _keys!868))))))

(assert (=> start!74310 e!486582))

(assert (=> start!74310 tp_is_empty!17289))

(assert (=> start!74310 true))

(assert (=> start!74310 tp!52811))

(declare-fun array_inv!19204 (array!50694) Bool)

(assert (=> start!74310 (array_inv!19204 _keys!868)))

(declare-fun array_inv!19205 (array!50696) Bool)

(assert (=> start!74310 (and (array_inv!19205 _values!688) e!486580)))

(assert (= (and start!74310 res!593880) b!873776))

(assert (= (and b!873776 res!593887) b!873770))

(assert (= (and b!873770 res!593882) b!873769))

(assert (= (and b!873769 res!593884) b!873767))

(assert (= (and b!873767 res!593886) b!873772))

(assert (= (and b!873772 res!593885) b!873777))

(assert (= (and b!873777 res!593883) b!873771))

(assert (= (and b!873771 res!593881) b!873768))

(assert (= (and b!873774 condMapEmpty!27542) mapIsEmpty!27542))

(assert (= (and b!873774 (not condMapEmpty!27542)) mapNonEmpty!27542))

(get-info :version)

(assert (= (and mapNonEmpty!27542 ((_ is ValueCellFull!8205) mapValue!27542)) b!873773))

(assert (= (and b!873774 ((_ is ValueCellFull!8205) mapDefault!27542)) b!873775))

(assert (= start!74310 b!873774))

(declare-fun m!814213 () Bool)

(assert (=> b!873768 m!814213))

(declare-fun m!814215 () Bool)

(assert (=> b!873768 m!814215))

(declare-fun m!814217 () Bool)

(assert (=> b!873768 m!814217))

(declare-fun m!814219 () Bool)

(assert (=> b!873767 m!814219))

(declare-fun m!814221 () Bool)

(assert (=> b!873769 m!814221))

(declare-fun m!814223 () Bool)

(assert (=> start!74310 m!814223))

(declare-fun m!814225 () Bool)

(assert (=> start!74310 m!814225))

(declare-fun m!814227 () Bool)

(assert (=> b!873776 m!814227))

(declare-fun m!814229 () Bool)

(assert (=> b!873777 m!814229))

(declare-fun m!814231 () Bool)

(assert (=> b!873771 m!814231))

(declare-fun m!814233 () Bool)

(assert (=> mapNonEmpty!27542 m!814233))

(check-sat (not b!873767) (not mapNonEmpty!27542) (not start!74310) tp_is_empty!17289 (not b!873769) b_and!24839 (not b!873776) (not b_next!15045) (not b!873777) (not b!873768))
(check-sat b_and!24839 (not b_next!15045))
