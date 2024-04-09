; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74546 () Bool)

(assert start!74546)

(declare-fun b_free!15207 () Bool)

(declare-fun b_next!15207 () Bool)

(assert (=> start!74546 (= b_free!15207 (not b_next!15207))))

(declare-fun tp!53304 () Bool)

(declare-fun b_and!25101 () Bool)

(assert (=> start!74546 (= tp!53304 b_and!25101)))

(declare-fun b!877601 () Bool)

(declare-fun res!596294 () Bool)

(declare-fun e!488534 () Bool)

(assert (=> b!877601 (=> (not res!596294) (not e!488534))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51012 0))(
  ( (array!51013 (arr!24528 (Array (_ BitVec 32) (_ BitVec 64))) (size!24969 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51012)

(declare-datatypes ((V!28315 0))(
  ( (V!28316 (val!8773 Int)) )
))
(declare-datatypes ((ValueCell!8286 0))(
  ( (ValueCellFull!8286 (v!11209 V!28315)) (EmptyCell!8286) )
))
(declare-datatypes ((array!51014 0))(
  ( (array!51015 (arr!24529 (Array (_ BitVec 32) ValueCell!8286)) (size!24970 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51014)

(assert (=> b!877601 (= res!596294 (and (= (size!24970 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24969 _keys!868) (size!24970 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877602 () Bool)

(declare-fun e!488537 () Bool)

(declare-fun tp_is_empty!17451 () Bool)

(assert (=> b!877602 (= e!488537 tp_is_empty!17451)))

(declare-fun b!877603 () Bool)

(declare-fun res!596300 () Bool)

(assert (=> b!877603 (=> (not res!596300) (not e!488534))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877603 (= res!596300 (validKeyInArray!0 k0!854))))

(declare-fun b!877604 () Bool)

(assert (=> b!877604 (= e!488534 false)))

(declare-datatypes ((tuple2!11616 0))(
  ( (tuple2!11617 (_1!5818 (_ BitVec 64)) (_2!5818 V!28315)) )
))
(declare-datatypes ((List!17498 0))(
  ( (Nil!17495) (Cons!17494 (h!18625 tuple2!11616) (t!24595 List!17498)) )
))
(declare-datatypes ((ListLongMap!10399 0))(
  ( (ListLongMap!10400 (toList!5215 List!17498)) )
))
(declare-fun lt!397075 () ListLongMap!10399)

(declare-fun v!557 () V!28315)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28315)

(declare-fun zeroValue!654 () V!28315)

(declare-fun getCurrentListMapNoExtraKeys!3177 (array!51012 array!51014 (_ BitVec 32) (_ BitVec 32) V!28315 V!28315 (_ BitVec 32) Int) ListLongMap!10399)

(assert (=> b!877604 (= lt!397075 (getCurrentListMapNoExtraKeys!3177 _keys!868 (array!51015 (store (arr!24529 _values!688) i!612 (ValueCellFull!8286 v!557)) (size!24970 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397076 () ListLongMap!10399)

(assert (=> b!877604 (= lt!397076 (getCurrentListMapNoExtraKeys!3177 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27792 () Bool)

(declare-fun mapRes!27792 () Bool)

(declare-fun tp!53303 () Bool)

(assert (=> mapNonEmpty!27792 (= mapRes!27792 (and tp!53303 e!488537))))

(declare-fun mapKey!27792 () (_ BitVec 32))

(declare-fun mapValue!27792 () ValueCell!8286)

(declare-fun mapRest!27792 () (Array (_ BitVec 32) ValueCell!8286))

(assert (=> mapNonEmpty!27792 (= (arr!24529 _values!688) (store mapRest!27792 mapKey!27792 mapValue!27792))))

(declare-fun res!596298 () Bool)

(assert (=> start!74546 (=> (not res!596298) (not e!488534))))

(assert (=> start!74546 (= res!596298 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24969 _keys!868))))))

(assert (=> start!74546 e!488534))

(assert (=> start!74546 tp_is_empty!17451))

(assert (=> start!74546 true))

(assert (=> start!74546 tp!53304))

(declare-fun array_inv!19318 (array!51012) Bool)

(assert (=> start!74546 (array_inv!19318 _keys!868)))

(declare-fun e!488535 () Bool)

(declare-fun array_inv!19319 (array!51014) Bool)

(assert (=> start!74546 (and (array_inv!19319 _values!688) e!488535)))

(declare-fun b!877605 () Bool)

(declare-fun e!488536 () Bool)

(assert (=> b!877605 (= e!488535 (and e!488536 mapRes!27792))))

(declare-fun condMapEmpty!27792 () Bool)

(declare-fun mapDefault!27792 () ValueCell!8286)

(assert (=> b!877605 (= condMapEmpty!27792 (= (arr!24529 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8286)) mapDefault!27792)))))

(declare-fun b!877606 () Bool)

(declare-fun res!596297 () Bool)

(assert (=> b!877606 (=> (not res!596297) (not e!488534))))

(declare-datatypes ((List!17499 0))(
  ( (Nil!17496) (Cons!17495 (h!18626 (_ BitVec 64)) (t!24596 List!17499)) )
))
(declare-fun arrayNoDuplicates!0 (array!51012 (_ BitVec 32) List!17499) Bool)

(assert (=> b!877606 (= res!596297 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17496))))

(declare-fun mapIsEmpty!27792 () Bool)

(assert (=> mapIsEmpty!27792 mapRes!27792))

(declare-fun b!877607 () Bool)

(assert (=> b!877607 (= e!488536 tp_is_empty!17451)))

(declare-fun b!877608 () Bool)

(declare-fun res!596301 () Bool)

(assert (=> b!877608 (=> (not res!596301) (not e!488534))))

(assert (=> b!877608 (= res!596301 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24969 _keys!868))))))

(declare-fun b!877609 () Bool)

(declare-fun res!596299 () Bool)

(assert (=> b!877609 (=> (not res!596299) (not e!488534))))

(assert (=> b!877609 (= res!596299 (and (= (select (arr!24528 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!877610 () Bool)

(declare-fun res!596296 () Bool)

(assert (=> b!877610 (=> (not res!596296) (not e!488534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877610 (= res!596296 (validMask!0 mask!1196))))

(declare-fun b!877611 () Bool)

(declare-fun res!596295 () Bool)

(assert (=> b!877611 (=> (not res!596295) (not e!488534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51012 (_ BitVec 32)) Bool)

(assert (=> b!877611 (= res!596295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74546 res!596298) b!877610))

(assert (= (and b!877610 res!596296) b!877601))

(assert (= (and b!877601 res!596294) b!877611))

(assert (= (and b!877611 res!596295) b!877606))

(assert (= (and b!877606 res!596297) b!877608))

(assert (= (and b!877608 res!596301) b!877603))

(assert (= (and b!877603 res!596300) b!877609))

(assert (= (and b!877609 res!596299) b!877604))

(assert (= (and b!877605 condMapEmpty!27792) mapIsEmpty!27792))

(assert (= (and b!877605 (not condMapEmpty!27792)) mapNonEmpty!27792))

(get-info :version)

(assert (= (and mapNonEmpty!27792 ((_ is ValueCellFull!8286) mapValue!27792)) b!877602))

(assert (= (and b!877605 ((_ is ValueCellFull!8286) mapDefault!27792)) b!877607))

(assert (= start!74546 b!877605))

(declare-fun m!817807 () Bool)

(assert (=> b!877606 m!817807))

(declare-fun m!817809 () Bool)

(assert (=> start!74546 m!817809))

(declare-fun m!817811 () Bool)

(assert (=> start!74546 m!817811))

(declare-fun m!817813 () Bool)

(assert (=> b!877603 m!817813))

(declare-fun m!817815 () Bool)

(assert (=> b!877611 m!817815))

(declare-fun m!817817 () Bool)

(assert (=> b!877610 m!817817))

(declare-fun m!817819 () Bool)

(assert (=> b!877609 m!817819))

(declare-fun m!817821 () Bool)

(assert (=> b!877604 m!817821))

(declare-fun m!817823 () Bool)

(assert (=> b!877604 m!817823))

(declare-fun m!817825 () Bool)

(assert (=> b!877604 m!817825))

(declare-fun m!817827 () Bool)

(assert (=> mapNonEmpty!27792 m!817827))

(check-sat (not b!877606) (not b_next!15207) b_and!25101 (not b!877604) tp_is_empty!17451 (not b!877611) (not b!877603) (not start!74546) (not mapNonEmpty!27792) (not b!877610))
(check-sat b_and!25101 (not b_next!15207))
