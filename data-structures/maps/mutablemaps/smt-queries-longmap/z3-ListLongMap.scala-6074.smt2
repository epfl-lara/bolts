; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78582 () Bool)

(assert start!78582)

(declare-fun b_free!16767 () Bool)

(declare-fun b_next!16767 () Bool)

(assert (=> start!78582 (= b_free!16767 (not b_next!16767))))

(declare-fun tp!58742 () Bool)

(declare-fun b_and!27407 () Bool)

(assert (=> start!78582 (= tp!58742 b_and!27407)))

(declare-fun b!915547 () Bool)

(declare-fun e!513924 () Bool)

(assert (=> b!915547 (= e!513924 false)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30665 0))(
  ( (V!30666 (val!9688 Int)) )
))
(declare-datatypes ((ValueCell!9156 0))(
  ( (ValueCellFull!9156 (v!12206 V!30665)) (EmptyCell!9156) )
))
(declare-datatypes ((array!54554 0))(
  ( (array!54555 (arr!26218 (Array (_ BitVec 32) ValueCell!9156)) (size!26678 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54554)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((array!54556 0))(
  ( (array!54557 (arr!26219 (Array (_ BitVec 32) (_ BitVec 64))) (size!26679 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54556)

(declare-fun zeroValue!1173 () V!30665)

(declare-fun minValue!1173 () V!30665)

(declare-fun lt!411648 () Bool)

(declare-datatypes ((tuple2!12632 0))(
  ( (tuple2!12633 (_1!6326 (_ BitVec 64)) (_2!6326 V!30665)) )
))
(declare-datatypes ((List!18491 0))(
  ( (Nil!18488) (Cons!18487 (h!19633 tuple2!12632) (t!26112 List!18491)) )
))
(declare-datatypes ((ListLongMap!11343 0))(
  ( (ListLongMap!11344 (toList!5687 List!18491)) )
))
(declare-fun contains!4707 (ListLongMap!11343 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2916 (array!54556 array!54554 (_ BitVec 32) (_ BitVec 32) V!30665 V!30665 (_ BitVec 32) Int) ListLongMap!11343)

(assert (=> b!915547 (= lt!411648 (contains!4707 (getCurrentListMap!2916 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k0!1099))))

(declare-fun b!915548 () Bool)

(declare-fun res!617359 () Bool)

(assert (=> b!915548 (=> (not res!617359) (not e!513924))))

(declare-datatypes ((List!18492 0))(
  ( (Nil!18489) (Cons!18488 (h!19634 (_ BitVec 64)) (t!26113 List!18492)) )
))
(declare-fun arrayNoDuplicates!0 (array!54556 (_ BitVec 32) List!18492) Bool)

(assert (=> b!915548 (= res!617359 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18489))))

(declare-fun b!915549 () Bool)

(declare-fun res!617363 () Bool)

(assert (=> b!915549 (=> (not res!617363) (not e!513924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54556 (_ BitVec 32)) Bool)

(assert (=> b!915549 (= res!617363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915551 () Bool)

(declare-fun e!513920 () Bool)

(declare-fun tp_is_empty!19275 () Bool)

(assert (=> b!915551 (= e!513920 tp_is_empty!19275)))

(declare-fun b!915552 () Bool)

(declare-fun res!617360 () Bool)

(assert (=> b!915552 (=> (not res!617360) (not e!513924))))

(assert (=> b!915552 (= res!617360 (and (= (size!26678 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26679 _keys!1487) (size!26678 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915553 () Bool)

(declare-fun e!513922 () Bool)

(declare-fun e!513921 () Bool)

(declare-fun mapRes!30669 () Bool)

(assert (=> b!915553 (= e!513922 (and e!513921 mapRes!30669))))

(declare-fun condMapEmpty!30669 () Bool)

(declare-fun mapDefault!30669 () ValueCell!9156)

(assert (=> b!915553 (= condMapEmpty!30669 (= (arr!26218 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9156)) mapDefault!30669)))))

(declare-fun b!915554 () Bool)

(declare-fun res!617361 () Bool)

(assert (=> b!915554 (=> (not res!617361) (not e!513924))))

(assert (=> b!915554 (= res!617361 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26679 _keys!1487))))))

(declare-fun mapNonEmpty!30669 () Bool)

(declare-fun tp!58743 () Bool)

(assert (=> mapNonEmpty!30669 (= mapRes!30669 (and tp!58743 e!513920))))

(declare-fun mapKey!30669 () (_ BitVec 32))

(declare-fun mapRest!30669 () (Array (_ BitVec 32) ValueCell!9156))

(declare-fun mapValue!30669 () ValueCell!9156)

(assert (=> mapNonEmpty!30669 (= (arr!26218 _values!1231) (store mapRest!30669 mapKey!30669 mapValue!30669))))

(declare-fun mapIsEmpty!30669 () Bool)

(assert (=> mapIsEmpty!30669 mapRes!30669))

(declare-fun b!915550 () Bool)

(assert (=> b!915550 (= e!513921 tp_is_empty!19275)))

(declare-fun res!617362 () Bool)

(assert (=> start!78582 (=> (not res!617362) (not e!513924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78582 (= res!617362 (validMask!0 mask!1881))))

(assert (=> start!78582 e!513924))

(assert (=> start!78582 true))

(declare-fun array_inv!20450 (array!54554) Bool)

(assert (=> start!78582 (and (array_inv!20450 _values!1231) e!513922)))

(assert (=> start!78582 tp!58742))

(declare-fun array_inv!20451 (array!54556) Bool)

(assert (=> start!78582 (array_inv!20451 _keys!1487)))

(assert (=> start!78582 tp_is_empty!19275))

(assert (= (and start!78582 res!617362) b!915552))

(assert (= (and b!915552 res!617360) b!915549))

(assert (= (and b!915549 res!617363) b!915548))

(assert (= (and b!915548 res!617359) b!915554))

(assert (= (and b!915554 res!617361) b!915547))

(assert (= (and b!915553 condMapEmpty!30669) mapIsEmpty!30669))

(assert (= (and b!915553 (not condMapEmpty!30669)) mapNonEmpty!30669))

(get-info :version)

(assert (= (and mapNonEmpty!30669 ((_ is ValueCellFull!9156) mapValue!30669)) b!915551))

(assert (= (and b!915553 ((_ is ValueCellFull!9156) mapDefault!30669)) b!915550))

(assert (= start!78582 b!915553))

(declare-fun m!849935 () Bool)

(assert (=> mapNonEmpty!30669 m!849935))

(declare-fun m!849937 () Bool)

(assert (=> b!915548 m!849937))

(declare-fun m!849939 () Bool)

(assert (=> start!78582 m!849939))

(declare-fun m!849941 () Bool)

(assert (=> start!78582 m!849941))

(declare-fun m!849943 () Bool)

(assert (=> start!78582 m!849943))

(declare-fun m!849945 () Bool)

(assert (=> b!915547 m!849945))

(assert (=> b!915547 m!849945))

(declare-fun m!849947 () Bool)

(assert (=> b!915547 m!849947))

(declare-fun m!849949 () Bool)

(assert (=> b!915549 m!849949))

(check-sat (not b_next!16767) (not mapNonEmpty!30669) b_and!27407 tp_is_empty!19275 (not b!915549) (not b!915548) (not start!78582) (not b!915547))
(check-sat b_and!27407 (not b_next!16767))
