; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78600 () Bool)

(assert start!78600)

(declare-fun b_free!16785 () Bool)

(declare-fun b_next!16785 () Bool)

(assert (=> start!78600 (= b_free!16785 (not b_next!16785))))

(declare-fun tp!58796 () Bool)

(declare-fun b_and!27425 () Bool)

(assert (=> start!78600 (= tp!58796 b_and!27425)))

(declare-fun b!915763 () Bool)

(declare-fun e!514057 () Bool)

(declare-fun e!514056 () Bool)

(declare-fun mapRes!30696 () Bool)

(assert (=> b!915763 (= e!514057 (and e!514056 mapRes!30696))))

(declare-fun condMapEmpty!30696 () Bool)

(declare-datatypes ((V!30689 0))(
  ( (V!30690 (val!9697 Int)) )
))
(declare-datatypes ((ValueCell!9165 0))(
  ( (ValueCellFull!9165 (v!12215 V!30689)) (EmptyCell!9165) )
))
(declare-datatypes ((array!54588 0))(
  ( (array!54589 (arr!26235 (Array (_ BitVec 32) ValueCell!9165)) (size!26695 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54588)

(declare-fun mapDefault!30696 () ValueCell!9165)

(assert (=> b!915763 (= condMapEmpty!30696 (= (arr!26235 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9165)) mapDefault!30696)))))

(declare-fun mapNonEmpty!30696 () Bool)

(declare-fun tp!58797 () Bool)

(declare-fun e!514059 () Bool)

(assert (=> mapNonEmpty!30696 (= mapRes!30696 (and tp!58797 e!514059))))

(declare-fun mapKey!30696 () (_ BitVec 32))

(declare-fun mapValue!30696 () ValueCell!9165)

(declare-fun mapRest!30696 () (Array (_ BitVec 32) ValueCell!9165))

(assert (=> mapNonEmpty!30696 (= (arr!26235 _values!1231) (store mapRest!30696 mapKey!30696 mapValue!30696))))

(declare-fun b!915764 () Bool)

(declare-fun tp_is_empty!19293 () Bool)

(assert (=> b!915764 (= e!514056 tp_is_empty!19293)))

(declare-fun b!915765 () Bool)

(declare-fun res!617495 () Bool)

(declare-fun e!514055 () Bool)

(assert (=> b!915765 (=> (not res!617495) (not e!514055))))

(declare-datatypes ((array!54590 0))(
  ( (array!54591 (arr!26236 (Array (_ BitVec 32) (_ BitVec 64))) (size!26696 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54590)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915765 (= res!617495 (and (= (size!26695 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26696 _keys!1487) (size!26695 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915766 () Bool)

(declare-fun res!617498 () Bool)

(assert (=> b!915766 (=> (not res!617498) (not e!514055))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!915766 (= res!617498 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26696 _keys!1487))))))

(declare-fun res!617496 () Bool)

(assert (=> start!78600 (=> (not res!617496) (not e!514055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78600 (= res!617496 (validMask!0 mask!1881))))

(assert (=> start!78600 e!514055))

(assert (=> start!78600 true))

(declare-fun array_inv!20460 (array!54588) Bool)

(assert (=> start!78600 (and (array_inv!20460 _values!1231) e!514057)))

(assert (=> start!78600 tp!58796))

(declare-fun array_inv!20461 (array!54590) Bool)

(assert (=> start!78600 (array_inv!20461 _keys!1487)))

(assert (=> start!78600 tp_is_empty!19293))

(declare-fun b!915767 () Bool)

(assert (=> b!915767 (= e!514059 tp_is_empty!19293)))

(declare-fun b!915768 () Bool)

(assert (=> b!915768 (= e!514055 false)))

(declare-fun lt!411675 () Bool)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30689)

(declare-fun minValue!1173 () V!30689)

(declare-datatypes ((tuple2!12648 0))(
  ( (tuple2!12649 (_1!6334 (_ BitVec 64)) (_2!6334 V!30689)) )
))
(declare-datatypes ((List!18506 0))(
  ( (Nil!18503) (Cons!18502 (h!19648 tuple2!12648) (t!26127 List!18506)) )
))
(declare-datatypes ((ListLongMap!11359 0))(
  ( (ListLongMap!11360 (toList!5695 List!18506)) )
))
(declare-fun contains!4715 (ListLongMap!11359 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2924 (array!54590 array!54588 (_ BitVec 32) (_ BitVec 32) V!30689 V!30689 (_ BitVec 32) Int) ListLongMap!11359)

(assert (=> b!915768 (= lt!411675 (contains!4715 (getCurrentListMap!2924 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k0!1099))))

(declare-fun b!915769 () Bool)

(declare-fun res!617497 () Bool)

(assert (=> b!915769 (=> (not res!617497) (not e!514055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54590 (_ BitVec 32)) Bool)

(assert (=> b!915769 (= res!617497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30696 () Bool)

(assert (=> mapIsEmpty!30696 mapRes!30696))

(declare-fun b!915770 () Bool)

(declare-fun res!617494 () Bool)

(assert (=> b!915770 (=> (not res!617494) (not e!514055))))

(declare-datatypes ((List!18507 0))(
  ( (Nil!18504) (Cons!18503 (h!19649 (_ BitVec 64)) (t!26128 List!18507)) )
))
(declare-fun arrayNoDuplicates!0 (array!54590 (_ BitVec 32) List!18507) Bool)

(assert (=> b!915770 (= res!617494 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18504))))

(assert (= (and start!78600 res!617496) b!915765))

(assert (= (and b!915765 res!617495) b!915769))

(assert (= (and b!915769 res!617497) b!915770))

(assert (= (and b!915770 res!617494) b!915766))

(assert (= (and b!915766 res!617498) b!915768))

(assert (= (and b!915763 condMapEmpty!30696) mapIsEmpty!30696))

(assert (= (and b!915763 (not condMapEmpty!30696)) mapNonEmpty!30696))

(get-info :version)

(assert (= (and mapNonEmpty!30696 ((_ is ValueCellFull!9165) mapValue!30696)) b!915767))

(assert (= (and b!915763 ((_ is ValueCellFull!9165) mapDefault!30696)) b!915764))

(assert (= start!78600 b!915763))

(declare-fun m!850079 () Bool)

(assert (=> b!915769 m!850079))

(declare-fun m!850081 () Bool)

(assert (=> b!915768 m!850081))

(assert (=> b!915768 m!850081))

(declare-fun m!850083 () Bool)

(assert (=> b!915768 m!850083))

(declare-fun m!850085 () Bool)

(assert (=> start!78600 m!850085))

(declare-fun m!850087 () Bool)

(assert (=> start!78600 m!850087))

(declare-fun m!850089 () Bool)

(assert (=> start!78600 m!850089))

(declare-fun m!850091 () Bool)

(assert (=> b!915770 m!850091))

(declare-fun m!850093 () Bool)

(assert (=> mapNonEmpty!30696 m!850093))

(check-sat (not b!915770) (not b_next!16785) (not b!915768) b_and!27425 tp_is_empty!19293 (not b!915769) (not start!78600) (not mapNonEmpty!30696))
(check-sat b_and!27425 (not b_next!16785))
