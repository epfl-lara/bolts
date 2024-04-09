; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74534 () Bool)

(assert start!74534)

(declare-fun b_free!15195 () Bool)

(declare-fun b_next!15195 () Bool)

(assert (=> start!74534 (= b_free!15195 (not b_next!15195))))

(declare-fun tp!53267 () Bool)

(declare-fun b_and!25089 () Bool)

(assert (=> start!74534 (= tp!53267 b_and!25089)))

(declare-fun b!877403 () Bool)

(declare-fun res!596154 () Bool)

(declare-fun e!488444 () Bool)

(assert (=> b!877403 (=> (not res!596154) (not e!488444))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50988 0))(
  ( (array!50989 (arr!24516 (Array (_ BitVec 32) (_ BitVec 64))) (size!24957 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50988)

(declare-datatypes ((V!28299 0))(
  ( (V!28300 (val!8767 Int)) )
))
(declare-datatypes ((ValueCell!8280 0))(
  ( (ValueCellFull!8280 (v!11203 V!28299)) (EmptyCell!8280) )
))
(declare-datatypes ((array!50990 0))(
  ( (array!50991 (arr!24517 (Array (_ BitVec 32) ValueCell!8280)) (size!24958 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50990)

(assert (=> b!877403 (= res!596154 (and (= (size!24958 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24957 _keys!868) (size!24958 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27774 () Bool)

(declare-fun mapRes!27774 () Bool)

(assert (=> mapIsEmpty!27774 mapRes!27774))

(declare-fun b!877404 () Bool)

(declare-fun res!596152 () Bool)

(assert (=> b!877404 (=> (not res!596152) (not e!488444))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!877404 (= res!596152 (and (= (select (arr!24516 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!877405 () Bool)

(declare-fun e!488448 () Bool)

(declare-fun tp_is_empty!17439 () Bool)

(assert (=> b!877405 (= e!488448 tp_is_empty!17439)))

(declare-fun b!877406 () Bool)

(declare-fun e!488447 () Bool)

(assert (=> b!877406 (= e!488447 tp_is_empty!17439)))

(declare-fun b!877407 () Bool)

(declare-fun res!596151 () Bool)

(assert (=> b!877407 (=> (not res!596151) (not e!488444))))

(declare-datatypes ((List!17487 0))(
  ( (Nil!17484) (Cons!17483 (h!18614 (_ BitVec 64)) (t!24584 List!17487)) )
))
(declare-fun arrayNoDuplicates!0 (array!50988 (_ BitVec 32) List!17487) Bool)

(assert (=> b!877407 (= res!596151 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17484))))

(declare-fun b!877408 () Bool)

(declare-fun res!596157 () Bool)

(assert (=> b!877408 (=> (not res!596157) (not e!488444))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877408 (= res!596157 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!27774 () Bool)

(declare-fun tp!53268 () Bool)

(assert (=> mapNonEmpty!27774 (= mapRes!27774 (and tp!53268 e!488447))))

(declare-fun mapValue!27774 () ValueCell!8280)

(declare-fun mapKey!27774 () (_ BitVec 32))

(declare-fun mapRest!27774 () (Array (_ BitVec 32) ValueCell!8280))

(assert (=> mapNonEmpty!27774 (= (arr!24517 _values!688) (store mapRest!27774 mapKey!27774 mapValue!27774))))

(declare-fun b!877409 () Bool)

(declare-fun res!596153 () Bool)

(assert (=> b!877409 (=> (not res!596153) (not e!488444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877409 (= res!596153 (validMask!0 mask!1196))))

(declare-fun res!596155 () Bool)

(assert (=> start!74534 (=> (not res!596155) (not e!488444))))

(assert (=> start!74534 (= res!596155 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24957 _keys!868))))))

(assert (=> start!74534 e!488444))

(assert (=> start!74534 tp_is_empty!17439))

(assert (=> start!74534 true))

(assert (=> start!74534 tp!53267))

(declare-fun array_inv!19310 (array!50988) Bool)

(assert (=> start!74534 (array_inv!19310 _keys!868)))

(declare-fun e!488445 () Bool)

(declare-fun array_inv!19311 (array!50990) Bool)

(assert (=> start!74534 (and (array_inv!19311 _values!688) e!488445)))

(declare-fun b!877410 () Bool)

(declare-fun res!596150 () Bool)

(assert (=> b!877410 (=> (not res!596150) (not e!488444))))

(assert (=> b!877410 (= res!596150 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24957 _keys!868))))))

(declare-fun b!877411 () Bool)

(assert (=> b!877411 (= e!488445 (and e!488448 mapRes!27774))))

(declare-fun condMapEmpty!27774 () Bool)

(declare-fun mapDefault!27774 () ValueCell!8280)

(assert (=> b!877411 (= condMapEmpty!27774 (= (arr!24517 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8280)) mapDefault!27774)))))

(declare-fun b!877412 () Bool)

(assert (=> b!877412 (= e!488444 false)))

(declare-fun v!557 () V!28299)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28299)

(declare-fun zeroValue!654 () V!28299)

(declare-datatypes ((tuple2!11606 0))(
  ( (tuple2!11607 (_1!5813 (_ BitVec 64)) (_2!5813 V!28299)) )
))
(declare-datatypes ((List!17488 0))(
  ( (Nil!17485) (Cons!17484 (h!18615 tuple2!11606) (t!24585 List!17488)) )
))
(declare-datatypes ((ListLongMap!10389 0))(
  ( (ListLongMap!10390 (toList!5210 List!17488)) )
))
(declare-fun lt!397039 () ListLongMap!10389)

(declare-fun getCurrentListMapNoExtraKeys!3172 (array!50988 array!50990 (_ BitVec 32) (_ BitVec 32) V!28299 V!28299 (_ BitVec 32) Int) ListLongMap!10389)

(assert (=> b!877412 (= lt!397039 (getCurrentListMapNoExtraKeys!3172 _keys!868 (array!50991 (store (arr!24517 _values!688) i!612 (ValueCellFull!8280 v!557)) (size!24958 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397040 () ListLongMap!10389)

(assert (=> b!877412 (= lt!397040 (getCurrentListMapNoExtraKeys!3172 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!877413 () Bool)

(declare-fun res!596156 () Bool)

(assert (=> b!877413 (=> (not res!596156) (not e!488444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50988 (_ BitVec 32)) Bool)

(assert (=> b!877413 (= res!596156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74534 res!596155) b!877409))

(assert (= (and b!877409 res!596153) b!877403))

(assert (= (and b!877403 res!596154) b!877413))

(assert (= (and b!877413 res!596156) b!877407))

(assert (= (and b!877407 res!596151) b!877410))

(assert (= (and b!877410 res!596150) b!877408))

(assert (= (and b!877408 res!596157) b!877404))

(assert (= (and b!877404 res!596152) b!877412))

(assert (= (and b!877411 condMapEmpty!27774) mapIsEmpty!27774))

(assert (= (and b!877411 (not condMapEmpty!27774)) mapNonEmpty!27774))

(get-info :version)

(assert (= (and mapNonEmpty!27774 ((_ is ValueCellFull!8280) mapValue!27774)) b!877406))

(assert (= (and b!877411 ((_ is ValueCellFull!8280) mapDefault!27774)) b!877405))

(assert (= start!74534 b!877411))

(declare-fun m!817675 () Bool)

(assert (=> b!877404 m!817675))

(declare-fun m!817677 () Bool)

(assert (=> b!877409 m!817677))

(declare-fun m!817679 () Bool)

(assert (=> b!877412 m!817679))

(declare-fun m!817681 () Bool)

(assert (=> b!877412 m!817681))

(declare-fun m!817683 () Bool)

(assert (=> b!877412 m!817683))

(declare-fun m!817685 () Bool)

(assert (=> b!877413 m!817685))

(declare-fun m!817687 () Bool)

(assert (=> mapNonEmpty!27774 m!817687))

(declare-fun m!817689 () Bool)

(assert (=> b!877407 m!817689))

(declare-fun m!817691 () Bool)

(assert (=> start!74534 m!817691))

(declare-fun m!817693 () Bool)

(assert (=> start!74534 m!817693))

(declare-fun m!817695 () Bool)

(assert (=> b!877408 m!817695))

(check-sat (not b!877412) (not b!877409) b_and!25089 (not b!877407) (not mapNonEmpty!27774) (not b!877413) (not start!74534) (not b!877408) tp_is_empty!17439 (not b_next!15195))
(check-sat b_and!25089 (not b_next!15195))
