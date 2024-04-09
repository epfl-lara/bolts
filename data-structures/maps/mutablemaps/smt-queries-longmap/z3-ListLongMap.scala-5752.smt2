; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74370 () Bool)

(assert start!74370)

(declare-fun b_free!15105 () Bool)

(declare-fun b_next!15105 () Bool)

(assert (=> start!74370 (= b_free!15105 (not b_next!15105))))

(declare-fun tp!52991 () Bool)

(declare-fun b_and!24899 () Bool)

(assert (=> start!74370 (= tp!52991 b_and!24899)))

(declare-fun res!594606 () Bool)

(declare-fun e!487033 () Bool)

(assert (=> start!74370 (=> (not res!594606) (not e!487033))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50810 0))(
  ( (array!50811 (arr!24429 (Array (_ BitVec 32) (_ BitVec 64))) (size!24870 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50810)

(assert (=> start!74370 (= res!594606 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24870 _keys!868))))))

(assert (=> start!74370 e!487033))

(declare-fun tp_is_empty!17349 () Bool)

(assert (=> start!74370 tp_is_empty!17349))

(assert (=> start!74370 true))

(assert (=> start!74370 tp!52991))

(declare-fun array_inv!19246 (array!50810) Bool)

(assert (=> start!74370 (array_inv!19246 _keys!868)))

(declare-datatypes ((V!28179 0))(
  ( (V!28180 (val!8722 Int)) )
))
(declare-datatypes ((ValueCell!8235 0))(
  ( (ValueCellFull!8235 (v!11147 V!28179)) (EmptyCell!8235) )
))
(declare-datatypes ((array!50812 0))(
  ( (array!50813 (arr!24430 (Array (_ BitVec 32) ValueCell!8235)) (size!24871 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50812)

(declare-fun e!487029 () Bool)

(declare-fun array_inv!19247 (array!50812) Bool)

(assert (=> start!74370 (and (array_inv!19247 _values!688) e!487029)))

(declare-fun b!874757 () Bool)

(declare-fun e!487030 () Bool)

(assert (=> b!874757 (= e!487030 tp_is_empty!17349)))

(declare-fun b!874758 () Bool)

(declare-fun res!594607 () Bool)

(assert (=> b!874758 (=> (not res!594607) (not e!487033))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874758 (= res!594607 (validKeyInArray!0 k0!854))))

(declare-fun b!874759 () Bool)

(declare-fun res!594605 () Bool)

(assert (=> b!874759 (=> (not res!594605) (not e!487033))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!874759 (= res!594605 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24870 _keys!868))))))

(declare-fun mapIsEmpty!27632 () Bool)

(declare-fun mapRes!27632 () Bool)

(assert (=> mapIsEmpty!27632 mapRes!27632))

(declare-fun b!874760 () Bool)

(assert (=> b!874760 (= e!487033 (and (= from!1053 i!612) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24870 _keys!868)) (bvsge (bvsub (size!24870 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (bvsub (size!24870 _keys!868) from!1053))))))

(declare-fun v!557 () V!28179)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11526 0))(
  ( (tuple2!11527 (_1!5773 (_ BitVec 64)) (_2!5773 V!28179)) )
))
(declare-datatypes ((List!17415 0))(
  ( (Nil!17412) (Cons!17411 (h!18542 tuple2!11526) (t!24464 List!17415)) )
))
(declare-datatypes ((ListLongMap!10309 0))(
  ( (ListLongMap!10310 (toList!5170 List!17415)) )
))
(declare-fun lt!395974 () ListLongMap!10309)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28179)

(declare-fun zeroValue!654 () V!28179)

(declare-fun getCurrentListMapNoExtraKeys!3134 (array!50810 array!50812 (_ BitVec 32) (_ BitVec 32) V!28179 V!28179 (_ BitVec 32) Int) ListLongMap!10309)

