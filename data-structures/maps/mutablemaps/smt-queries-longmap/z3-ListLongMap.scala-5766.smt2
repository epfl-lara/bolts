; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74528 () Bool)

(assert start!74528)

(declare-fun b_free!15189 () Bool)

(declare-fun b_next!15189 () Bool)

(assert (=> start!74528 (= b_free!15189 (not b_next!15189))))

(declare-fun tp!53249 () Bool)

(declare-fun b_and!25083 () Bool)

(assert (=> start!74528 (= tp!53249 b_and!25083)))

(declare-fun mapIsEmpty!27765 () Bool)

(declare-fun mapRes!27765 () Bool)

(assert (=> mapIsEmpty!27765 mapRes!27765))

(declare-fun b!877304 () Bool)

(declare-fun res!596083 () Bool)

(declare-fun e!488401 () Bool)

(assert (=> b!877304 (=> (not res!596083) (not e!488401))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877304 (= res!596083 (validKeyInArray!0 k0!854))))

(declare-fun b!877305 () Bool)

(declare-fun e!488399 () Bool)

(declare-fun e!488403 () Bool)

(assert (=> b!877305 (= e!488399 (and e!488403 mapRes!27765))))

(declare-fun condMapEmpty!27765 () Bool)

(declare-datatypes ((V!28291 0))(
  ( (V!28292 (val!8764 Int)) )
))
(declare-datatypes ((ValueCell!8277 0))(
  ( (ValueCellFull!8277 (v!11200 V!28291)) (EmptyCell!8277) )
))
(declare-datatypes ((array!50976 0))(
  ( (array!50977 (arr!24510 (Array (_ BitVec 32) ValueCell!8277)) (size!24951 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50976)

(declare-fun mapDefault!27765 () ValueCell!8277)

(assert (=> b!877305 (= condMapEmpty!27765 (= (arr!24510 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8277)) mapDefault!27765)))))

(declare-fun b!877306 () Bool)

(declare-fun res!596085 () Bool)

(assert (=> b!877306 (=> (not res!596085) (not e!488401))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50978 0))(
  ( (array!50979 (arr!24511 (Array (_ BitVec 32) (_ BitVec 64))) (size!24952 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50978)

(assert (=> b!877306 (= res!596085 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24952 _keys!868))))))

(declare-fun b!877307 () Bool)

(declare-fun e!488402 () Bool)

(declare-fun tp_is_empty!17433 () Bool)

(assert (=> b!877307 (= e!488402 tp_is_empty!17433)))

(declare-fun res!596084 () Bool)

(assert (=> start!74528 (=> (not res!596084) (not e!488401))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74528 (= res!596084 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24952 _keys!868))))))

(assert (=> start!74528 e!488401))

(assert (=> start!74528 tp_is_empty!17433))

(assert (=> start!74528 true))

(assert (=> start!74528 tp!53249))

(declare-fun array_inv!19306 (array!50978) Bool)

(assert (=> start!74528 (array_inv!19306 _keys!868)))

(declare-fun array_inv!19307 (array!50976) Bool)

(assert (=> start!74528 (and (array_inv!19307 _values!688) e!488399)))

(declare-fun b!877308 () Bool)

(declare-fun res!596079 () Bool)

(assert (=> b!877308 (=> (not res!596079) (not e!488401))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50978 (_ BitVec 32)) Bool)

