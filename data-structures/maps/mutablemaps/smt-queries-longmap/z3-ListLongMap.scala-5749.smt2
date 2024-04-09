; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74352 () Bool)

(assert start!74352)

(declare-fun b_free!15087 () Bool)

(declare-fun b_next!15087 () Bool)

(assert (=> start!74352 (= b_free!15087 (not b_next!15087))))

(declare-fun tp!52937 () Bool)

(declare-fun b_and!24881 () Bool)

(assert (=> start!74352 (= tp!52937 b_and!24881)))

(declare-fun b!874461 () Bool)

(declare-fun e!486894 () Bool)

(declare-fun e!486898 () Bool)

(declare-fun mapRes!27605 () Bool)

(assert (=> b!874461 (= e!486894 (and e!486898 mapRes!27605))))

(declare-fun condMapEmpty!27605 () Bool)

(declare-datatypes ((V!28155 0))(
  ( (V!28156 (val!8713 Int)) )
))
(declare-datatypes ((ValueCell!8226 0))(
  ( (ValueCellFull!8226 (v!11138 V!28155)) (EmptyCell!8226) )
))
(declare-datatypes ((array!50774 0))(
  ( (array!50775 (arr!24411 (Array (_ BitVec 32) ValueCell!8226)) (size!24852 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50774)

(declare-fun mapDefault!27605 () ValueCell!8226)

(assert (=> b!874461 (= condMapEmpty!27605 (= (arr!24411 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8226)) mapDefault!27605)))))

(declare-fun b!874462 () Bool)

(declare-fun res!594390 () Bool)

(declare-fun e!486897 () Bool)

(assert (=> b!874462 (=> (not res!594390) (not e!486897))))

(declare-datatypes ((array!50776 0))(
  ( (array!50777 (arr!24412 (Array (_ BitVec 32) (_ BitVec 64))) (size!24853 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50776)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50776 (_ BitVec 32)) Bool)

(assert (=> b!874462 (= res!594390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874463 () Bool)

(declare-fun res!594385 () Bool)

(assert (=> b!874463 (=> (not res!594385) (not e!486897))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874463 (= res!594385 (validKeyInArray!0 k0!854))))

(declare-fun b!874464 () Bool)

(declare-fun res!594391 () Bool)

(assert (=> b!874464 (=> (not res!594391) (not e!486897))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!874464 (= res!594391 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24853 _keys!868))))))

(declare-fun b!874465 () Bool)

(declare-fun res!594387 () Bool)

(assert (=> b!874465 (=> (not res!594387) (not e!486897))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!874465 (= res!594387 (and (= (select (arr!24412 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!27605 () Bool)

(declare-fun tp!52936 () Bool)

(declare-fun e!486896 () Bool)

(assert (=> mapNonEmpty!27605 (= mapRes!27605 (and tp!52936 e!486896))))

(declare-fun mapValue!27605 () ValueCell!8226)

(declare-fun mapRest!27605 () (Array (_ BitVec 32) ValueCell!8226))

(declare-fun mapKey!27605 () (_ BitVec 32))

(assert (=> mapNonEmpty!27605 (= (arr!24411 _values!688) (store mapRest!27605 mapKey!27605 mapValue!27605))))

(declare-fun b!874466 () Bool)

(declare-fun res!594384 () Bool)

(assert (=> b!874466 (=> (not res!594384) (not e!486897))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!874466 (= res!594384 (and (= (size!24852 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24853 _keys!868) (size!24852 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27605 () Bool)

(assert (=> mapIsEmpty!27605 mapRes!27605))

(declare-fun res!594386 () Bool)

(assert (=> start!74352 (=> (not res!594386) (not e!486897))))

(assert (=> start!74352 (= res!594386 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24853 _keys!868))))))

(assert (=> start!74352 e!486897))

(declare-fun tp_is_empty!17331 () Bool)

(assert (=> start!74352 tp_is_empty!17331))

(assert (=> start!74352 true))

(assert (=> start!74352 tp!52937))

(declare-fun array_inv!19232 (array!50776) Bool)

(assert (=> start!74352 (array_inv!19232 _keys!868)))

(declare-fun array_inv!19233 (array!50774) Bool)

(assert (=> start!74352 (and (array_inv!19233 _values!688) e!486894)))

(declare-fun b!874460 () Bool)

(assert (=> b!874460 (= e!486898 tp_is_empty!17331)))

(declare-fun b!874467 () Bool)

(assert (=> b!874467 (= e!486897 false)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11512 0))(
  ( (tuple2!11513 (_1!5766 (_ BitVec 64)) (_2!5766 V!28155)) )
))
(declare-datatypes ((List!17401 0))(
  ( (Nil!17398) (Cons!17397 (h!18528 tuple2!11512) (t!24450 List!17401)) )
))
(declare-datatypes ((ListLongMap!10295 0))(
  ( (ListLongMap!10296 (toList!5163 List!17401)) )
))
(declare-fun lt!395920 () ListLongMap!10295)

(declare-fun minValue!654 () V!28155)

(declare-fun zeroValue!654 () V!28155)

(declare-fun v!557 () V!28155)

(declare-fun getCurrentListMapNoExtraKeys!3127 (array!50776 array!50774 (_ BitVec 32) (_ BitVec 32) V!28155 V!28155 (_ BitVec 32) Int) ListLongMap!10295)

(assert (=> b!874467 (= lt!395920 (getCurrentListMapNoExtraKeys!3127 _keys!868 (array!50775 (store (arr!24411 _values!688) i!612 (ValueCellFull!8226 v!557)) (size!24852 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395919 () ListLongMap!10295)

(assert (=> b!874467 (= lt!395919 (getCurrentListMapNoExtraKeys!3127 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874468 () Bool)

(declare-fun res!594389 () Bool)

(assert (=> b!874468 (=> (not res!594389) (not e!486897))))

(declare-datatypes ((List!17402 0))(
  ( (Nil!17399) (Cons!17398 (h!18529 (_ BitVec 64)) (t!24451 List!17402)) )
))
(declare-fun arrayNoDuplicates!0 (array!50776 (_ BitVec 32) List!17402) Bool)

(assert (=> b!874468 (= res!594389 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17399))))

(declare-fun b!874469 () Bool)

(declare-fun res!594388 () Bool)

(assert (=> b!874469 (=> (not res!594388) (not e!486897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874469 (= res!594388 (validMask!0 mask!1196))))

(declare-fun b!874470 () Bool)

(assert (=> b!874470 (= e!486896 tp_is_empty!17331)))

(assert (= (and start!74352 res!594386) b!874469))

(assert (= (and b!874469 res!594388) b!874466))

(assert (= (and b!874466 res!594384) b!874462))

(assert (= (and b!874462 res!594390) b!874468))

(assert (= (and b!874468 res!594389) b!874464))

(assert (= (and b!874464 res!594391) b!874463))

(assert (= (and b!874463 res!594385) b!874465))

(assert (= (and b!874465 res!594387) b!874467))

(assert (= (and b!874461 condMapEmpty!27605) mapIsEmpty!27605))

(assert (= (and b!874461 (not condMapEmpty!27605)) mapNonEmpty!27605))

(get-info :version)

(assert (= (and mapNonEmpty!27605 ((_ is ValueCellFull!8226) mapValue!27605)) b!874470))

(assert (= (and b!874461 ((_ is ValueCellFull!8226) mapDefault!27605)) b!874460))

(assert (= start!74352 b!874461))

(declare-fun m!814675 () Bool)

(assert (=> b!874467 m!814675))

(declare-fun m!814677 () Bool)

(assert (=> b!874467 m!814677))

(declare-fun m!814679 () Bool)

(assert (=> b!874467 m!814679))

(declare-fun m!814681 () Bool)

(assert (=> b!874462 m!814681))

(declare-fun m!814683 () Bool)

(assert (=> mapNonEmpty!27605 m!814683))

(declare-fun m!814685 () Bool)

(assert (=> b!874463 m!814685))

(declare-fun m!814687 () Bool)

(assert (=> b!874468 m!814687))

(declare-fun m!814689 () Bool)

(assert (=> b!874469 m!814689))

(declare-fun m!814691 () Bool)

(assert (=> start!74352 m!814691))

(declare-fun m!814693 () Bool)

(assert (=> start!74352 m!814693))

(declare-fun m!814695 () Bool)

(assert (=> b!874465 m!814695))

(check-sat (not b!874469) tp_is_empty!17331 (not b!874467) (not b!874462) (not b_next!15087) (not start!74352) (not b!874468) (not b!874463) (not mapNonEmpty!27605) b_and!24881)
(check-sat b_and!24881 (not b_next!15087))
