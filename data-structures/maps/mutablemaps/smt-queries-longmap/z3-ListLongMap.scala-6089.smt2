; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78672 () Bool)

(assert start!78672)

(declare-fun b_free!16857 () Bool)

(declare-fun b_next!16857 () Bool)

(assert (=> start!78672 (= b_free!16857 (not b_next!16857))))

(declare-fun tp!59012 () Bool)

(declare-fun b_and!27497 () Bool)

(assert (=> start!78672 (= tp!59012 b_and!27497)))

(declare-fun b!916686 () Bool)

(declare-fun e!514647 () Bool)

(declare-fun tp_is_empty!19365 () Bool)

(assert (=> b!916686 (= e!514647 tp_is_empty!19365)))

(declare-fun mapIsEmpty!30804 () Bool)

(declare-fun mapRes!30804 () Bool)

(assert (=> mapIsEmpty!30804 mapRes!30804))

(declare-fun b!916687 () Bool)

(declare-fun res!618095 () Bool)

(declare-fun e!514646 () Bool)

(assert (=> b!916687 (=> (not res!618095) (not e!514646))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54730 0))(
  ( (array!54731 (arr!26306 (Array (_ BitVec 32) (_ BitVec 64))) (size!26766 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54730)

(assert (=> b!916687 (= res!618095 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26766 _keys!1487))))))

(declare-fun b!916688 () Bool)

(declare-fun res!618093 () Bool)

(assert (=> b!916688 (=> (not res!618093) (not e!514646))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54730 (_ BitVec 32)) Bool)