(assert (=> b!877308 (= res!596079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!877309 () Bool)

(declare-fun res!596078 () Bool)

(assert (=> b!877309 (=> (not res!596078) (not e!488401))))

(assert (=> b!877309 (= res!596078 (and (= (select (arr!24511 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!877310 () Bool)

(declare-fun res!596080 () Bool)

(assert (=> b!877310 (=> (not res!596080) (not e!488401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877310 (= res!596080 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27765 () Bool)

(declare-fun tp!53250 () Bool)

(assert (=> mapNonEmpty!27765 (= mapRes!27765 (and tp!53250 e!488402))))

(declare-fun mapKey!27765 () (_ BitVec 32))

(declare-fun mapRest!27765 () (Array (_ BitVec 32) ValueCell!8277))

(declare-fun mapValue!27765 () ValueCell!8277)

(assert (=> mapNonEmpty!27765 (= (arr!24510 _values!688) (store mapRest!27765 mapKey!27765 mapValue!27765))))

(declare-fun b!877311 () Bool)

(declare-fun res!596081 () Bool)

(assert (=> b!877311 (=> (not res!596081) (not e!488401))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!877311 (= res!596081 (and (= (size!24951 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24952 _keys!868) (size!24951 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877312 () Bool)

(declare-fun res!596082 () Bool)

(assert (=> b!877312 (=> (not res!596082) (not e!488401))))

(declare-datatypes ((List!17483 0))(
  ( (Nil!17480) (Cons!17479 (h!18610 (_ BitVec 64)) (t!24580 List!17483)) )
))
(declare-fun arrayNoDuplicates!0 (array!50978 (_ BitVec 32) List!17483) Bool)

(assert (=> b!877312 (= res!596082 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17480))))

(declare-fun b!877313 () Bool)

(assert (=> b!877313 (= e!488403 tp_is_empty!17433)))

(declare-fun b!877314 () Bool)

(assert (=> b!877314 (= e!488401 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612) (or (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!1053) (size!24952 _keys!868)))))))

(declare-fun v!557 () V!28291)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11602 0))(
  ( (tuple2!11603 (_1!5811 (_ BitVec 64)) (_2!5811 V!28291)) )
))
(declare-datatypes ((List!17484 0))(
  ( (Nil!17481) (Cons!17480 (h!18611 tuple2!11602) (t!24581 List!17484)) )
))
(declare-datatypes ((ListLongMap!10385 0))(
  ( (ListLongMap!10386 (toList!5208 List!17484)) )
))
(declare-fun lt!397021 () ListLongMap!10385)

(declare-fun minValue!654 () V!28291)

(declare-fun zeroValue!654 () V!28291)

(declare-fun getCurrentListMapNoExtraKeys!3170 (array!50978 array!50976 (_ BitVec 32) (_ BitVec 32) V!28291 V!28291 (_ BitVec 32) Int) ListLongMap!10385)

(assert (=> b!877314 (= lt!397021 (getCurrentListMapNoExtraKeys!3170 _keys!868 (array!50977 (store (arr!24510 _values!688) i!612 (ValueCellFull!8277 v!557)) (size!24951 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397022 () ListLongMap!10385)

(assert (=> b!877314 (= lt!397022 (getCurrentListMapNoExtraKeys!3170 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!74528 res!596084) b!877310))

(assert (= (and b!877310 res!596080) b!877311))

(assert (= (and b!877311 res!596081) b!877308))

(assert (= (and b!877308 res!596079) b!877312))

(assert (= (and b!877312 res!596082) b!877306))

(assert (= (and b!877306 res!596085) b!877304))

(assert (= (and b!877304 res!596083) b!877309))

(assert (= (and b!877309 res!596078) b!877314))

(assert (= (and b!877305 condMapEmpty!27765) mapIsEmpty!27765))

(assert (= (and b!877305 (not condMapEmpty!27765)) mapNonEmpty!27765))

(get-info :version)

(assert (= (and mapNonEmpty!27765 ((_ is ValueCellFull!8277) mapValue!27765)) b!877307))

(assert (= (and b!877305 ((_ is ValueCellFull!8277) mapDefault!27765)) b!877313))

(assert (= start!74528 b!877305))

(declare-fun m!817609 () Bool)

(assert (=> b!877309 m!817609))

(declare-fun m!817611 () Bool)

(assert (=> mapNonEmpty!27765 m!817611))

(declare-fun m!817613 () Bool)

(assert (=> b!877310 m!817613))

(declare-fun m!817615 () Bool)

(assert (=> b!877312 m!817615))

(declare-fun m!817617 () Bool)

(assert (=> b!877308 m!817617))

(declare-fun m!817619 () Bool)

(assert (=> b!877314 m!817619))

(declare-fun m!817621 () Bool)

(assert (=> b!877314 m!817621))

(declare-fun m!817623 () Bool)

(assert (=> b!877314 m!817623))

(declare-fun m!817625 () Bool)

(assert (=> b!877304 m!817625))

(declare-fun m!817627 () Bool)

(assert (=> start!74528 m!817627))

(declare-fun m!817629 () Bool)

(assert (=> start!74528 m!817629))

(check-sat (not b!877304) (not b!877314) (not b_next!15189) (not b!877308) b_and!25083 (not start!74528) (not b!877310) (not b!877312) tp_is_empty!17433 (not mapNonEmpty!27765))
(check-sat b_and!25083 (not b_next!15189))
