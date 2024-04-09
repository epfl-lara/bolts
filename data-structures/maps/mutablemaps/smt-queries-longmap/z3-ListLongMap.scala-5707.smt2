; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74056 () Bool)

(assert start!74056)

(declare-fun b_free!14943 () Bool)

(declare-fun b_next!14943 () Bool)

(assert (=> start!74056 (= b_free!14943 (not b_next!14943))))

(declare-fun tp!52333 () Bool)

(declare-fun b_and!24713 () Bool)

(assert (=> start!74056 (= tp!52333 b_and!24713)))

(declare-fun b!870477 () Bool)

(declare-fun res!591757 () Bool)

(declare-fun e!484735 () Bool)

(assert (=> b!870477 (=> (not res!591757) (not e!484735))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870477 (= res!591757 (validKeyInArray!0 k0!854))))

(declare-fun b!870478 () Bool)

(declare-fun e!484734 () Bool)

(declare-fun e!484733 () Bool)

(declare-fun mapRes!27218 () Bool)

(assert (=> b!870478 (= e!484734 (and e!484733 mapRes!27218))))

(declare-fun condMapEmpty!27218 () Bool)

(declare-datatypes ((V!27819 0))(
  ( (V!27820 (val!8587 Int)) )
))
(declare-datatypes ((ValueCell!8100 0))(
  ( (ValueCellFull!8100 (v!11008 V!27819)) (EmptyCell!8100) )
))
(declare-datatypes ((array!50290 0))(
  ( (array!50291 (arr!24172 (Array (_ BitVec 32) ValueCell!8100)) (size!24613 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50290)

(declare-fun mapDefault!27218 () ValueCell!8100)

(assert (=> b!870478 (= condMapEmpty!27218 (= (arr!24172 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8100)) mapDefault!27218)))))

(declare-fun b!870479 () Bool)

(declare-fun res!591759 () Bool)

(assert (=> b!870479 (=> (not res!591759) (not e!484735))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50292 0))(
  ( (array!50293 (arr!24173 (Array (_ BitVec 32) (_ BitVec 64))) (size!24614 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50292)

(assert (=> b!870479 (= res!591759 (and (= (size!24613 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24614 _keys!868) (size!24613 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!870480 () Bool)

(declare-fun tp_is_empty!17079 () Bool)

(assert (=> b!870480 (= e!484733 tp_is_empty!17079)))

(declare-fun b!870481 () Bool)

(declare-fun res!591761 () Bool)

(assert (=> b!870481 (=> (not res!591761) (not e!484735))))

(declare-datatypes ((List!17263 0))(
  ( (Nil!17260) (Cons!17259 (h!18390 (_ BitVec 64)) (t!24308 List!17263)) )
))
(declare-fun arrayNoDuplicates!0 (array!50292 (_ BitVec 32) List!17263) Bool)

(assert (=> b!870481 (= res!591761 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17260))))

(declare-fun b!870482 () Bool)

(declare-fun res!591764 () Bool)

(assert (=> b!870482 (=> (not res!591764) (not e!484735))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!870482 (= res!591764 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24614 _keys!868))))))

(declare-fun b!870483 () Bool)

(declare-fun e!484736 () Bool)

(assert (=> b!870483 (= e!484736 (not true))))

(declare-fun v!557 () V!27819)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!395145 () array!50290)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27819)

(declare-fun zeroValue!654 () V!27819)

(declare-datatypes ((tuple2!11408 0))(
  ( (tuple2!11409 (_1!5714 (_ BitVec 64)) (_2!5714 V!27819)) )
))
(declare-datatypes ((List!17264 0))(
  ( (Nil!17261) (Cons!17260 (h!18391 tuple2!11408) (t!24309 List!17264)) )
))
(declare-datatypes ((ListLongMap!10191 0))(
  ( (ListLongMap!10192 (toList!5111 List!17264)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3075 (array!50292 array!50290 (_ BitVec 32) (_ BitVec 32) V!27819 V!27819 (_ BitVec 32) Int) ListLongMap!10191)

(declare-fun +!2392 (ListLongMap!10191 tuple2!11408) ListLongMap!10191)

(assert (=> b!870483 (= (getCurrentListMapNoExtraKeys!3075 _keys!868 lt!395145 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2392 (getCurrentListMapNoExtraKeys!3075 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11409 k0!854 v!557)))))

(declare-datatypes ((Unit!29834 0))(
  ( (Unit!29835) )
))
(declare-fun lt!395143 () Unit!29834)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!623 (array!50292 array!50290 (_ BitVec 32) (_ BitVec 32) V!27819 V!27819 (_ BitVec 32) (_ BitVec 64) V!27819 (_ BitVec 32) Int) Unit!29834)

(assert (=> b!870483 (= lt!395143 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!623 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870484 () Bool)

(declare-fun e!484732 () Bool)

(assert (=> b!870484 (= e!484732 tp_is_empty!17079)))

(declare-fun b!870486 () Bool)

(declare-fun res!591763 () Bool)

(assert (=> b!870486 (=> (not res!591763) (not e!484735))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870486 (= res!591763 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27218 () Bool)

(assert (=> mapIsEmpty!27218 mapRes!27218))

(declare-fun b!870487 () Bool)

(declare-fun res!591758 () Bool)

(assert (=> b!870487 (=> (not res!591758) (not e!484735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50292 (_ BitVec 32)) Bool)

(assert (=> b!870487 (= res!591758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27218 () Bool)

(declare-fun tp!52334 () Bool)

(assert (=> mapNonEmpty!27218 (= mapRes!27218 (and tp!52334 e!484732))))

(declare-fun mapValue!27218 () ValueCell!8100)

(declare-fun mapKey!27218 () (_ BitVec 32))

(declare-fun mapRest!27218 () (Array (_ BitVec 32) ValueCell!8100))

(assert (=> mapNonEmpty!27218 (= (arr!24172 _values!688) (store mapRest!27218 mapKey!27218 mapValue!27218))))

(declare-fun b!870488 () Bool)

(assert (=> b!870488 (= e!484735 e!484736)))

(declare-fun res!591760 () Bool)

(assert (=> b!870488 (=> (not res!591760) (not e!484736))))

(assert (=> b!870488 (= res!591760 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395144 () ListLongMap!10191)

(assert (=> b!870488 (= lt!395144 (getCurrentListMapNoExtraKeys!3075 _keys!868 lt!395145 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!870488 (= lt!395145 (array!50291 (store (arr!24172 _values!688) i!612 (ValueCellFull!8100 v!557)) (size!24613 _values!688)))))

(declare-fun lt!395142 () ListLongMap!10191)

(assert (=> b!870488 (= lt!395142 (getCurrentListMapNoExtraKeys!3075 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870485 () Bool)

(declare-fun res!591762 () Bool)

(assert (=> b!870485 (=> (not res!591762) (not e!484735))))

(assert (=> b!870485 (= res!591762 (and (= (select (arr!24173 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!591765 () Bool)

(assert (=> start!74056 (=> (not res!591765) (not e!484735))))

(assert (=> start!74056 (= res!591765 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24614 _keys!868))))))

(assert (=> start!74056 e!484735))

(assert (=> start!74056 tp_is_empty!17079))

(assert (=> start!74056 true))

(assert (=> start!74056 tp!52333))

(declare-fun array_inv!19062 (array!50292) Bool)

(assert (=> start!74056 (array_inv!19062 _keys!868)))

(declare-fun array_inv!19063 (array!50290) Bool)

(assert (=> start!74056 (and (array_inv!19063 _values!688) e!484734)))

(assert (= (and start!74056 res!591765) b!870486))

(assert (= (and b!870486 res!591763) b!870479))

(assert (= (and b!870479 res!591759) b!870487))

(assert (= (and b!870487 res!591758) b!870481))

(assert (= (and b!870481 res!591761) b!870482))

(assert (= (and b!870482 res!591764) b!870477))

(assert (= (and b!870477 res!591757) b!870485))

(assert (= (and b!870485 res!591762) b!870488))

(assert (= (and b!870488 res!591760) b!870483))

(assert (= (and b!870478 condMapEmpty!27218) mapIsEmpty!27218))

(assert (= (and b!870478 (not condMapEmpty!27218)) mapNonEmpty!27218))

(get-info :version)

(assert (= (and mapNonEmpty!27218 ((_ is ValueCellFull!8100) mapValue!27218)) b!870484))

(assert (= (and b!870478 ((_ is ValueCellFull!8100) mapDefault!27218)) b!870480))

(assert (= start!74056 b!870478))

(declare-fun m!811921 () Bool)

(assert (=> b!870486 m!811921))

(declare-fun m!811923 () Bool)

(assert (=> b!870487 m!811923))

(declare-fun m!811925 () Bool)

(assert (=> b!870477 m!811925))

(declare-fun m!811927 () Bool)

(assert (=> b!870488 m!811927))

(declare-fun m!811929 () Bool)

(assert (=> b!870488 m!811929))

(declare-fun m!811931 () Bool)

(assert (=> b!870488 m!811931))

(declare-fun m!811933 () Bool)

(assert (=> b!870481 m!811933))

(declare-fun m!811935 () Bool)

(assert (=> mapNonEmpty!27218 m!811935))

(declare-fun m!811937 () Bool)

(assert (=> start!74056 m!811937))

(declare-fun m!811939 () Bool)

(assert (=> start!74056 m!811939))

(declare-fun m!811941 () Bool)

(assert (=> b!870485 m!811941))

(declare-fun m!811943 () Bool)

(assert (=> b!870483 m!811943))

(declare-fun m!811945 () Bool)

(assert (=> b!870483 m!811945))

(assert (=> b!870483 m!811945))

(declare-fun m!811947 () Bool)

(assert (=> b!870483 m!811947))

(declare-fun m!811949 () Bool)

(assert (=> b!870483 m!811949))

(check-sat (not b!870483) (not b!870486) (not b!870488) (not b!870481) (not b_next!14943) tp_is_empty!17079 (not start!74056) (not mapNonEmpty!27218) (not b!870477) b_and!24713 (not b!870487))
(check-sat b_and!24713 (not b_next!14943))