(assert (=> b!916688 (= res!618093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916689 () Bool)

(declare-fun res!618096 () Bool)

(assert (=> b!916689 (=> (not res!618096) (not e!514646))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30785 0))(
  ( (V!30786 (val!9733 Int)) )
))
(declare-datatypes ((ValueCell!9201 0))(
  ( (ValueCellFull!9201 (v!12251 V!30785)) (EmptyCell!9201) )
))
(declare-datatypes ((array!54732 0))(
  ( (array!54733 (arr!26307 (Array (_ BitVec 32) ValueCell!9201)) (size!26767 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54732)

(assert (=> b!916689 (= res!618096 (and (= (size!26767 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26766 _keys!1487) (size!26767 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916691 () Bool)

(declare-fun e!514650 () Bool)

(assert (=> b!916691 (= e!514650 (and e!514647 mapRes!30804))))

(declare-fun condMapEmpty!30804 () Bool)

(declare-fun mapDefault!30804 () ValueCell!9201)

(assert (=> b!916691 (= condMapEmpty!30804 (= (arr!26307 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9201)) mapDefault!30804)))))

(declare-fun b!916692 () Bool)

(declare-fun e!514648 () Bool)

(assert (=> b!916692 (= e!514646 e!514648)))

(declare-fun res!618097 () Bool)

(assert (=> b!916692 (=> (not res!618097) (not e!514648))))

(declare-datatypes ((tuple2!12704 0))(
  ( (tuple2!12705 (_1!6362 (_ BitVec 64)) (_2!6362 V!30785)) )
))
(declare-datatypes ((List!18562 0))(
  ( (Nil!18559) (Cons!18558 (h!19704 tuple2!12704) (t!26183 List!18562)) )
))
(declare-datatypes ((ListLongMap!11415 0))(
  ( (ListLongMap!11416 (toList!5723 List!18562)) )
))
(declare-fun lt!411824 () ListLongMap!11415)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4743 (ListLongMap!11415 (_ BitVec 64)) Bool)

(assert (=> b!916692 (= res!618097 (contains!4743 lt!411824 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30785)

(declare-fun minValue!1173 () V!30785)

(declare-fun getCurrentListMap!2952 (array!54730 array!54732 (_ BitVec 32) (_ BitVec 32) V!30785 V!30785 (_ BitVec 32) Int) ListLongMap!11415)

(assert (=> b!916692 (= lt!411824 (getCurrentListMap!2952 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916693 () Bool)

(assert (=> b!916693 (= e!514648 false)))

(declare-fun lt!411825 () V!30785)

(declare-fun apply!551 (ListLongMap!11415 (_ BitVec 64)) V!30785)

(assert (=> b!916693 (= lt!411825 (apply!551 lt!411824 k0!1099))))

(declare-fun res!618098 () Bool)

(assert (=> start!78672 (=> (not res!618098) (not e!514646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78672 (= res!618098 (validMask!0 mask!1881))))

(assert (=> start!78672 e!514646))

(assert (=> start!78672 true))

(declare-fun array_inv!20510 (array!54732) Bool)

(assert (=> start!78672 (and (array_inv!20510 _values!1231) e!514650)))

(assert (=> start!78672 tp!59012))

(declare-fun array_inv!20511 (array!54730) Bool)

(assert (=> start!78672 (array_inv!20511 _keys!1487)))

(assert (=> start!78672 tp_is_empty!19365))

(declare-fun b!916690 () Bool)

(declare-fun e!514649 () Bool)

(assert (=> b!916690 (= e!514649 tp_is_empty!19365)))

(declare-fun mapNonEmpty!30804 () Bool)

(declare-fun tp!59013 () Bool)

(assert (=> mapNonEmpty!30804 (= mapRes!30804 (and tp!59013 e!514649))))

(declare-fun mapRest!30804 () (Array (_ BitVec 32) ValueCell!9201))

(declare-fun mapKey!30804 () (_ BitVec 32))

(declare-fun mapValue!30804 () ValueCell!9201)

(assert (=> mapNonEmpty!30804 (= (arr!26307 _values!1231) (store mapRest!30804 mapKey!30804 mapValue!30804))))

(declare-fun b!916694 () Bool)

(declare-fun res!618094 () Bool)

(assert (=> b!916694 (=> (not res!618094) (not e!514646))))

(declare-datatypes ((List!18563 0))(
  ( (Nil!18560) (Cons!18559 (h!19705 (_ BitVec 64)) (t!26184 List!18563)) )
))
(declare-fun arrayNoDuplicates!0 (array!54730 (_ BitVec 32) List!18563) Bool)

(assert (=> b!916694 (= res!618094 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18560))))

(assert (= (and start!78672 res!618098) b!916689))

(assert (= (and b!916689 res!618096) b!916688))

(assert (= (and b!916688 res!618093) b!916694))

(assert (= (and b!916694 res!618094) b!916687))

(assert (= (and b!916687 res!618095) b!916692))

(assert (= (and b!916692 res!618097) b!916693))

(assert (= (and b!916691 condMapEmpty!30804) mapIsEmpty!30804))

(assert (= (and b!916691 (not condMapEmpty!30804)) mapNonEmpty!30804))

(get-info :version)

(assert (= (and mapNonEmpty!30804 ((_ is ValueCellFull!9201) mapValue!30804)) b!916690))

(assert (= (and b!916691 ((_ is ValueCellFull!9201) mapDefault!30804)) b!916686))

(assert (= start!78672 b!916691))

(declare-fun m!850687 () Bool)

(assert (=> b!916693 m!850687))

(declare-fun m!850689 () Bool)

(assert (=> start!78672 m!850689))

(declare-fun m!850691 () Bool)

(assert (=> start!78672 m!850691))

(declare-fun m!850693 () Bool)

(assert (=> start!78672 m!850693))

(declare-fun m!850695 () Bool)

(assert (=> b!916688 m!850695))

(declare-fun m!850697 () Bool)

(assert (=> b!916694 m!850697))

(declare-fun m!850699 () Bool)

(assert (=> mapNonEmpty!30804 m!850699))

(declare-fun m!850701 () Bool)

(assert (=> b!916692 m!850701))

(declare-fun m!850703 () Bool)

(assert (=> b!916692 m!850703))

(check-sat (not b!916688) (not b_next!16857) (not b!916692) (not b!916693) tp_is_empty!19365 (not mapNonEmpty!30804) b_and!27497 (not start!78672) (not b!916694))
(check-sat b_and!27497 (not b_next!16857))