(assert (=> b!874760 (= lt!395974 (getCurrentListMapNoExtraKeys!3134 _keys!868 (array!50813 (store (arr!24430 _values!688) i!612 (ValueCellFull!8235 v!557)) (size!24871 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395973 () ListLongMap!10309)

(assert (=> b!874760 (= lt!395973 (getCurrentListMapNoExtraKeys!3134 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874761 () Bool)

(declare-fun res!594603 () Bool)

(assert (=> b!874761 (=> (not res!594603) (not e!487033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874761 (= res!594603 (validMask!0 mask!1196))))

(declare-fun b!874762 () Bool)

(declare-fun res!594601 () Bool)

(assert (=> b!874762 (=> (not res!594601) (not e!487033))))

(declare-datatypes ((List!17416 0))(
  ( (Nil!17413) (Cons!17412 (h!18543 (_ BitVec 64)) (t!24465 List!17416)) )
))
(declare-fun arrayNoDuplicates!0 (array!50810 (_ BitVec 32) List!17416) Bool)

(assert (=> b!874762 (= res!594601 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17413))))

(declare-fun b!874763 () Bool)

(declare-fun res!594602 () Bool)

(assert (=> b!874763 (=> (not res!594602) (not e!487033))))

(assert (=> b!874763 (= res!594602 (and (= (size!24871 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24870 _keys!868) (size!24871 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874764 () Bool)

(declare-fun e!487032 () Bool)

(assert (=> b!874764 (= e!487032 tp_is_empty!17349)))

(declare-fun mapNonEmpty!27632 () Bool)

(declare-fun tp!52990 () Bool)

(assert (=> mapNonEmpty!27632 (= mapRes!27632 (and tp!52990 e!487032))))

(declare-fun mapValue!27632 () ValueCell!8235)

(declare-fun mapRest!27632 () (Array (_ BitVec 32) ValueCell!8235))

(declare-fun mapKey!27632 () (_ BitVec 32))

(assert (=> mapNonEmpty!27632 (= (arr!24430 _values!688) (store mapRest!27632 mapKey!27632 mapValue!27632))))

(declare-fun b!874765 () Bool)

(declare-fun res!594600 () Bool)

(assert (=> b!874765 (=> (not res!594600) (not e!487033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50810 (_ BitVec 32)) Bool)

(assert (=> b!874765 (= res!594600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874766 () Bool)

(declare-fun res!594604 () Bool)

(assert (=> b!874766 (=> (not res!594604) (not e!487033))))

(assert (=> b!874766 (= res!594604 (and (= (select (arr!24429 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!874767 () Bool)

(assert (=> b!874767 (= e!487029 (and e!487030 mapRes!27632))))

(declare-fun condMapEmpty!27632 () Bool)

(declare-fun mapDefault!27632 () ValueCell!8235)

(assert (=> b!874767 (= condMapEmpty!27632 (= (arr!24430 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8235)) mapDefault!27632)))))

(assert (= (and start!74370 res!594606) b!874761))

(assert (= (and b!874761 res!594603) b!874763))

(assert (= (and b!874763 res!594602) b!874765))

(assert (= (and b!874765 res!594600) b!874762))

(assert (= (and b!874762 res!594601) b!874759))

(assert (= (and b!874759 res!594605) b!874758))

(assert (= (and b!874758 res!594607) b!874766))

(assert (= (and b!874766 res!594604) b!874760))

(assert (= (and b!874767 condMapEmpty!27632) mapIsEmpty!27632))

(assert (= (and b!874767 (not condMapEmpty!27632)) mapNonEmpty!27632))

(get-info :version)

(assert (= (and mapNonEmpty!27632 ((_ is ValueCellFull!8235) mapValue!27632)) b!874764))

(assert (= (and b!874767 ((_ is ValueCellFull!8235) mapDefault!27632)) b!874757))

(assert (= start!74370 b!874767))

(declare-fun m!814873 () Bool)

(assert (=> b!874766 m!814873))

(declare-fun m!814875 () Bool)

(assert (=> b!874758 m!814875))

(declare-fun m!814877 () Bool)

(assert (=> mapNonEmpty!27632 m!814877))

(declare-fun m!814879 () Bool)

(assert (=> b!874765 m!814879))

(declare-fun m!814881 () Bool)

(assert (=> start!74370 m!814881))

(declare-fun m!814883 () Bool)

(assert (=> start!74370 m!814883))

(declare-fun m!814885 () Bool)

(assert (=> b!874760 m!814885))

(declare-fun m!814887 () Bool)

(assert (=> b!874760 m!814887))

(declare-fun m!814889 () Bool)

(assert (=> b!874760 m!814889))

(declare-fun m!814891 () Bool)

(assert (=> b!874762 m!814891))

(declare-fun m!814893 () Bool)

(assert (=> b!874761 m!814893))

(check-sat (not b!874761) tp_is_empty!17349 (not b!874765) (not mapNonEmpty!27632) (not b!874758) (not start!74370) b_and!24899 (not b_next!15105) (not b!874762) (not b!874760))
(check-sat b_and!24899 (not b_next!15105))
