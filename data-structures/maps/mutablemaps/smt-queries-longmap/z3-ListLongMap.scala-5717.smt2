; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74116 () Bool)

(assert start!74116)

(declare-fun b_free!14997 () Bool)

(declare-fun b_next!14997 () Bool)

(assert (=> start!74116 (= b_free!14997 (not b_next!14997))))

(declare-fun tp!52504 () Bool)

(declare-fun b_and!24767 () Bool)

(assert (=> start!74116 (= tp!52504 b_and!24767)))

(declare-fun b!871525 () Bool)

(declare-fun res!592521 () Bool)

(declare-fun e!485269 () Bool)

(assert (=> b!871525 (=> (not res!592521) (not e!485269))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871525 (= res!592521 (validMask!0 mask!1196))))

(declare-fun res!592524 () Bool)

(assert (=> start!74116 (=> (not res!592524) (not e!485269))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50406 0))(
  ( (array!50407 (arr!24230 (Array (_ BitVec 32) (_ BitVec 64))) (size!24671 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50406)

(assert (=> start!74116 (= res!592524 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24671 _keys!868))))))

(assert (=> start!74116 e!485269))

(declare-fun tp_is_empty!17139 () Bool)

(assert (=> start!74116 tp_is_empty!17139))

(assert (=> start!74116 true))

(assert (=> start!74116 tp!52504))

(declare-fun array_inv!19106 (array!50406) Bool)

(assert (=> start!74116 (array_inv!19106 _keys!868)))

