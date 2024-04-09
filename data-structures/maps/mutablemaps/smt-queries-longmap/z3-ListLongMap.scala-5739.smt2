; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74292 () Bool)

(assert start!74292)

(declare-fun b_free!15027 () Bool)

(declare-fun b_next!15027 () Bool)

(assert (=> start!74292 (= b_free!15027 (not b_next!15027))))

(declare-fun tp!52757 () Bool)

(declare-fun b_and!24821 () Bool)

(assert (=> start!74292 (= tp!52757 b_and!24821)))

(declare-fun b!873470 () Bool)

(declare-fun res!593666 () Bool)

(declare-fun e!486446 () Bool)

(assert (=> b!873470 (=> (not res!593666) (not e!486446))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50658 0))(
  ( (array!50659 (arr!24353 (Array (_ BitVec 32) (_ BitVec 64))) (size!24794 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50658)

(declare-datatypes ((V!28075 0))(
  ( (V!28076 (val!8683 Int)) )
))
(declare-datatypes ((ValueCell!8196 0))(
  ( (ValueCellFull!8196 (v!11108 V!28075)) (EmptyCell!8196) )
))
(declare-datatypes ((array!50660 0))(
  ( (array!50661 (arr!24354 (Array (_ BitVec 32) ValueCell!8196)) (size!24795 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50660)

(assert (=> b!873470 (= res!593666 (and (= (size!24795 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24794 _keys!868) (size!24795 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873472 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!873472 (= e!486446 (bvsge i!612 (size!24795 _values!688)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28075)

(declare-fun zeroValue!654 () V!28075)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((tuple2!11468 0))(
  ( (tuple2!11469 (_1!5744 (_ BitVec 64)) (_2!5744 V!28075)) )
))
(declare-datatypes ((List!17355 0))(
  ( (Nil!17352) (Cons!17351 (h!18482 tuple2!11468) (t!24404 List!17355)) )
))
(declare-datatypes ((ListLongMap!10251 0))(
  ( (ListLongMap!10252 (toList!5141 List!17355)) )
))
(declare-fun lt!395743 () ListLongMap!10251)

(declare-fun getCurrentListMapNoExtraKeys!3105 (array!50658 array!50660 (_ BitVec 32) (_ BitVec 32) V!28075 V!28075 (_ BitVec 32) Int) ListLongMap!10251)

(assert (=> b!873472 (= lt!395743 (getCurrentListMapNoExtraKeys!3105 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27515 () Bool)

(declare-fun mapRes!27515 () Bool)

(declare-fun tp!52756 () Bool)

(declare-fun e!486445 () Bool)

(assert (=> mapNonEmpty!27515 (= mapRes!27515 (and tp!52756 e!486445))))

(declare-fun mapValue!27515 () ValueCell!8196)

(declare-fun mapRest!27515 () (Array (_ BitVec 32) ValueCell!8196))

(declare-fun mapKey!27515 () (_ BitVec 32))

(assert (=> mapNonEmpty!27515 (= (arr!24354 _values!688) (store mapRest!27515 mapKey!27515 mapValue!27515))))

(declare-fun b!873473 () Bool)

(declare-fun res!593670 () Bool)

(assert (=> b!873473 (=> (not res!593670) (not e!486446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873473 (= res!593670 (validMask!0 mask!1196))))

(declare-fun b!873474 () Bool)

(declare-fun e!486447 () Bool)

(declare-fun e!486448 () Bool)

(assert (=> b!873474 (= e!486447 (and e!486448 mapRes!27515))))

(declare-fun condMapEmpty!27515 () Bool)

(declare-fun mapDefault!27515 () ValueCell!8196)

(assert (=> b!873474 (= condMapEmpty!27515 (= (arr!24354 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8196)) mapDefault!27515)))))

(declare-fun b!873475 () Bool)

(declare-fun res!593667 () Bool)

(assert (=> b!873475 (=> (not res!593667) (not e!486446))))

(assert (=> b!873475 (= res!593667 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24794 _keys!868))))))

(declare-fun b!873476 () Bool)

(declare-fun tp_is_empty!17271 () Bool)

(assert (=> b!873476 (= e!486448 tp_is_empty!17271)))

(declare-fun b!873477 () Bool)

(declare-fun res!593668 () Bool)

(assert (=> b!873477 (=> (not res!593668) (not e!486446))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873477 (= res!593668 (validKeyInArray!0 k0!854))))

(declare-fun b!873478 () Bool)

(declare-fun res!593665 () Bool)

(assert (=> b!873478 (=> (not res!593665) (not e!486446))))

(assert (=> b!873478 (= res!593665 (and (= (select (arr!24353 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27515 () Bool)

(assert (=> mapIsEmpty!27515 mapRes!27515))

(declare-fun b!873471 () Bool)

(assert (=> b!873471 (= e!486445 tp_is_empty!17271)))

(declare-fun res!593671 () Bool)

(assert (=> start!74292 (=> (not res!593671) (not e!486446))))

(assert (=> start!74292 (= res!593671 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24794 _keys!868))))))

(assert (=> start!74292 e!486446))

(assert (=> start!74292 true))

(assert (=> start!74292 tp!52757))

(declare-fun array_inv!19192 (array!50658) Bool)

(assert (=> start!74292 (array_inv!19192 _keys!868)))

(declare-fun array_inv!19193 (array!50660) Bool)

(assert (=> start!74292 (and (array_inv!19193 _values!688) e!486447)))

(assert (=> start!74292 tp_is_empty!17271))

(declare-fun b!873479 () Bool)

(declare-fun res!593669 () Bool)

(assert (=> b!873479 (=> (not res!593669) (not e!486446))))

(declare-datatypes ((List!17356 0))(
  ( (Nil!17353) (Cons!17352 (h!18483 (_ BitVec 64)) (t!24405 List!17356)) )
))
(declare-fun arrayNoDuplicates!0 (array!50658 (_ BitVec 32) List!17356) Bool)

(assert (=> b!873479 (= res!593669 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17353))))

(declare-fun b!873480 () Bool)

(declare-fun res!593664 () Bool)

(assert (=> b!873480 (=> (not res!593664) (not e!486446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50658 (_ BitVec 32)) Bool)

(assert (=> b!873480 (= res!593664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74292 res!593671) b!873473))

(assert (= (and b!873473 res!593670) b!873470))

(assert (= (and b!873470 res!593666) b!873480))

(assert (= (and b!873480 res!593664) b!873479))

(assert (= (and b!873479 res!593669) b!873475))

(assert (= (and b!873475 res!593667) b!873477))

(assert (= (and b!873477 res!593668) b!873478))

(assert (= (and b!873478 res!593665) b!873472))

(assert (= (and b!873474 condMapEmpty!27515) mapIsEmpty!27515))

(assert (= (and b!873474 (not condMapEmpty!27515)) mapNonEmpty!27515))

(get-info :version)

(assert (= (and mapNonEmpty!27515 ((_ is ValueCellFull!8196) mapValue!27515)) b!873471))

(assert (= (and b!873474 ((_ is ValueCellFull!8196) mapDefault!27515)) b!873476))

(assert (= start!74292 b!873474))

(declare-fun m!814023 () Bool)

(assert (=> start!74292 m!814023))

(declare-fun m!814025 () Bool)

(assert (=> start!74292 m!814025))

(declare-fun m!814027 () Bool)

(assert (=> b!873480 m!814027))

(declare-fun m!814029 () Bool)

(assert (=> b!873473 m!814029))

(declare-fun m!814031 () Bool)

(assert (=> b!873477 m!814031))

(declare-fun m!814033 () Bool)

(assert (=> b!873472 m!814033))

(declare-fun m!814035 () Bool)

(assert (=> b!873479 m!814035))

(declare-fun m!814037 () Bool)

(assert (=> mapNonEmpty!27515 m!814037))

(declare-fun m!814039 () Bool)

(assert (=> b!873478 m!814039))

(check-sat (not b!873472) b_and!24821 (not b!873479) tp_is_empty!17271 (not start!74292) (not b!873473) (not b!873480) (not mapNonEmpty!27515) (not b!873477) (not b_next!15027))
(check-sat b_and!24821 (not b_next!15027))
