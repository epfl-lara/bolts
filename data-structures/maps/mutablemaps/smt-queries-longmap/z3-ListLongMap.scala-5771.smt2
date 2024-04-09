; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74558 () Bool)

(assert start!74558)

(declare-fun b_free!15219 () Bool)

(declare-fun b_next!15219 () Bool)

(assert (=> start!74558 (= b_free!15219 (not b_next!15219))))

(declare-fun tp!53339 () Bool)

(declare-fun b_and!25113 () Bool)

(assert (=> start!74558 (= tp!53339 b_and!25113)))

(declare-fun b!877799 () Bool)

(declare-fun res!596439 () Bool)

(declare-fun e!488624 () Bool)

(assert (=> b!877799 (=> (not res!596439) (not e!488624))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51036 0))(
  ( (array!51037 (arr!24540 (Array (_ BitVec 32) (_ BitVec 64))) (size!24981 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51036)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!877799 (= res!596439 (and (= (select (arr!24540 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!877800 () Bool)

(declare-fun res!596445 () Bool)

(assert (=> b!877800 (=> (not res!596445) (not e!488624))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28331 0))(
  ( (V!28332 (val!8779 Int)) )
))
(declare-datatypes ((ValueCell!8292 0))(
  ( (ValueCellFull!8292 (v!11215 V!28331)) (EmptyCell!8292) )
))
(declare-datatypes ((array!51038 0))(
  ( (array!51039 (arr!24541 (Array (_ BitVec 32) ValueCell!8292)) (size!24982 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51038)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!877800 (= res!596445 (and (= (size!24982 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24981 _keys!868) (size!24982 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877801 () Bool)

(assert (=> b!877801 (= e!488624 false)))

(declare-fun v!557 () V!28331)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11628 0))(
  ( (tuple2!11629 (_1!5824 (_ BitVec 64)) (_2!5824 V!28331)) )
))
(declare-datatypes ((List!17509 0))(
  ( (Nil!17506) (Cons!17505 (h!18636 tuple2!11628) (t!24606 List!17509)) )
))
(declare-datatypes ((ListLongMap!10411 0))(
  ( (ListLongMap!10412 (toList!5221 List!17509)) )
))
(declare-fun lt!397112 () ListLongMap!10411)

(declare-fun minValue!654 () V!28331)

(declare-fun zeroValue!654 () V!28331)

(declare-fun getCurrentListMapNoExtraKeys!3183 (array!51036 array!51038 (_ BitVec 32) (_ BitVec 32) V!28331 V!28331 (_ BitVec 32) Int) ListLongMap!10411)

(assert (=> b!877801 (= lt!397112 (getCurrentListMapNoExtraKeys!3183 _keys!868 (array!51039 (store (arr!24541 _values!688) i!612 (ValueCellFull!8292 v!557)) (size!24982 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397111 () ListLongMap!10411)

(assert (=> b!877801 (= lt!397111 (getCurrentListMapNoExtraKeys!3183 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!877802 () Bool)

(declare-fun e!488628 () Bool)

(declare-fun tp_is_empty!17463 () Bool)

(assert (=> b!877802 (= e!488628 tp_is_empty!17463)))

(declare-fun mapIsEmpty!27810 () Bool)

(declare-fun mapRes!27810 () Bool)

(assert (=> mapIsEmpty!27810 mapRes!27810))

(declare-fun b!877804 () Bool)

(declare-fun res!596442 () Bool)

(assert (=> b!877804 (=> (not res!596442) (not e!488624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877804 (= res!596442 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!27810 () Bool)

(declare-fun tp!53340 () Bool)

(assert (=> mapNonEmpty!27810 (= mapRes!27810 (and tp!53340 e!488628))))

(declare-fun mapKey!27810 () (_ BitVec 32))

(declare-fun mapRest!27810 () (Array (_ BitVec 32) ValueCell!8292))

(declare-fun mapValue!27810 () ValueCell!8292)

(assert (=> mapNonEmpty!27810 (= (arr!24541 _values!688) (store mapRest!27810 mapKey!27810 mapValue!27810))))

(declare-fun b!877805 () Bool)

(declare-fun res!596443 () Bool)

(assert (=> b!877805 (=> (not res!596443) (not e!488624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877805 (= res!596443 (validMask!0 mask!1196))))

(declare-fun b!877806 () Bool)

(declare-fun res!596438 () Bool)

(assert (=> b!877806 (=> (not res!596438) (not e!488624))))

(declare-datatypes ((List!17510 0))(
  ( (Nil!17507) (Cons!17506 (h!18637 (_ BitVec 64)) (t!24607 List!17510)) )
))
(declare-fun arrayNoDuplicates!0 (array!51036 (_ BitVec 32) List!17510) Bool)

(assert (=> b!877806 (= res!596438 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17507))))

(declare-fun b!877807 () Bool)

(declare-fun res!596440 () Bool)

(assert (=> b!877807 (=> (not res!596440) (not e!488624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51036 (_ BitVec 32)) Bool)

(assert (=> b!877807 (= res!596440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!596444 () Bool)

(assert (=> start!74558 (=> (not res!596444) (not e!488624))))

(assert (=> start!74558 (= res!596444 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24981 _keys!868))))))

(assert (=> start!74558 e!488624))

(assert (=> start!74558 tp_is_empty!17463))

(assert (=> start!74558 true))

(assert (=> start!74558 tp!53339))

(declare-fun array_inv!19328 (array!51036) Bool)

(assert (=> start!74558 (array_inv!19328 _keys!868)))

(declare-fun e!488627 () Bool)

(declare-fun array_inv!19329 (array!51038) Bool)

(assert (=> start!74558 (and (array_inv!19329 _values!688) e!488627)))

(declare-fun b!877803 () Bool)

(declare-fun res!596441 () Bool)

(assert (=> b!877803 (=> (not res!596441) (not e!488624))))

(assert (=> b!877803 (= res!596441 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24981 _keys!868))))))

(declare-fun b!877808 () Bool)

(declare-fun e!488626 () Bool)

(assert (=> b!877808 (= e!488626 tp_is_empty!17463)))

(declare-fun b!877809 () Bool)

(assert (=> b!877809 (= e!488627 (and e!488626 mapRes!27810))))

(declare-fun condMapEmpty!27810 () Bool)

(declare-fun mapDefault!27810 () ValueCell!8292)

(assert (=> b!877809 (= condMapEmpty!27810 (= (arr!24541 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8292)) mapDefault!27810)))))

(assert (= (and start!74558 res!596444) b!877805))

(assert (= (and b!877805 res!596443) b!877800))

(assert (= (and b!877800 res!596445) b!877807))

(assert (= (and b!877807 res!596440) b!877806))

(assert (= (and b!877806 res!596438) b!877803))

(assert (= (and b!877803 res!596441) b!877804))

(assert (= (and b!877804 res!596442) b!877799))

(assert (= (and b!877799 res!596439) b!877801))

(assert (= (and b!877809 condMapEmpty!27810) mapIsEmpty!27810))

(assert (= (and b!877809 (not condMapEmpty!27810)) mapNonEmpty!27810))

(get-info :version)

(assert (= (and mapNonEmpty!27810 ((_ is ValueCellFull!8292) mapValue!27810)) b!877802))

(assert (= (and b!877809 ((_ is ValueCellFull!8292) mapDefault!27810)) b!877808))

(assert (= start!74558 b!877809))

(declare-fun m!817939 () Bool)

(assert (=> b!877805 m!817939))

(declare-fun m!817941 () Bool)

(assert (=> mapNonEmpty!27810 m!817941))

(declare-fun m!817943 () Bool)

(assert (=> b!877804 m!817943))

(declare-fun m!817945 () Bool)

(assert (=> b!877806 m!817945))

(declare-fun m!817947 () Bool)

(assert (=> b!877807 m!817947))

(declare-fun m!817949 () Bool)

(assert (=> b!877799 m!817949))

(declare-fun m!817951 () Bool)

(assert (=> b!877801 m!817951))

(declare-fun m!817953 () Bool)

(assert (=> b!877801 m!817953))

(declare-fun m!817955 () Bool)

(assert (=> b!877801 m!817955))

(declare-fun m!817957 () Bool)

(assert (=> start!74558 m!817957))

(declare-fun m!817959 () Bool)

(assert (=> start!74558 m!817959))

(check-sat (not b!877806) (not b!877805) (not start!74558) (not b!877807) (not b!877801) (not b_next!15219) b_and!25113 (not b!877804) (not mapNonEmpty!27810) tp_is_empty!17463)
(check-sat b_and!25113 (not b_next!15219))