(declare-datatypes ((V!27899 0))(
  ( (V!27900 (val!8617 Int)) )
))
(declare-datatypes ((ValueCell!8130 0))(
  ( (ValueCellFull!8130 (v!11038 V!27899)) (EmptyCell!8130) )
))
(declare-datatypes ((array!50408 0))(
  ( (array!50409 (arr!24231 (Array (_ BitVec 32) ValueCell!8130)) (size!24672 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50408)

(declare-fun e!485271 () Bool)

(declare-fun array_inv!19107 (array!50408) Bool)

(assert (=> start!74116 (and (array_inv!19107 _values!688) e!485271)))

(declare-fun b!871526 () Bool)

(declare-fun res!592518 () Bool)

(assert (=> b!871526 (=> (not res!592518) (not e!485269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50406 (_ BitVec 32)) Bool)

(assert (=> b!871526 (= res!592518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871527 () Bool)

(declare-fun e!485267 () Bool)

(assert (=> b!871527 (= e!485267 tp_is_empty!17139)))

(declare-fun b!871528 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!871528 (= e!485269 (and (not (= from!1053 i!612)) (bvsge from!1053 i!612)))))

(declare-fun v!557 () V!27899)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11448 0))(
  ( (tuple2!11449 (_1!5734 (_ BitVec 64)) (_2!5734 V!27899)) )
))
(declare-datatypes ((List!17303 0))(
  ( (Nil!17300) (Cons!17299 (h!18430 tuple2!11448) (t!24348 List!17303)) )
))
(declare-datatypes ((ListLongMap!10231 0))(
  ( (ListLongMap!10232 (toList!5131 List!17303)) )
))
(declare-fun lt!395466 () ListLongMap!10231)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27899)

(declare-fun zeroValue!654 () V!27899)

(declare-fun getCurrentListMapNoExtraKeys!3095 (array!50406 array!50408 (_ BitVec 32) (_ BitVec 32) V!27899 V!27899 (_ BitVec 32) Int) ListLongMap!10231)

(assert (=> b!871528 (= lt!395466 (getCurrentListMapNoExtraKeys!3095 _keys!868 (array!50409 (store (arr!24231 _values!688) i!612 (ValueCellFull!8130 v!557)) (size!24672 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395465 () ListLongMap!10231)

(assert (=> b!871528 (= lt!395465 (getCurrentListMapNoExtraKeys!3095 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!871529 () Bool)

(declare-fun e!485270 () Bool)

(assert (=> b!871529 (= e!485270 tp_is_empty!17139)))

(declare-fun b!871530 () Bool)

(declare-fun res!592517 () Bool)

(assert (=> b!871530 (=> (not res!592517) (not e!485269))))

(declare-datatypes ((List!17304 0))(
  ( (Nil!17301) (Cons!17300 (h!18431 (_ BitVec 64)) (t!24349 List!17304)) )
))
(declare-fun arrayNoDuplicates!0 (array!50406 (_ BitVec 32) List!17304) Bool)

(assert (=> b!871530 (= res!592517 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17301))))

(declare-fun b!871531 () Bool)

(declare-fun res!592523 () Bool)

(assert (=> b!871531 (=> (not res!592523) (not e!485269))))

(assert (=> b!871531 (= res!592523 (and (= (size!24672 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24671 _keys!868) (size!24672 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27308 () Bool)

(declare-fun mapRes!27308 () Bool)

(declare-fun tp!52505 () Bool)

(assert (=> mapNonEmpty!27308 (= mapRes!27308 (and tp!52505 e!485267))))

(declare-fun mapKey!27308 () (_ BitVec 32))

(declare-fun mapRest!27308 () (Array (_ BitVec 32) ValueCell!8130))

(declare-fun mapValue!27308 () ValueCell!8130)

(assert (=> mapNonEmpty!27308 (= (arr!24231 _values!688) (store mapRest!27308 mapKey!27308 mapValue!27308))))

(declare-fun b!871532 () Bool)

(assert (=> b!871532 (= e!485271 (and e!485270 mapRes!27308))))

(declare-fun condMapEmpty!27308 () Bool)

(declare-fun mapDefault!27308 () ValueCell!8130)

(assert (=> b!871532 (= condMapEmpty!27308 (= (arr!24231 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8130)) mapDefault!27308)))))

(declare-fun b!871533 () Bool)

(declare-fun res!592519 () Bool)

(assert (=> b!871533 (=> (not res!592519) (not e!485269))))

(assert (=> b!871533 (= res!592519 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24671 _keys!868))))))

(declare-fun mapIsEmpty!27308 () Bool)

(assert (=> mapIsEmpty!27308 mapRes!27308))

(declare-fun b!871534 () Bool)

(declare-fun res!592520 () Bool)

(assert (=> b!871534 (=> (not res!592520) (not e!485269))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871534 (= res!592520 (validKeyInArray!0 k0!854))))

(declare-fun b!871535 () Bool)

(declare-fun res!592522 () Bool)

(assert (=> b!871535 (=> (not res!592522) (not e!485269))))

(assert (=> b!871535 (= res!592522 (and (= (select (arr!24230 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!74116 res!592524) b!871525))

(assert (= (and b!871525 res!592521) b!871531))

(assert (= (and b!871531 res!592523) b!871526))

(assert (= (and b!871526 res!592518) b!871530))

(assert (= (and b!871530 res!592517) b!871533))

(assert (= (and b!871533 res!592519) b!871534))

(assert (= (and b!871534 res!592520) b!871535))

(assert (= (and b!871535 res!592522) b!871528))

(assert (= (and b!871532 condMapEmpty!27308) mapIsEmpty!27308))

(assert (= (and b!871532 (not condMapEmpty!27308)) mapNonEmpty!27308))

(get-info :version)

(assert (= (and mapNonEmpty!27308 ((_ is ValueCellFull!8130) mapValue!27308)) b!871527))

(assert (= (and b!871532 ((_ is ValueCellFull!8130) mapDefault!27308)) b!871529))

(assert (= start!74116 b!871532))

(declare-fun m!812771 () Bool)

(assert (=> mapNonEmpty!27308 m!812771))

(declare-fun m!812773 () Bool)

(assert (=> start!74116 m!812773))

(declare-fun m!812775 () Bool)

(assert (=> start!74116 m!812775))

(declare-fun m!812777 () Bool)

(assert (=> b!871526 m!812777))

(declare-fun m!812779 () Bool)

(assert (=> b!871535 m!812779))

(declare-fun m!812781 () Bool)

(assert (=> b!871530 m!812781))

(declare-fun m!812783 () Bool)

(assert (=> b!871525 m!812783))

(declare-fun m!812785 () Bool)

(assert (=> b!871528 m!812785))

(declare-fun m!812787 () Bool)

(assert (=> b!871528 m!812787))

(declare-fun m!812789 () Bool)

(assert (=> b!871528 m!812789))

(declare-fun m!812791 () Bool)

(assert (=> b!871534 m!812791))

(check-sat (not b_next!14997) (not b!871534) b_and!24767 (not b!871526) (not b!871525) (not start!74116) (not mapNonEmpty!27308) (not b!871528) (not b!871530) tp_is_empty!17139)
(check-sat b_and!24767 (not b_next!14997))
