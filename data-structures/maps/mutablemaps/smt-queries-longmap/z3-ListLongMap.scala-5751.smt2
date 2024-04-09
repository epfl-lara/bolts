; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74364 () Bool)

(assert start!74364)

(declare-fun b_free!15099 () Bool)

(declare-fun b_next!15099 () Bool)

(assert (=> start!74364 (= b_free!15099 (not b_next!15099))))

(declare-fun tp!52972 () Bool)

(declare-fun b_and!24893 () Bool)

(assert (=> start!74364 (= tp!52972 b_and!24893)))

(declare-fun b!874658 () Bool)

(declare-fun res!594530 () Bool)

(declare-fun e!486988 () Bool)

(assert (=> b!874658 (=> (not res!594530) (not e!486988))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874658 (= res!594530 (validKeyInArray!0 k0!854))))

(declare-fun b!874660 () Bool)

(assert (=> b!874660 (= e!486988 false)))

(declare-datatypes ((V!28171 0))(
  ( (V!28172 (val!8719 Int)) )
))
(declare-fun v!557 () V!28171)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50798 0))(
  ( (array!50799 (arr!24423 (Array (_ BitVec 32) (_ BitVec 64))) (size!24864 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50798)

(declare-datatypes ((ValueCell!8232 0))(
  ( (ValueCellFull!8232 (v!11144 V!28171)) (EmptyCell!8232) )
))
(declare-datatypes ((array!50800 0))(
  ( (array!50801 (arr!24424 (Array (_ BitVec 32) ValueCell!8232)) (size!24865 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50800)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28171)

(declare-fun zeroValue!654 () V!28171)

(declare-datatypes ((tuple2!11520 0))(
  ( (tuple2!11521 (_1!5770 (_ BitVec 64)) (_2!5770 V!28171)) )
))
(declare-datatypes ((List!17409 0))(
  ( (Nil!17406) (Cons!17405 (h!18536 tuple2!11520) (t!24458 List!17409)) )
))
(declare-datatypes ((ListLongMap!10303 0))(
  ( (ListLongMap!10304 (toList!5167 List!17409)) )
))
(declare-fun lt!395955 () ListLongMap!10303)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3131 (array!50798 array!50800 (_ BitVec 32) (_ BitVec 32) V!28171 V!28171 (_ BitVec 32) Int) ListLongMap!10303)

(assert (=> b!874660 (= lt!395955 (getCurrentListMapNoExtraKeys!3131 _keys!868 (array!50801 (store (arr!24424 _values!688) i!612 (ValueCellFull!8232 v!557)) (size!24865 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395956 () ListLongMap!10303)

(assert (=> b!874660 (= lt!395956 (getCurrentListMapNoExtraKeys!3131 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874661 () Bool)

(declare-fun res!594529 () Bool)

(assert (=> b!874661 (=> (not res!594529) (not e!486988))))

(assert (=> b!874661 (= res!594529 (and (= (select (arr!24423 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27623 () Bool)

(declare-fun mapRes!27623 () Bool)

(assert (=> mapIsEmpty!27623 mapRes!27623))

(declare-fun b!874662 () Bool)

(declare-fun res!594534 () Bool)

(assert (=> b!874662 (=> (not res!594534) (not e!486988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874662 (= res!594534 (validMask!0 mask!1196))))

(declare-fun b!874663 () Bool)

(declare-fun res!594533 () Bool)

(assert (=> b!874663 (=> (not res!594533) (not e!486988))))

(assert (=> b!874663 (= res!594533 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24864 _keys!868))))))

(declare-fun b!874664 () Bool)

(declare-fun res!594531 () Bool)

(assert (=> b!874664 (=> (not res!594531) (not e!486988))))

(assert (=> b!874664 (= res!594531 (and (= (size!24865 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24864 _keys!868) (size!24865 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874665 () Bool)

(declare-fun res!594532 () Bool)

(assert (=> b!874665 (=> (not res!594532) (not e!486988))))

(declare-datatypes ((List!17410 0))(
  ( (Nil!17407) (Cons!17406 (h!18537 (_ BitVec 64)) (t!24459 List!17410)) )
))
(declare-fun arrayNoDuplicates!0 (array!50798 (_ BitVec 32) List!17410) Bool)

(assert (=> b!874665 (= res!594532 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17407))))

(declare-fun b!874666 () Bool)

(declare-fun e!486985 () Bool)

(declare-fun tp_is_empty!17343 () Bool)

(assert (=> b!874666 (= e!486985 tp_is_empty!17343)))

(declare-fun b!874659 () Bool)

(declare-fun e!486986 () Bool)

(assert (=> b!874659 (= e!486986 tp_is_empty!17343)))

(declare-fun res!594528 () Bool)

(assert (=> start!74364 (=> (not res!594528) (not e!486988))))

(assert (=> start!74364 (= res!594528 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24864 _keys!868))))))

(assert (=> start!74364 e!486988))

(assert (=> start!74364 tp_is_empty!17343))

(assert (=> start!74364 true))

(assert (=> start!74364 tp!52972))

(declare-fun array_inv!19240 (array!50798) Bool)

(assert (=> start!74364 (array_inv!19240 _keys!868)))

(declare-fun e!486987 () Bool)

(declare-fun array_inv!19241 (array!50800) Bool)

(assert (=> start!74364 (and (array_inv!19241 _values!688) e!486987)))

(declare-fun b!874667 () Bool)

(assert (=> b!874667 (= e!486987 (and e!486986 mapRes!27623))))

(declare-fun condMapEmpty!27623 () Bool)

(declare-fun mapDefault!27623 () ValueCell!8232)

(assert (=> b!874667 (= condMapEmpty!27623 (= (arr!24424 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8232)) mapDefault!27623)))))

(declare-fun b!874668 () Bool)

(declare-fun res!594535 () Bool)

(assert (=> b!874668 (=> (not res!594535) (not e!486988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50798 (_ BitVec 32)) Bool)

(assert (=> b!874668 (= res!594535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27623 () Bool)

(declare-fun tp!52973 () Bool)

(assert (=> mapNonEmpty!27623 (= mapRes!27623 (and tp!52973 e!486985))))

(declare-fun mapValue!27623 () ValueCell!8232)

(declare-fun mapRest!27623 () (Array (_ BitVec 32) ValueCell!8232))

(declare-fun mapKey!27623 () (_ BitVec 32))

(assert (=> mapNonEmpty!27623 (= (arr!24424 _values!688) (store mapRest!27623 mapKey!27623 mapValue!27623))))

(assert (= (and start!74364 res!594528) b!874662))

(assert (= (and b!874662 res!594534) b!874664))

(assert (= (and b!874664 res!594531) b!874668))

(assert (= (and b!874668 res!594535) b!874665))

(assert (= (and b!874665 res!594532) b!874663))

(assert (= (and b!874663 res!594533) b!874658))

(assert (= (and b!874658 res!594530) b!874661))

(assert (= (and b!874661 res!594529) b!874660))

(assert (= (and b!874667 condMapEmpty!27623) mapIsEmpty!27623))

(assert (= (and b!874667 (not condMapEmpty!27623)) mapNonEmpty!27623))

(get-info :version)

(assert (= (and mapNonEmpty!27623 ((_ is ValueCellFull!8232) mapValue!27623)) b!874666))

(assert (= (and b!874667 ((_ is ValueCellFull!8232) mapDefault!27623)) b!874659))

(assert (= start!74364 b!874667))

(declare-fun m!814807 () Bool)

(assert (=> b!874658 m!814807))

(declare-fun m!814809 () Bool)

(assert (=> b!874668 m!814809))

(declare-fun m!814811 () Bool)

(assert (=> start!74364 m!814811))

(declare-fun m!814813 () Bool)

(assert (=> start!74364 m!814813))

(declare-fun m!814815 () Bool)

(assert (=> b!874665 m!814815))

(declare-fun m!814817 () Bool)

(assert (=> b!874661 m!814817))

(declare-fun m!814819 () Bool)

(assert (=> b!874660 m!814819))

(declare-fun m!814821 () Bool)

(assert (=> b!874660 m!814821))

(declare-fun m!814823 () Bool)

(assert (=> b!874660 m!814823))

(declare-fun m!814825 () Bool)

(assert (=> mapNonEmpty!27623 m!814825))

(declare-fun m!814827 () Bool)

(assert (=> b!874662 m!814827))

(check-sat (not b!874665) (not b_next!15099) (not start!74364) (not b!874660) (not b!874658) b_and!24893 tp_is_empty!17343 (not mapNonEmpty!27623) (not b!874668) (not b!874662))
(check-sat b_and!24893 (not b_next!15099))
